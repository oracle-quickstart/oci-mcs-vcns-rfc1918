resource "oci_core_nat_gateway" "compliance" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable == true ? 1 : 0
  display_name   = "compliance"
  vcn_id         = oci_core_vcn.compliance[0].id
}
