# Define a resource group
resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resource_group_name
  location = var.region
}


