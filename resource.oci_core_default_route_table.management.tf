resource "oci_core_default_route_table" "management" {
  count                      = var.vcn_management_enable == true ? 1 : 0
  manage_default_resource_id = oci_core_vcn.management[0].default_route_table_id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.management[0].id
  }
}
