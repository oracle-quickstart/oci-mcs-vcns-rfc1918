resource "oci_core_subnet" "compliance_lbaas_private" {
  cidr_block                 = var.vcn_compliance_lbaas_private_cidr
  compartment_id             = var.vcn_compartment_ocid
  count                      = var.vcn_compliance_enable == true ? 1 : 0
  display_name               = "lbaas_private"
  dns_label                  = random_string.subnet_compliance_lbaas_private_dns_label.result
  prohibit_public_ip_on_vnic = true
  vcn_id                     = oci_core_vcn.compliance[0].id
}
