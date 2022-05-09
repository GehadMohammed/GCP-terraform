resource "google_compute_network" "vpc" {
  name = "terraform-network"
  auto_create_subnetworks = false
  }
