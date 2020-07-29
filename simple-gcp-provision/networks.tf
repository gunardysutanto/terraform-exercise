resource "google_compute_network" "vpc_1" {
  name                    = "vpc-test-1"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet_1" {
  name          = "subnet-test-1"
  ip_cidr_range = "10.135.0.0/24"
  network       = google_compute_network.vpc_1.self_link
  region        = var.gcp-default-region
}

resource "google_compute_firewall" "fw_1_allow_ssh" {
  name    = "vpc-test-1-allow-ssh"
  network = google_compute_network.vpc_1.self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "fw_1_allow_icmp" {
  name    = "vpc-test-1-allow-icmp"
  network = google_compute_network.vpc_1.self_link
  allow {
    protocol = "icmp"
  }
}