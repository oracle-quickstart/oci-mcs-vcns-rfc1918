resource "oci_core_vcn" "application" {
  cidr_block     = var.vcn_application_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_application_enable == true ? 1 : 0
  display_name   = "application"
  dns_label      = random_string.vcn_application_dns_label.result
}
