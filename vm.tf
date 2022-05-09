
resource "google_compute_instance" "private-vm" {
  name         = "controle-plan"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.management-subnet.id
  }

  service_account {
    email  = google_service_account.gke-serviceAccount.email
    scopes = ["cloud-platform"]
  }

}

