resource "oci_core_subnet" "compliance_production_mt" {
  cidr_block     = var.vcn_compliance_production_mt_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable == true ? 1 : 0
  # dhcp_options_id = 
  display_name               = "production_mt"
  dns_label                  = random_string.subnet_compliance_production_mt_dns_label.result
  prohibit_public_ip_on_vnic = true
  # route_table = 
  # security_list_ids = []
  vcn_id = oci_core_vcn.compliance[0].id
}
