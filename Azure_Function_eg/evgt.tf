resource "azurerm_eventgrid_topic" "evgt" {
  name                = local.event_grid_topic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.tags
}