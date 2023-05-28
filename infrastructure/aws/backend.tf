# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-xp-afelipe"
    key    = "state/xp/edc/mod1/desafio_final_v2/terraform.tfstate"
    region = "us-east-2"
  }
}
