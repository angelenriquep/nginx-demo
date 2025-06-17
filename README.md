# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d
docker system prune -f --volumes
docker-compose down
docker-compose up --build


# CACHE MISS
curl -IL -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent: 123" http://localhost:8081

# CACHE HIT
curl -IL -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent: " http://localhost:8081
```

$no_cache = 1 → indicates do not cache for most users.

$no_cache = 0 → indicates cache is allowed when no User-Agent is provided.