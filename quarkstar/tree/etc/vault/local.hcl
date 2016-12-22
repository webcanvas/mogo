backend "etcd" {
  address = "http://localhost:2379"
  advertise_addr = "http://localhost:8200"
}

listener "tcp" {
  address = "localhost:8200"
  tls_disable = 1
}
