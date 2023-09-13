terraform {
  backend "azurerm" {
    resource_group_name  = "citiboys"
    storage_account_name = "citistores"
    container_name       = "tfstate"
    key                  = "la-terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}