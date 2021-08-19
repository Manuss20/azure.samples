#Create IoT Central instance

resource "azurerm_iotcentral_application" "example" {
  name                = var.iotcentral_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sub_domain          = var.iotcentral_name

  display_name = var.iotcentral_name
  sku          = var.iotcentral_sku
  template     = var.iotcentral_template

  tags         = var.tags
  
}