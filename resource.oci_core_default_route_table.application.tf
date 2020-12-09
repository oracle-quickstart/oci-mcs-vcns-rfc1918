resource "oci_core_default_route_table" "application" {
  count                      = var.vcn_application_enable == true ? 1 : 0
  manage_default_resource_id = oci_core_vcn.application[0].default_route_table_id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.application[0].id
  }
}
