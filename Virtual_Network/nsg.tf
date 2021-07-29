# Create an Azure Network Security Group
resource "azurerm_network_security_group" "nsg" {
  name                = var.name_nsg
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.tags
}