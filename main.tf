terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  credentials = file("./keys/creds.json")
  project     = "first-planet-411908"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "first-planet-411908-demo-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}