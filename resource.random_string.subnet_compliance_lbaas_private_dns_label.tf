resource "random_string" "subnet_compliance_lbaas_private_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
