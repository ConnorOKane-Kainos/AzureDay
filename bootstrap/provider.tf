terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}

provider "azurerm" {
    features {}
  # Configuration options
}

#    backend "azurerm" {
#     container_name = "tfstate"
#     key = "terraform.state"
#     storage_account_name = "citi_stores"
#     resource_group_name = "citi_resource_group"
   
#   }
