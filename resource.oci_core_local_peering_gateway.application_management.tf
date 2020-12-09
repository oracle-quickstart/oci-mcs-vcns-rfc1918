resource "oci_core_local_peering_gateway" "application_management" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_application_enable && var.vcn_management_enable == true ? 1 : 0
  display_name   = "application_management"
  peer_id        = oci_core_local_peering_gateway.management_application[0].id
  vcn_id         = oci_core_vcn.application[0].id
}
