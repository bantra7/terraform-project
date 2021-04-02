resource "google_compute_address" "interne-subnet-and-address" {
  name = "interne-subnet-address-ilkilab01"
}
resource "google_compute_firewall" "interne-firewall" {
  name    = "interne-firewall-ilkilab01"
  network = google_compute_network.interne.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}
resource "google_compute_instance" "instance01" {
  name         = var.instance_name
  machine_type = "n1-standard-1"
  zone         = "europe-west1-d"
  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }
  network_interface {
    network    = google_compute_network.interne.id
    subnetwork = google_compute_subnetwork.interne-subnet.id
    access_config {
      nat_ip = google_compute_address.interne-subnet-and-address.address
    }
  }
  metadata = {
    ssh_keys = ""
  }
  metadata_startup_script = "echo hi > /test.txt"
}
