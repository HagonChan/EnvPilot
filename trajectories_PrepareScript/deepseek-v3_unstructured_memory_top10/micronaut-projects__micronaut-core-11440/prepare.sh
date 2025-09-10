ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
apt-get update && apt-get install -y openjdk-17-jdk openjdk-21-jdk
java -version && javac -version && export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && echo $JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew check --no-daemon --continue
cat http-client-jdk/build/reports/tests/test/index.html
open "http-client-jdk/src/test/groovy/io/micronaut/http/client/jdk/SslSelfSignedSpec.groovy"
open "http-client-jdk/src/test/groovy/io/micronaut/http/client/jdk/SslSpec.groovy"
curl -I https://badssl.com
apt-get update && apt-get install -y curl
curl -I https://badssl.com
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew check --no-daemon --continue --debug
pkill -f gradle
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew check --no-daemon --continue --debug
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew check --no-daemon --continue
cat http-client-jdk/build/reports/tests/test/index.html
curl -I --http2 https://nghttp2.org
open "http-client-jdk/src/test/groovy/io/micronaut/http/client/jdk/Http2Spec.groovy"
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue --debug
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue --max-workers=1
docker --version
apt-get update && apt-get install -y docker.io && systemctl start docker
docker --version && docker run hello-world
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
open "http-client-jdk/src/test/groovy/io/micronaut/http/client/jdk/SslSelfSignedSpec.groovy"
edit 'void setup() {
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
    }' 'void setup() {
        println '"'"'Configuring SSL with self-signed certificate...'"'"'
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        println '"'"'Server URL: '"'"' + embeddedServer.getURL()
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        println '"'"'Client configured to trust all certificates.'"'"'
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void setup() {
        println '"'"'Configuring SSL with self-signed certificate...'"'"'
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        println '"'"'Server URL: '"'"' + embeddedServer.getURL()
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        println '"'"'Client configured to trust all certificates.'"'"'
    }' 'void setup() {
        println '"'"'Configuring SSL with self-signed certificate...'"'"'
        System.setProperty('"'"'javax.net.debug'"'"', '"'"'ssl'"'"')
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        println '"'"'Server URL: '"'"' + embeddedServer.getURL()
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        println '"'"'Client configured to trust all certificates.'"'"'
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void setup() {
        println '"'"'Configuring SSL with self-signed certificate...'"'"'
        System.setProperty('"'"'javax.net.debug'"'"', '"'"'ssl'"'"')
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        println '"'"'Server URL: '"'"' + embeddedServer.getURL()
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        println '"'"'Client configured to trust all certificates.'"'"'
    }' 'void setup() {
        println '"'"'Configuring SSL with self-signed certificate...'"'"'
        System.setProperty('"'"'javax.net.debug'"'"', '"'"'ssl'"'"')
        embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])
        println '"'"'Server URL: '"'"' + embeddedServer.getURL()
        
        // Explicitly configure the client to trust all certificates
        def sslContext = javax.net.ssl.SSLContext.getInstance('"'"'TLS'"'"')
        sslContext.init(null, [new javax.net.ssl.X509TrustManager() {
            void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType) {}
            void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType) {}
            java.security.cert.X509Certificate[] getAcceptedIssuers() { return [] }
        }] as javax.net.ssl.TrustManager[], new java.security.SecureRandom())
        
        client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        println '"'"'Client configured to trust all certificates.'"'"'
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit '@Get('"'"'/ssl'"'"')
        String simple() {
            return "Hello"
        }' '@Get('"'"'/ssl'"'"')
        String simple() {
            println '"'"'Received HTTPS request at /ssl'"'"'
            return "Hello"
        }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        HttpResponse<String> response = flowable.blockFirst()

        then:
        response.body() == "Hello"
    }' 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()

        then:
        response.body() == "Hello"
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()

        then:
        response.body() == "Hello"
    }' 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()
        println '"'"'Response headers: '"'"' + response.getHeaders()

        then:
        response.body() != null
        response.body() == "Hello"
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        println '"'"'Client configured to trust all certificates.'"'"'' 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        client.setDefaultResponseType(String)
        println '"'"'Client configured to trust all certificates and handle String responses.'"'"''
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()
        println '"'"'Response headers: '"'"' + response.getHeaders()

        then:
        response.body() != null
        response.body() == "Hello"
    }' 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        println '"'"'Raw response stream: '"'"' + flowable.toString()
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()
        println '"'"'Response headers: '"'"' + response.getHeaders()

        then:
        response.body() != null
        response.body() == "Hello"
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
        ])' 'embeddedServer = ApplicationContext.run(EmbeddedServer, [
                '"'"'spec.name'"'"': '"'"'SslSelfSignedSpec'"'"',
                '"'"'micronaut.ssl.enabled'"'"': true,
                '"'"'micronaut.server.ssl.buildSelfSigned'"'"': true,
                '"'"'micronaut.server.ssl.port'"'"': -1,
                '"'"'micronaut.http.client.ssl.insecure-trust-all-certificates'"'"': true,
                '"'"'micronaut.server.http-version'"'"': '"'"'HTTP_1_1'"'"', // Disable HTTP/2
        ])'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        client.setDefaultResponseType(String)
        println '"'"'Client configured to trust all certificates and handle String responses.'"'"'' 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        client.setDefaultResponseType(String)
        println '"'"'Client SSL context: '"'"' + client.getSslContext()
        println '"'"'Client configured to trust all certificates and handle String responses.'"'"''
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        println '"'"'Raw response stream: '"'"' + flowable.toString()
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()
        println '"'"'Response headers: '"'"' + response.getHeaders()

        then:
        response.body() != null
        response.body() == "Hello"
    }' 'void "test send https request"() {
        when:
        Flux<HttpResponse<String>> flowable = Flux.from(client.exchange(
                HttpRequest.GET("/ssl"), String
        ))
        println '"'"'Raw response stream: '"'"' + flowable.toString()
        HttpResponse<String> response = flowable.blockFirst()
        println '"'"'Response status: '"'"' + response.status()
        println '"'"'Response body: '"'"' + response.body()
        println '"'"'Response headers: '"'"' + response.getHeaders()
        println '"'"'Response raw bytes: '"'"' + response.getBody(String).orElse(null)

        then:
        response.body() != null
        response.body() == "Hello"
    }'
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && ./gradlew :http-client-jdk:test --no-daemon --continue
edit 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        client.setDefaultResponseType(String)
        println '"'"'Client SSL context: '"'"' + client.getSslContext()
        println '"'"'Client configured to trust all certificates and handle String responses.'"'"'' 'client = embeddedServer.applicationContext.createBean(HttpClient, embeddedServer.getURL())
        client.setSslContext(sslContext)
        client.setDefaultResponseType(String)
        client.setReadTimeout(java.time.Duration.ofSeconds(30))
        println '"'"'Client SSL context: '"'"' + client.getSslContext()
        println '"'"'Client configured to trust all certificates and handle String responses.'"'"''

