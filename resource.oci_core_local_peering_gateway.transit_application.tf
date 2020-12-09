resource "oci_core_local_peering_gateway" "transit_application" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_transit_enable && var.vcn_application_enable == true ? 1 : 0
  display_name   = "transit_application"
  vcn_id         = oci_core_vcn.transit[0].id
}
