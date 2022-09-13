disable_mlock = true
ui            = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
  proxy_protocol_behavior = "use_always"
}

storage "file" {
  path = "/vault/file"
}

max_lease_ttl = "10h"
default_lease_ttl = "10h"
api_addr = "http://127.0.0.1:8200/v1/"
disable_clustering = "true"
