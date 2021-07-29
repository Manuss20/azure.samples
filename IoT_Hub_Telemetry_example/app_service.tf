resource "azurerm_app_service_plan" "appserviceiot" {
  name                = "iot-blazor"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  reserved = true
  kind = "linux"
  sku {
    tier = "Standar"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "wa-iot-blazor"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceiot.id

  site_config {
    linux_fx_version = "DOTNETCORE|3.1"
  }
}