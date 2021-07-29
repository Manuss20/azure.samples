# Create an Azure Virtual Network & Subnet
resource "azurerm_virtual_network" "vnet" {
  name                = var.name-vnet
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                                           = var.name_subnet
  resource_group_name                            = azurerm_resource_group.rg.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = var.address_space_subnet
  service_endpoints                              = []
}

resource "azurerm_subnet_network_security_group_association" "vnet" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}