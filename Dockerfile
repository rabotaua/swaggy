FROM openjdk:alpine

RUN mkdir /swagger
WORKDIR /wagger
RUN apk add --update wget

#RUN wget -q https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/maven-metadata.xml
#RUN LAST="$(grep value maven-metadata.xml | cut -f2 -d'>' | cut -f1 -d'<' | tail -n 1)" && wget -q https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/swagger-codegen-cli-$LAST.jar
#RUN mv swagger-codegen-cli-*.jar swagger-codegen-cli.jar

# TODO: grab latest (bottom) jar from: https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/
RUN wget -q https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/swagger-codegen-cli-3.0.0-20171123.081951-8.jar
RUN mv swagger-codegen-cli-*.jar swagger-codegen-cli.jar

ENTRYPOINT ["java", "-jar", "swagger-codegen-cli.jar", "generate", "-l", "typescript-angular", "-Dio.swagger.parser.util.RemoteUrl.trustAll=true", "-o", "/code", "-i"]