docker run \
  -dit \
  -p 127.0.0.1:8200:8200 \
  --restart=always \
  -v $(pwd)/volumes/logs:/vault/logs \
  -v $(pwd)/volumes/file:/vault/file \
  -v $(pwd)/volumes/config:/vault/config \
  --cap-add="IPC_LOCK" \
  --name vault \
  vault vault server -config /vault/config/vault.hcl
