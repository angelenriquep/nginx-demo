# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d

curl -H "X-Secret: super-secret-key" -H "X-Variant: A" http://localhost:8081
curl -H "X-Secret: super-secret-key" -H "X-Variant: B" http://localhost:8081
curl -H "X-Secret: 2super-secret-key" -H "X-Variant: B" http://localhost:8081
```