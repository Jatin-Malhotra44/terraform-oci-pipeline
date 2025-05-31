provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

resource "oci_core_virtual_network" "example_vcn" {
  cidr_block     = "10.2.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "example-vcn"
}
