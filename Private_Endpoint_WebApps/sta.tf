resource "azurerm_storage_account" "sta" {
  name                     = var.sta_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.sta_tier
  account_replication_type = var.sta_replication_type

  network_rules {
    default_action         = var.sta_ntw_rule_default_action
    bypass                 = var.sta_ntw_rule_bypass
  }

}
