terraform {
  backend "azurerm" {
    resource_group_name  = "citiboys"
    storage_account_name = "citistores"
    container_name       = "tfstate"
    key                  = "vnet-terraform.tfstate"
  }
}

provider "azurerm" {
    version = "~> 2.0"
    features {}
}

# data "azurerm_resource_group" "resource_group" {
#   name     = "${var.resource_group_name}"
# }

# resource "azurerm_virtual_private_network" "citi_net" {
#     location = var.location
#     resource_group = azurerm_resource_group.resource_group.id 
# }