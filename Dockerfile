FROM openjdk:alpine

RUN mkdir /swagger
WORKDIR /wagger
RUN apk add --update wget
RUN wget -q https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/swagger-codegen-cli-3.0.0-20171009.075709-6.jar
RUN mv swagger-codegen-cli-3.0.0-20171009.075709-6.jar swagger-codegen-cli.jar

ENTRYPOINT ["java", "-jar", "swagger-codegen-cli.jar"]