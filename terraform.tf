terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 4.17.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.3.0"
    }
  }
  required_version = ">= 0.13"
}
