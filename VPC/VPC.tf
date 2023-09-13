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

data "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group_name}"
}

resource "azurerm_virtual_network" "citi_net" {
    location = var.location
    resource_group_name = data.azurerm_resource_group.resource_group.name
    name = "${var.resource_group_name}-vpc"
    address_space = ["10.0.0.0/20"]
}

resource azurerm_subnet "subnet_aks"{
  virtual_network_name = azurerm_virtual_network.citi_net.name
  name = "subnet_aks"
  resource_group_name = data.azurerm_resource_group.resource_group.name 
}
