# Swaggy

Swaggy is a packaged 3.x version of swagger codegen cli utility

Usage example:

```
docker run -it --rm -v $PWD:/code rabotaua/swaggy https://admin-api.rabota.ua/swagger/v1/swagger.json
```

Code will be generated into `/code` so do not forget to map it.

Under the hood following command will be called:

```
java -jar swagger-codegen-cli.jar generate -l typescript-angular -o /code -i https://admin-api.rabota.ua/swagger/v1/swagger.json
```

To run this without container you gonna need JRE and swagger-codegen-cli.jar which may be downloaded from [here](https://oss.sonatype.org/content/repositories/snapshots/io/swagger/swagger-codegen-cli/3.0.0-SNAPSHOT/)

Links:

[swagger-codegen](https://github.com/swagger-api/swagger-codegen)

[petstore demo project](https://github.com/swagger-api/swagger-codegen/tree/master/samples/client/petstore/typescript-angular-v4.3/npm)
