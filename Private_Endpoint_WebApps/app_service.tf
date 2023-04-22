resource "azurerm_service_plan" "plan" {
  name                =  var.app_service_plan_name
  resource_group_name =  azurerm_resource_group.rg.name
  location            =  azurerm_resource_group.rg.location
  os_type             =  var.app_service_plan_kind
  sku_name            =  var.app_service_plan_size
  tags                =  var.tags
}

resource "azurerm_linux_web_app" "app_frontend" {
  name                = var.app_service_name_fe
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id
  site_config {
    application_stack {
      dotnet_version = "7.0"
    }
  }

  app_settings = {
    "WEBSITE_DNS_SERVER": "168.63.129.16",
    "WEBSITE_VNET_ROUTE_ALL": "1"
  }

  tags                = var.tags
}

resource "azurerm_linux_web_app" "app_backend" {
  name                = var.app_service_name_be
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id
  site_config {
    application_stack {
      dotnet_version = "7.0"
    }
  }

  tags                = var.tags
}
