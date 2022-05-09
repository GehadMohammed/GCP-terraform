resource "google_service_account" "serviceaccount-gke" {
  account_id   = "cluster-admin"
  display_name = "cluster-admin"
}
resource "google_project_iam_member" "serviceaccount-gke-binding" {
  project = "geha-348521 "
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.serviceaccount-gke.email}"
}

resource "google_service_account" "serviceaccount-node" {
  account_id   = "node-serviceaccount"
  display_name = "node-serviceaccount"
}
resource "google_project_iam_member" "serviceaccount-node-binding" {
  project = "geha-348521"
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.serviceaccount-node.email}"
}