/*
Created by Brunovski
*/

terraform {
  required_version = ">0.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.65.0"
    }
  }
}

provider "azurerm" {
  features {}
}