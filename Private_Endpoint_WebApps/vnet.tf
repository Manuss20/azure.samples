# Create an Azure Virtual Network & Subnet
resource "azurerm_virtual_network" "vnet" {
  name                = var.name-vnet
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  tags = var.tags

}

#integrationsubnet
resource "azurerm_subnet" "subnet" {
  name                                           = var.name_subnet_1
  resource_group_name                            = azurerm_resource_group.rg.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = var.address_space_subnet_1
  service_endpoints                              = []
  delegation {
    name = "delegation"
    service_delegation {
      name = "Microsoft.Web/serverFarms"
    }
  }

}

#Endpoint Subnet
resource "azurerm_subnet" "subnet2" {
  name                                           = var.name_subnet_2
  resource_group_name                            = azurerm_resource_group.rg.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = var.address_space_subnet_2
  service_endpoints                              = []

  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint
  enforce_private_link_service_network_policies  = var.enforce_private_link_service
}

resource "azurerm_subnet_network_security_group_association" "vnet" {
  for_each                  = var.nsg_ids
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = each.value
}

resource "azurerm_subnet_route_table_association" "vnet" {
  for_each       = var.route_tables_ids
  route_table_id = each.value
  subnet_id      = azurerm_subnet.subnet.id
}

resource "azurerm_app_service_virtual_network_swift_connection" "vnetintegrationconnection" {
  app_service_id = azurerm_app_service.app_frontend.id
  subnet_id      = azurerm_subnet.subnet.id
}