resource "oci_core_vcn" "compliance" {
  cidr_block     = var.vcn_compliance_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable == true ? 1 : 0
  display_name   = "compliance"
  dns_label      = random_string.vcn_compliance_dns_label.result
}
