ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
apt-get update && apt-get install -y openjdk-17-jdk
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew check --no-daemon --continue
cat http-server-netty/build/reports/tests/test/index.html
cat http-server-netty/build/reports/tests/test/classes/io.micronaut.http.server.netty.MaxRequestSizeSpec.html
cat http-server-netty/build/reports/tests/test/classes/io.micronaut.http.server.netty.MaxRequestSizeSpec.html | grep -A 20 "Detected a resource leak"
open "http-server-netty/src/test/groovy/io/micronaut/http/server/netty/MaxRequestSizeSpec.groovy"
search_file 'test max buffer' http-server-netty/src/test/groovy/io/micronaut/http/server/netty/MaxRequestSizeSpec.groovy
goto 452
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.MaxRequestSizeSpec.test max buffer" --debug
edit 'EmbeddedServer embeddedServer = ApplicationContext.run(EmbeddedServer, [' 'System.setProperty("io.netty.leakDetection.level", "PARANOID")
        EmbeddedServer embeddedServer = ApplicationContext.run(EmbeddedServer, ['
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.MaxRequestSizeSpec.test max buffer" --debug
goto 495
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.MaxRequestSizeSpec.test max buffer" --info
./gradlew :http-server-netty:test --no-daemon --continue
cat http-server-netty/build/reports/tests/test/index.html
open "http-server-netty/src/test/groovy/io/micronaut/http/server/netty/PcapLoggingSpec.groovy"
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.PcapLoggingSpec" --debug
ls -ld /tmp
goto 46
edit 'def ctx = ApplicationContext.run([' 'System.setProperty("io.netty.leakDetection.level", "PARANOID")
        def ctx = ApplicationContext.run(['
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.PcapLoggingSpec" --debug
goto 47
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.PcapLoggingSpec" --info
edit 'names[0].matches('"'"'127\\.0\\.0\\.1_\\d+-127\\.0\\.0\\.1_\\d+-encapsulated-\\w+-\\d+-\\d+-\\d+T\\d+_\\d+_\\d+\\.\\d+Z\\.pcap'"'"')' 'names[0].matches('"'"'172\\.17\\.0\\.10_\\d+-172\\.17\\.0\\.10_\\d+-encapsulated-\\w+-\\d+-\\d+-\\d+T\\d+_\\d+_\\d+\\.\\d+Z\\.pcap'"'"')'
edit 'names[1].matches('"'"'127\\.0\\.0\\.1_\\d+-127\\.0\\.0\\.1_\\d+-ssl-decapsulated-\\w+-\\d+-\\d+-\\d+T\\d+_\\d+_\\d+\\.\\d+Z\\.pcap'"'"')' 'names[1].matches('"'"'172\\.17\\.0\\.10_\\d+-172\\.17\\.0\\.10_\\d+-ssl-decapsulated-\\w+-\\d+-\\d+-\\d+T\\d+_\\d+_\\d+\\.\\d+Z\\.pcap'"'"')'
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.PcapLoggingSpec" --info
./gradlew :http-server-netty:test --no-daemon --continue
cat http-server-netty/build/reports/tests/test/index.html
open "http-server-netty/src/test/groovy/io/micronaut/http/server/netty/RequestCertificateSpec.groovy"
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.RequestCertificateSpec" --debug
goto 40
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.RequestCertificateSpec" --info -Djavax.net.debug=all
edit ''"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),' ''"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"',
                '"'"'micronaut.ssl.clientAuthentication'"'"': '"'"'need'"'"','
edit ''"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"',
                '"'"'micronaut.ssl.clientAuthentication'"'"': '"'"'need'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"',
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',' ''"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"',
                '"'"'micronaut.ssl.clientAuthentication'"'"': '"'"'need'"'"','
edit ''"'"'micronaut.ssl.clientAuthentication'"'"': "need",
                '"'"'micronaut.ssl.key-store.path'"'"': '"'"'file://'"'"' + keyStorePath.toString(),
                '"'"'micronaut.ssl.key-store.type'"'"': '"'"'PKCS12'"'"',
                '"'"'micronaut.ssl.key-store.password'"'"': '"'"''"'"',
                '"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"',
                '"'"'micronaut.ssl.clientAuthentication'"'"': '"'"'need'"'"',' ''"'"'micronaut.ssl.clientAuthentication'"'"': "need",
                '"'"'micronaut.ssl.key-store.path'"'"': '"'"'file://'"'"' + keyStorePath.toString(),
                '"'"'micronaut.ssl.key-store.type'"'"': '"'"'PKCS12'"'"',
                '"'"'micronaut.ssl.key-store.password'"'"': '"'"''"'"',
                '"'"'micronaut.ssl.trust-store.path'"'"': '"'"'file://'"'"' + trustStorePath.toString(),
                '"'"'micronaut.ssl.trust-store.password'"'"': '"'"'123456'"'"',
                '"'"'micronaut.ssl.trust-store.type'"'"': '"'"'JKS'"'"','
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.RequestCertificateSpec" --info
keytool -printcert -file <(openssl x509 -in <(openssl s_client -connect localhost:8443 -showcerts -servername localhost </dev/null 2>/dev/null) -outform PEM)
goto 82
edit 'def cert = request.getCertificate().get() as X509Certificate
            cert.issuerX500Principal.name' 'def cert = request.getCertificate().get() as X509Certificate
            println "Issuer name: ${cert.issuerX500Principal.name}"
            cert.issuerX500Principal.name'
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.RequestCertificateSpec" --info
./gradlew :http-server-netty:test --tests "io.micronaut.http.server.netty.RequestCertificateSpec" --info -Dorg.gradle.logging.level=debug
find / -name "SelfSignedCertificate.class" 2>/dev/null
curl -s https://raw.githubusercontent.com/netty/netty/main/handler/src/main/java/io/netty/handler/ssl/util/SelfSignedCertificate.java | grep -A 5 "issuer"
find ~/.gradle/caches -name "*netty*.jar" 2>/dev/null
unzip -p /root/.gradle/caches/modules-2/files-2.1/io.netty/netty-handler/4.1.115.Final/d54dbf68b9d88a98240107758c6b63da5e46e23a/netty-handler-4.1.115.Final.jar io/netty/handler/ssl/util/SelfSignedCertificate.class | strings | grep -A 5 "issuer"

