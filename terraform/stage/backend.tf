terraform {
  backend "gcs" {
    bucket = "infra-249419-terraform-states"
    prefix = "terraform/stage"
  }
}

