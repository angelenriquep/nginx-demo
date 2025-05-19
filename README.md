# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d

# CACHE MISS
curl -IL -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent: 123" http://localhost:8081

# CACHE HIT
curl -IL -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent: " http://localhost:8081
```