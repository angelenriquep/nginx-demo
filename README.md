# Nginx Advanced topics

```sh
docker-compose down --volumes && docker-compose up --build -d

mkdir -p ./nginx/certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout ./nginx/certs/server.key \
  -out ./nginx/certs/server.crt \
  -subj "/CN=localhost"


curl -ILk -H "X-Secret: super-secret-key" -H "X-Variant: B" -H "User-Agent:" https://localhost
```