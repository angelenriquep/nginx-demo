# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d

curl -IL -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent:" http://localhost:8080 | grep X-Backend-Server
```