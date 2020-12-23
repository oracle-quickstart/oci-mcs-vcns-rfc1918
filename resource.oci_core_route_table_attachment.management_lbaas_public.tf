resource "oci_core_route_table_attachment" "management_lbaas_public" {
  count          = var.vcn_management_enable == true ? 1 : 0
  route_table_id = oci_core_route_table.management_public[0].id
  subnet_id      = oci_core_subnet.management_lbaas_public[0].id
}
