import os
import requests
import json
import time
from bs4 import BeautifulSoup
from duckduckgo_search import DDGS
from openai import OpenAI

# 配置常量
OPENAI_API_URL = "https://api.openai.com/v1/"
OPENAI_MODEL = "gpt-4"
SEARCH_RESULTS_LIMIT = 5
SEARCH_QUERY_TEMPLATE = "{} build install from source"
ANALYSIS_PROMPT_TEMPLATE = (
    "Extract instructions relevant to install or building the project '{}' on a Debian/Ubuntu Linux system from source code "
    "(extract a list of steps/requirements in a structured way and also the commands that need to be installed). "
    "If the web page does not provide such information, then just say that it does not."
)


def duckduckgo_search(query, num_results=SEARCH_RESULTS_LIMIT, max_retries=3, delay=3):
    """
    Perform a DuckDuckGo search and return the top URLs with retry on failure.

    Args:
        query (str): The search query.
        num_results (int): Number of search results to return.
        max_retries (int): Maximum number of retries if a request fails.
        delay (int): Delay (in seconds) between retries.

    Returns:
        list: A list of URLs from the search results.
    """
    for attempt in range(1, max_retries + 1):
        try:
            urls = []
            with DDGS() as ddgs:
                results = ddgs.text(keywords=query, region='wt-wt', safesearch='Off', timelimit='y')
                for result in results:
                    if len(urls) >= num_results:
                        break
                    if 'href' in result:
                        urls.append(result['href'])
            return urls

        except Exception as e:
            print(f"[Attempt {attempt}/{max_retries}] DuckDuckGo search failed: {e}")
            if attempt < max_retries:
                time.sleep(delay * attempt)
            else:
                print("All retry attempts failed.")
                return []


def clean_html(html_content):
    """
    Clean HTML content using BeautifulSoup by removing unnecessary tags.

    Args:
        html_content (str): The HTML content to clean.

    Returns:
        str: The cleaned text content.
    """
    soup = BeautifulSoup(html_content, 'html.parser')
    for tag in soup(['script', 'style', 'header', 'footer', 'nav', 'aside', 'form']):
        tag.decompose()
    cleaned_text = soup.get_text(separator=' ', strip=True)
    cleaned_text = ' '.join(cleaned_text.split())
    return cleaned_text


def fetch_webpage(url):
    """
    Fetch webpage content and clean the HTML to extract the main text.

    Args:
        url (str): The URL of the webpage to fetch.

    Returns:
        str: The cleaned content of the webpage, or None if an error occurs.
    """
    try:
        response = requests.get(url)
        response.raise_for_status()
        return clean_html(response.text)
    except requests.RequestException as e:
        print(f"Error fetching {url}: {e}")
        return None


def ai_summary(query, prompt, model=OPENAI_MODEL):
    """
    Use OpenAI API to generate a summary based on the query and prompt.

    Args:
        query (str): The content to analyze.
        prompt (str): The system prompt for the OpenAI model.
        model (str): The OpenAI model to use (default is gpt-4).

    Returns:
        str: The generated summary.
    """
    try:
        with open("/home/yzj/SWEAgent/EnvBench/sweagent/agent/openai_token.txt") as token_file:
            token = token_file.read().strip()
        client = OpenAI(base_url=OPENAI_API_URL, api_key=token)
        messages = [
            {"role": "system", "content": prompt},
            {"role": "user", "content": query[:12000]}  # Limit content length
        ]
        response = client.chat.completions.create(model=model, messages=messages)
        return response.choices[0].message.content.strip()
    except Exception as e:
        print(f"OPENAI API ERROR: {e}")
        return None


def save_search_results(project_id, search_query, results, folder="search_logs"):
    """
    Save the search query and extracted information to a file.

    Args:
        project_id (str): The project ID.
        search_query (str): The search query used.
        results (list): The list of search results and their analyses.
        folder (str): The folder to save the results in (default is 'search_logs').
    """
    folder_path = os.path.join(folder, project_id)
    os.makedirs(folder_path, exist_ok=True)
    file_path = os.path.join(folder_path, f'{search_query.replace(" ", "_")}.json')
    with open(file_path, 'w') as f:
        json.dump(results, f, indent=4)


def search_install_doc(project_id):
    """
    Search for installation instructions for a project and analyze the results.

    Args:
        project_id (str): The project ID to search for.
    """
    search_query = SEARCH_QUERY_TEMPLATE.format(project_id)
    prompt = ANALYSIS_PROMPT_TEMPLATE.format(project_id)
    print(f"Searching for: {search_query}")
    urls = duckduckgo_search(search_query)
    results = []

    for url in set(urls):
        print(f"Fetching content from: {url}")
        content = fetch_webpage(url)
        if content:
            print(f"Analyzing content from: {url}")
            analysis = ai_summary(content, prompt)
            results.append({'url': url, 'analysis': analysis})

    print(f"Saving results to folder: search_logs/{project_id}")
    save_search_results(project_id, search_query, results)
    return results


if __name__ == "__main__":
    project_id = "scipy"
    search_install_doc(project_id)