terraform {
  backend "gcs" {
    bucket = "statefile-us-central1"
    prefix = "base"
  }
}



resource "google_storage_bucket" "sample_bucket" {
  name                        = "gcs-sample-001-bucket"
  location                    = "us-central1"
  project                     = "citric-replica-425316-v5"
  uniform_bucket_level_access = true
  storage_class               = "REGIONAL"
  versioning {
    enabled = true
  }
}