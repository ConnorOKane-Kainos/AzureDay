# Define the Azure Resource Manager provider with its features
provider "azurerm" {
  features {}

  client_id     = "509d6b40-4e26-44e6-b32b-c3b6fe163c28"
  client_secret = "cf373785-6012-4ad7-a394-1170454935b9"
  tenant_id     = "396f479c-75a6-4b53-bc03-35f5e13524dc"

}

# Create an Azure Resource Group. This group is essentially a container that holds related resources for an Azure solution.
resource "azurerm_resource_group" "citi_resource_group" {
  name     = "CitiBoys"
  location = "West Europe"
}

# Create an Azure Active Directory Group named "AKS-Admins". This group will be used to provide AKS access to its members.
resource "azuread_group" "aks_admins" {
  display_name     = "AKS-Admins"
  security_enabled = true
  mail_enabled     = false
}

# Output the Object ID of the created Azure AD Group. This ID will be useful for future references or actions on this group.
output "group_object_id" {
  description = "The Object ID of the Azure AD Group for AKS Admins."
  value       = azurerm_resource_group.citi_resource_group.id
}
