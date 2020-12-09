resource "oci_core_subnet" "management_lbaas_public" {
  cidr_block     = var.vcn_management_lbaas_public_cidr
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_management_enable == true ? 1 : 0
  # dhcp_options_id = 
  display_name               = "lbaas_public"
  dns_label                  = random_string.subnet_management_lbaas_public_dns_label.result
  prohibit_public_ip_on_vnic = false
  # route_table = 
  # security_list_ids = []
  vcn_id = oci_core_vcn.management[0].id
}
