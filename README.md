# Swaggy

Swaggy is a packaged 3.x version of swagger codegen cli utility

Usage example:

```
docker run -it --rm -v $PWD:/code rabotaua/swaggy generate -l typescript-angular -i https://admin-api.rabota.ua/swagger/v1/swagger.json -o /code
```