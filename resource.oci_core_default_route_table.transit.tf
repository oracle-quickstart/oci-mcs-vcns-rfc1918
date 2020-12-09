resource "oci_core_default_route_table" "transit" {
  count                      = var.vcn_transit_enable == true ? 1 : 0
  manage_default_resource_id = oci_core_vcn.transit[0].default_route_table_id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.transit[0].id
  }
}
