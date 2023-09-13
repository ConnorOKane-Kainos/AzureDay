terraform {
    backend "azurerm" {
        resource_group_name = "citiboys"
        storage_account_name = "citistores"
        container_name = "tfstate"
        key = "acr-terraform-tfstate"
    }
}
provider "azurerm" {
    features{}
  
}

#Creating resource group for ACR
resource "azurerm_resource_group" "acr_resource_group" {
  name = "${var.name}-rg"
  location = "${var.location}"
  
}

#Creating container registry for ACR
resource "azurerm_container_registry" "acr" {
  name = "${var.name}rg"
  resource_group_name = azurerm_resource_group.acr_resource_group.name
  location = azurerm_resource_group.acr_resource_group.location
  sku = "Standard"
  admin_enabled = false

  
  }
