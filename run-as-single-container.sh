docker run \
  -dit \
  -p 127.0.0.1:8200:8200 \
  --restart=always \
  -v ./volumes/logs:/vault/logs \
  -v ./volumes/file:/vault/file \
  -v ./volumes/config:/vault/config \
  --cap-add="IPC_LOCK" \
  --entrypoint="vault server -config=/vault/config/vault.json" \
  --name vault \
  vault
