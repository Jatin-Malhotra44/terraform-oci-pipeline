provider "oci" {
  config_file_profile = "DEFAULT"
}

resource "oci_core_vcn" "example_vcn2" {
  cidr_block     = "10.2.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "example-vcn"
}
