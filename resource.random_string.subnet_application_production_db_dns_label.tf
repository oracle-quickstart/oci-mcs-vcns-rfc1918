resource "random_string" "subnet_application_production_db_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
