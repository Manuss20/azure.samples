resource "azurerm_app_service_plan" "asp" {
  name                             =  local.app_service_plan
  resource_group_name              =  azurerm_resource_group.rg.name
  location                         =  azurerm_resource_group.rg.location
  kind                             =  var.asp_kind
  tags                             =  var.tags
  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "fxn" {
  name                             = local.function_name
  resource_group_name              = azurerm_resource_group.rg.name
  location                         = azurerm_resource_group.rg.location
  app_service_plan_id              = azurerm_app_service_plan.asp.id
  storage_account_name             = azurerm_storage_account.stfunc.name
  storage_account_access_key       = azurerm_storage_account.stfunc.primary_access_key
  version                          = "~4"
  tags                             = var.tags
  app_settings = {
    https_only                     = true
    APPINSIGHTS_INSTRUMENTATIONKEY = azurerm_application_insights.appi.instrumentation_key
  }

  # We ignore these because they're set/changed by Function deployment
  lifecycle {
    ignore_changes = [
      app_settings["WEBSITE_RUN_FROM_PACKAGE"]
    ]
  }
}