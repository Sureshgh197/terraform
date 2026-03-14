module "network" {
  source      = "./network"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  region      = var.region
  allowed_ports = var.allowed_ports
}

resource "google_compute_instance" "authservice_instance" {
  name         = "authservice-instance"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = module.network.vpc_id
    subnetwork = module.network.subnet_id
    # network    = network.google_compute_network.vpc_network.id
    # subnetwork = network.google_compute_subnetwork.subnet.id
    # network    = google_compute_network.vpc_network.id
    # subnetwork = google_compute_subnetwork.subnet.id
    access_config {}
  }

  tags = ["allow-ssh-http"]
}