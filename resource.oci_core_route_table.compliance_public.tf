resource "oci_core_route_table" "compliance_public" {
  compartment_id = var.vcn_compartment_ocid
  count          = var.vcn_compliance_enable == true ? 1 : 0
  display_name   = "Compliance Public"
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.compliance[0].id
  }
  vcn_id = oci_core_vcn.compliance[0].id
}

