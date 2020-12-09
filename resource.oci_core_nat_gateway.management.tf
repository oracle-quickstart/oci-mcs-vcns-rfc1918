resource "oci_core_nat_gateway" "management" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_management_enable == true ? 1 : 0
  display_name   = "management"
  vcn_id         = oci_core_vcn.management[0].id
}
