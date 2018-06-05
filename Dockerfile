FROM maven:alpine

WORKDIR /swaggy

RUN apk add --update git

RUN git clone https://github.com/swagger-api/swagger-codegen .
RUN mvn clean install

FROM openjdk:alpine

COPY --from=0 /swaggy/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar .

ENTRYPOINT ["java", "-jar", "swagger-codegen-cli.jar", "generate", "-Dio.swagger.parser.util.RemoteUrl.trustAll=true", "-l", "typescript-angular", "-o", "/code", "--additional-properties", "ngVersion=6", "-i"]