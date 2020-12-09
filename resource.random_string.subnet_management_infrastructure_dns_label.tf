resource "random_string" "subnet_management_infrastructure_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
