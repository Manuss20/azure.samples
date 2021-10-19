#Network
output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

#Storage Account
output "account_id" {
  value = azurerm_storage_account.sta.id
}

output "account_connection_string" {
  value = azurerm_storage_account.sta.primary_connection_string
  sensitive = true
}

output "account_name" {
  value = azurerm_storage_account.sta.name
}