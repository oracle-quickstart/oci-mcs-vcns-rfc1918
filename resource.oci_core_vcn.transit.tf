resource "oci_core_vcn" "transit" {
  cidr_block     = var.vcn_transit_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_transit_enable == true ? 1 : 0
  display_name   = "transit"
  dns_label      = random_string.vcn_transit_dns_label.result
}
