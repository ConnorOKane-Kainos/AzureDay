resource azurerm_storage_account "citi_storage" {
    
  name     = "citistores"
  location = "uksouth"
  resource_group_name      = azurerm_resource_group.citi_resource_group.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.citi_storage.name
  container_access_type = "private"
}
