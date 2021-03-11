resource "oci_core_default_security_list" "management" {
  count                      = var.vcn_management_enable == true ? 1 : 0
  manage_default_resource_id = oci_core_vcn.management[0].default_security_list_id
  egress_security_rules {
    description      = "Allow all outbound traffic"
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
    stateless        = "false"
  }
  ingress_security_rules {
    description = "Required to enable Path MTU Discovery to work, and non-OCI communication"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol    = "1"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
  }
  ingress_security_rules {
    description = "Required to allow application within VCN to fail fast"
    icmp_options {
      type = "3"
    }
    protocol    = "1"
    source      = oci_core_vcn.management[0].cidr_block
    source_type = "CIDR_BLOCK"
    stateless   = "false"
  }
  ingress_security_rules {
    description = "Enable management via Public LBaaS Subnet"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
    tcp_options {
      max = "22"
      min = "22"
    }
  }
}
