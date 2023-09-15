terraform {

  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terraform.state"
    storage_account_name = "citistores"
    resource_group_name  = "citiboys"
  }
}