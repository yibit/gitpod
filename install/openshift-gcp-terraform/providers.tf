provider "google" {
  version = "=2.20.1"
  project = var.project
  region  = var.region
}

provider "local" {}
