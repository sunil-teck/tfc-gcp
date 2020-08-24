terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = "var.project_id.prod"
  region  = "us-central1"
  zone    = "us-central1-c"
}