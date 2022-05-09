resource "google_compute_subnetwork" "public-subnetwork" {
  name          = "management-subnet"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.vpc_network.id
  }

  resource "google_compute_subnetwork" "private-subnetwork" {
  name          = "restricted-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.id
  }

