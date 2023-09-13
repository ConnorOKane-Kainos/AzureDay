resource "azurerm_log_analytics_workspace" "citi_logs" {
    # The WorkSpace name has to be unique across the whole of azure, not just the current subscription/tenant.
    name                = "${var.resource_group_name}-la"
    location            = var.location
    resource_group_name = data.azurerm_resource_group.resource_group.name
    sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_solution" "Log_Analytics_Solution_ContainerInsights" {
    solution_name         = "ContainerInsights"
    location              = azurerm_log_analytics_workspace.citi_logs.location
    resource_group_name   = data.azurerm_resource_group.resource_group.name
    workspace_resource_id = azurerm_log_analytics_workspace.citi_logs.id
    workspace_name        = azurerm_log_analytics_workspace.citi_logs.name

    plan {
        publisher = "Microsoft"
        product   = "OMSGallery/ContainerInsights"
    }
}
data "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group_name}"
}