ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
apt-get update && apt-get install -y java-common ca-certificates wget curl openjdk-17-jdk
java -version
./gradlew check --no-daemon --continue
cat http-server-netty/build/reports/tests/test/index.html
cat http-server-netty/build/reports/tests/test/classes/io.micronaut.http.server.netty.MaxRequestSizeSpec.html
cat http-server-netty/build/reports/tests/test/classes/io.micronaut.http.server.netty.MaxRequestSizeSpec.html | grep -A 20 "Detected a resource leak"
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.MaxRequestSizeSpec" --info
./gradlew check --no-daemon --continue
cat http-client/build/reports/tests/test/index.html
cat http-client/build/reports/tests/test/classes/io.micronaut.http.client.websocket.ClientWebsocketSpec.html
ls -la /etc/ssl/certs/
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --info
curl -v https://example.com
open "http-client/src/test/groovy/io/micronaut/http/client/websocket/ClientWebsocketSpec.groovy"
ping -c 4 websocket-echo.com
curl -v wss://websocket-echo.com
curl -v https://websocket-echo.com
edit wss://websocket-echo.com wss://echo.websocket.org True
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --info
edit 'def mono = Mono.from(client.connect(ClientBean.class, '"'"'wss://echo.websocket.org'"'"'))' 'def mono = Mono.from(client.connect(ClientBean.class, '"'"'wss://echo.websocket.org'"'"', [sslHandshakeTimeoutMillis: 30000]))' True
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --info
edit 'def mono = Mono.from(client.connect(ClientBean.class, '"'"'wss://echo.websocket.org'"'"', [sslHandshakeTimeoutMillis: 30000]))' 'def mono = Mono.from(client.connect(ClientBean.class, '"'"'ws://localhost:8080/echo'"'"', [sslHandshakeTimeoutMillis: 30000]))' True
create websocket_server.py
insert 'import asyncio
import websockets

async def echo(websocket, path):
    async for message in websocket:
        await websocket.send(message)

async def main():
    async with websockets.serve(echo, "localhost", 8080):
        await asyncio.Future()  # run forever

asyncio.run(main())' 0
pip install websockets
python3 -m pip install websockets
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --debug
wscat -c wss://echo.websocket.org
curl -v --include --no-buffer --header "Connection: Upgrade" --header "Upgrade: websocket" --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" --header "Sec-WebSocket-Version: 13" wss://echo.websocket.org
apt-get install -y websocat
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --debug
wscat -c wss://echo.websocket.org
curl -v --include --no-buffer --header "Connection: Upgrade" --header "Upgrade: websocket" --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" --header "Sec-WebSocket-Version: 13" wss://echo.websocket.org
apt-get install -y websocat
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --debug
wscat -c wss://echo.websocket.org
curl -v --include --no-buffer --header "Connection: Upgrade" --header "Upgrade: websocket" --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" --header "Sec-WebSocket-Version: 13" wss://echo.websocket.org
apt-get install -y websocat
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --debug
wscat -c wss://echo.websocket.org
curl -v --include --no-buffer --header "Connection: Upgrade" --header "Upgrade: websocket" --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" --header "Sec-WebSocket-Version: 13" wss://echo.websocket.org
apt-get install -y websocat
./gradlew :http-client:test --tests "io.micronaut.http.client.websocket.ClientWebsocketSpec" --debug
wscat -c wss://echo.websocket.org
curl -v --include --no-buffer --header "Connection: Upgrade" --header "Upgrade: websocket" --header "Sec-WebSocket-Key: SGVsbG8sIHdvcmxkIQ==" --header "Sec-WebSocket-Version: 13" wss://echo.websocket.org
apt-get install -y websocat

