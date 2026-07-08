/*
Created by Brunovski
*/

resource "azurerm_resource_group" "this" {
  name     = "terraform_managed"
  location = "East US"

  tags = local.common_tags
}