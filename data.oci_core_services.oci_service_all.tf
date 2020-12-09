data "oci_core_services" "oci_service_all" {
  filter {
    name  = "description"
    regex = true
    values = [
      "Oracle Services Network"
    ]
  }
}
