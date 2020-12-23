resource "oci_core_subnet" "management_infrastructure" {
  cidr_block                 = var.vcn_management_infrastructure_cidr
  compartment_id             = var.vcn_compartment_ocid
  count                      = var.vcn_management_enable == true ? 1 : 0
  display_name               = "infrastructure"
  dns_label                  = random_string.subnet_management_infrastructure_dns_label.result
  prohibit_public_ip_on_vnic = true
  vcn_id                     = oci_core_vcn.management[0].id
}
