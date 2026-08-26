terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "brunovskiterraformstate"
    container_name       = "remote-state"
    key                  = "comandos/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "brunovski"
      managed-by = "terraform"
    }
  }
}