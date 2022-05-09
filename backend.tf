terraform {
  backend "gcs" {
    bucket  = "gcp-terraform-state-file"
    prefix  = "terraform/state"
  }
}
