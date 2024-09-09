terraform {
  required_version = ">= 1.2.0"

  backend "gcs" {
    bucket = "repairpal" #Give your Globally Unique Bucket name
  }
}