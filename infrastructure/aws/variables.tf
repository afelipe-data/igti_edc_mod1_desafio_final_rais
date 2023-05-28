variable "region_id" {
  default = "us-east-2"
}

variable "prefix" {
  default = "xp-afelipe-rais2"
}

variable "account" {
  default = 176031035982
}

# Prefix configuration and project common tags
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Project      = "RAIS"
    ManagedBy    = "Terraform"
    Department   = "XPed",
    # Provider     = "Afelipe",
    # Owner        = "Data Engineering"
    # BusinessUnit = "Data"
    # Billing      = "Infrastructure"
    Environment  = terraform.workspace
    UserEmail    = "afelipe.data@gmail.com"
  }
}

variable "bucket_names" {
  description = "Create S3 buckets with these names"
  type        = list(string)
  default = [
    "landing-zone",
    "processing-zone",
    "delivery-zone"
  ]
}

variable "database_names" {
  description = "Create databases with these names"
  type        = list(string)
  default = [
    #landing-zone
    "dl_landing_zone",
    "dl_processing_zone",
    "dl_delivery_zone"
  ]
}
