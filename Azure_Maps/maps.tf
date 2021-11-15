resource "azurerm_maps_account" "map" {
  name                = var.maps_name
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = var.maps_sku
  tags                = var.tags
}