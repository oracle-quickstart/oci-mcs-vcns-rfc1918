resource "oci_core_local_peering_gateway" "application_transit" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_application_enable && var.vcn_transit_enable == true ? 1 : 0
  display_name   = "application_transit"
  peer_id        = oci_core_local_peering_gateway.transit_application[0].id
  vcn_id         = oci_core_vcn.application[0].id
}
