resource "google_compute_instance" "vm-1" {
  name         = "vm-1"
  zone         = var.gcp-default-zone
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_1.self_link
    subnetwork = google_compute_subnetwork.subnet_1.self_link
  }
}