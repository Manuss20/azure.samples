resource "azurerm_service_plan" "asp" {
  name                             =  local.app_service_plan
  resource_group_name              =  azurerm_resource_group.rg.name
  location                         =  azurerm_resource_group.rg.location
  sku_name                         =  var.asp_sku
  os_type                          =  var.asp_os_type
  tags                             =  var.tags
}

resource "azurerm_linux_function_app" "func" {
  name                             = local.function_name
  resource_group_name              = azurerm_resource_group.rg.name
  location                         = azurerm_resource_group.rg.location
  service_plan_id                  = azurerm_service_plan.asp.id
  storage_account_name             = azurerm_storage_account.stfunc.name
  storage_account_access_key       = azurerm_storage_account.stfunc.primary_access_key
  functions_extension_version      = "~4"
  https_only                       = var.func_https_only
  tags                             = var.tags

  site_config {}
  app_settings = {
    application_insights_key       = azurerm_application_insights.appi.instrumentation_key
  }
  
}