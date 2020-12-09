resource "oci_core_local_peering_gateway" "management_compliance" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_management_enable && var.vcn_compliance_enable == true ? 1 : 0
  display_name   = "management_compliance"
  vcn_id         = oci_core_vcn.management[0].id
}
