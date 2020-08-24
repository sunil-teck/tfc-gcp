locals {
  local_net = "https://www.googleapis.com/compute/v1/projects/teck-dev-ingestion/global/networks/teck-dev-ingestion-internal-project-network"
  local_subnet = "https://www.googleapis.com/compute/v1/projects/teck-dev-ingestion/regions/us-central1/subnetworks/teck-dev-ingestion-internal-project-network"
}

resource "google_compute_instance" "default" {
  project      = var.project_id.prod
  zone         = "us-central1-a"
  name         = "tf-compute-13"
  machine_type = "f1-micro"


  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20170328"
    }
  }

  network_interface {
    network = local.local_net
    subnetwork = local.local_subnet
    access_config {}
  }

}
