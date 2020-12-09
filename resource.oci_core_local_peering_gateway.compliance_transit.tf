resource "oci_core_local_peering_gateway" "compliance_transit" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable && var.vcn_transit_enable == true ? 1 : 0
  display_name   = "compliance_transit"
  peer_id        = oci_core_local_peering_gateway.transit_compliance[0].id
  vcn_id         = oci_core_vcn.compliance[0].id
}
