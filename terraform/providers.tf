terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
  backend "s3" {
    bucket = "tofu-backend"
    key                         = "homelab/semaphore_testing/terraform.tfstate"
    region                      = "main" # this is required, but will be skipped!
    skip_credentials_validation = true   # this will skip AWS related validation
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }  
}

provider "random" {
  # Configuration options
}
