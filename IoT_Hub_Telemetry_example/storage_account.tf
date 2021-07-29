# Create an Azure Storage Account

resource "azurerm_storage_account" "iot_backend" {
  name                      = var.storage_account_name
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = var.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
}

resource "azurerm_storage_container" "iot_container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.iot_backend.name
  container_access_type = "private"
}
