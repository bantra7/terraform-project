resource "google_compute_network" "interne" {
  name = var.network_name
}
resource "google_compute_subnetwork" "interne-subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = "europe-west1"
  network       = google_compute_network.interne.id
}
