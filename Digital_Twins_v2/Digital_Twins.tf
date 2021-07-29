#Create Digital Twins instance

resource "azurerm_digital_twins_instance" "example" {
  name                = var.dt_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  tags = var.tags
}