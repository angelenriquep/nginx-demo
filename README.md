# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d

# Hit Nginx
curl -H "Host: variant-a.localhost" http://localhost:8081
curl -H "Host: variant-b.localhost" http://localhost:8081

# Hit apache
curl -H "X-Secret: super-secret-key" -H "Host: variant-b.localhost" http://localhost:8080

# Hit apache - Should fail
curl -H "Host: variant-b.localhost" http://localhost:8080
```