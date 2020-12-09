resource "oci_core_local_peering_gateway" "compliance_management" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable && var.vcn_management_enable == true ? 1 : 0
  display_name   = "compliance_management"
  peer_id        = oci_core_local_peering_gateway.management_compliance[0].id
  vcn_id         = oci_core_vcn.compliance[0].id
}
