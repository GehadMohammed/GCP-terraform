resource "google_compute_firewall" "firewall" {
  name    = "firewall"
  network = google_compute_network.vpc.id


  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
 source_ranges = ["0.0.0.0/0"]
}