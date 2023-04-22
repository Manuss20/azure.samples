resource "azurerm_service_plan" "appserviceiot" {
  name                = "iot-blazor"
  resource_group_name =  azurerm_resource_group.rg.name
  location            =  azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "wa-iot-blazor"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.appserviceiot.id
  site_config {
    application_stack {
      dotnet_version = "7.0"
    }
  }
}