resource "oci_core_route_table_attachment" "compliance_lbaas_public" {
  count          = var.vcn_compliance_enable == true ? 1 : 0
  route_table_id = oci_core_route_table.compliance_public[0].id
  subnet_id      = oci_core_subnet.compliance_lbaas_public[0].id
}

