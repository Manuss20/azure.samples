# Create Azure Private DNS Zone &  Link
resource "azurerm_private_dns_zone" "pdnsz" {
  name                = var.private_dns_zone_name
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "pl" {
  name                  = var.private_dns_vnet_link_name
  resource_group_name   = azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.pdnsz.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}