terraform {
  required_version = ">= 0.13"
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 4.5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.3.0"
    }
  }
}
