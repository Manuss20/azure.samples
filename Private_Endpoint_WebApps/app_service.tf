resource "azurerm_app_service_plan" "plan" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  kind                = var.app_service_plan_kind
  reserved            = var.app_service_plan_reserved
  
  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }

  tags                = var.tags
}

resource "azurerm_app_service" "app_frontend" {
  name                = var.app_service_name_fe
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    dotnet_framework_version = "v5.0"
  }

  app_settings = {
    "WEBSITE_DNS_SERVER": "168.63.129.16",
    "WEBSITE_VNET_ROUTE_ALL": "1"
  }
  
}

resource "azurerm_app_service" "app_backend" {
  name                = var.app_service_name_be
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    dotnet_framework_version = "v5.0"
  }

}


