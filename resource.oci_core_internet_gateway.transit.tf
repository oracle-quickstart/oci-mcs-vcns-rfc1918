resource "oci_core_internet_gateway" "transit" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_transit_enable == true ? 1 : 0
  display_name   = "transit"
  vcn_id         = oci_core_vcn.transit[0].id
}
