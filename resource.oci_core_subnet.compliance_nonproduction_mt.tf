resource "oci_core_subnet" "compliance_nonproduction_mt" {
  cidr_block                 = var.vcn_compliance_nonproduction_mt_cidr
  compartment_id             = var.vcn_compartment_ocid
  count                      = var.vcn_compliance_enable == true ? 1 : 0
  display_name               = "nonproduction_mt"
  dns_label                  = random_string.subnet_compliance_nonproduction_mt_dns_label.result
  prohibit_public_ip_on_vnic = true
  vcn_id                     = oci_core_vcn.compliance[0].id
}
