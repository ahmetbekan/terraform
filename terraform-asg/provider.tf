provider "aws" {
  region  = "${var.region}"
  version = "2.70"          #plugin version
}

terraform {
  required_version = "0.11.14" #terraform version
}
