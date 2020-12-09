# Oracle Managed Cloud Service RFC1918 VCN Layout

This is an OCI Resource Manager stack that deploys an OCI Virtual Cloud Network (VCN) by following best practices.

# Quick Start

[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://console.us-phoenix-1.oraclecloud.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/oracle-quickstart/oci-mcs-vcns-rfc1918/archive/main.zip)

# Features

List of best practices followed : 

* VCN names are generic, and match the purpose.
* RFC1918 CIDR assignment by default, user selectable.
* Subnet labels are generic to show purpose
* Subnets are Regional to enable deployment across Availability Domains in regions that have more than 1 to achieve higher availability.
* Subnets are intended to enable safe segregation of resources (e.g. no mix of MT and DB, or Production and Non Production resources)
* Network Security Groups may be applied to individual resources once created to further restrict access between servers within subnets.
* Dedicated subnets for Public and Private LBaaS service deployments to ensure the requirements are met for each.
* NAT Gateway is used so that generated traffic will always egress with the same IP Address.
