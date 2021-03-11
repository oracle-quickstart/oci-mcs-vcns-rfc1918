resource "oci_core_default_dhcp_options" "compliance" {
  count                      = var.vcn_compliance_enable == true ? 1 : 0
  manage_default_resource_id = oci_core_vcn.compliance[0].default_dhcp_options_id
  options {
    server_type = "VcnLocalPlusInternet"
    type        = "DomainNameServer"
  }
}
