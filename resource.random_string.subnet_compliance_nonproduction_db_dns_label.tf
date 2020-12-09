resource "random_string" "subnet_compliance_nonproduction_db_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
