resource "oci_core_subnet" "application_nonproduction_mt" {
  cidr_block     = var.vcn_application_nonproduction_mt_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_application_enable == true ? 1 : 0
  # dhcp_options_id = 
  display_name               = "nonproduction_mt"
  dns_label                  = random_string.subnet_application_nonproduction_mt_dns_label.result
  prohibit_public_ip_on_vnic = true
  # route_table = 
  # security_list_ids = []
  vcn_id = oci_core_vcn.application[0].id
}
