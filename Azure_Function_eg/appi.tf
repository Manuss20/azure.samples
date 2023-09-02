resource "azurerm_application_insights" "appi" {
  name                = local.app_service_plan
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  application_type    = var.appi_application_type
  retention_in_days   = var.appi_retention_days
  tags                = var.tags
}