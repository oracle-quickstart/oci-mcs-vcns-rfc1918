resource "oci_core_vcn" "management" {
  cidr_block     = var.vcn_management_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_management_enable == true ? 1 : 0
  display_name   = "management"
  dns_label      = random_string.vcn_management_dns_label.result
}
