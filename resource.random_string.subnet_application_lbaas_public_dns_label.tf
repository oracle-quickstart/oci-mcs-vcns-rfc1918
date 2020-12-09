resource "random_string" "subnet_application_lbaas_public_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
