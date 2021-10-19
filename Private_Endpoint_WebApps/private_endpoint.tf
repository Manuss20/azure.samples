resource "azurerm_private_endpoint" "pe" {
  name                = var.pe_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = azurerm_subnet.subnet2.id

  private_dns_zone_group {
    name = var.private_dns_zone_group
    private_dns_zone_ids = [azurerm_private_dns_zone.pdnsz.id]
  }

  private_service_connection {
    name = var.private_service_connection
    private_connection_resource_id = azurerm_app_service.app_backend.id
    subresource_names = var.subresource_names
    is_manual_connection = var.is_manual_connection
  }
}