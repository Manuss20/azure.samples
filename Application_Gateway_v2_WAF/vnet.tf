# Create an Azure Virtual Network & Subnet

resource "azurerm_virtual_network" "vnet" {
  name                = var.name-vnet
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                                           = var.name_subnet_1
  resource_group_name                            = azurerm_resource_group.rg.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = var.address_space_subnet_1
  service_endpoints                              = []
}

resource "azurerm_subnet" "subnet2" {
  name                                           = var.name_subnet_2
  resource_group_name                            = azurerm_resource_group.rg.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = var.address_space_subnet_2
  service_endpoints                              = []
}