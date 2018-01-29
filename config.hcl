listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "/tmp/server-cert.pem"
  tls_key_file = "/tmp/server-key.pem"
}

api_addr = "https://vault.outflank.io"
cluster_addr = "https://vault.outflank.io:443"

backend "zookeeper" {
  address = "aic.outflank.io:2181"
  path = "vault"
  advertise_addr = "https://vault.outflank.io:443"
}

cluster_name = "outflank"
disable_cache = true
disable_mlock = true