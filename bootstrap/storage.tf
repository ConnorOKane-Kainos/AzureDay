resource azurerm_storage_account "citi_storage" {
    
  name     = "citistores"
  location = "West Europe"
  resource_group_name      = azurerm_resource_group.citi_resource_group.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}
