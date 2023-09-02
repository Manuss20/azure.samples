# Create an Azure Storage Account
resource "azurerm_storage_account" "st" {
  name                      = local.storage_name
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = var.sku-st
  account_kind              = var.kind-st
  account_replication_type  = var.replication-type-st
  enable_https_traffic_only = var.http-traffic-only-st
  tags                      = var.tags
}

resource "azurerm_storage_container" "st_container" {
  name                      = local.storage_container
  storage_account_name      = azurerm_storage_account.st.name
  container_access_type     = var.access-type-st-container
}

resource "azurerm_storage_account" "stfunc" {
  name                      = local.storage_name_func
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = var.sku-st-func
  account_replication_type  = var.replication-type-st-func
  account_kind              = var.kind-st
  enable_https_traffic_only = var.http-traffic-only-st
  tags                      = var.tags
}