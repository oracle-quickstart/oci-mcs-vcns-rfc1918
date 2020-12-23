resource "oci_core_route_table_attachment" "application_lbaas_public" {
  count          = var.vcn_application_enable == true ? 1 : 0
  route_table_id = oci_core_route_table.application_public[0].id
  subnet_id      = oci_core_subnet.application_lbaas_public[0].id
}

