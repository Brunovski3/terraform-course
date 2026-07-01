terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-storage-exemplo"
  location = "Brazil South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mystorageaccountxyz123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "meu-container-blob"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
