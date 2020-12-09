resource "oci_core_nat_gateway" "application" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_application_enable == true ? 1 : 0
  display_name   = "application"
  vcn_id         = oci_core_vcn.application[0].id
}
