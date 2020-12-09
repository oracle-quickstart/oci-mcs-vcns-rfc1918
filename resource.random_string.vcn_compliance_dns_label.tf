resource "random_string" "vcn_compliance_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
