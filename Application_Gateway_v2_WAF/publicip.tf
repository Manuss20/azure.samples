# Create Azure Public Ip

resource "azurerm_public_ip" "publicip" {
    name                         = var.name-publicip
    location                     = var.location
    resource_group_name          = azurerm_resource_group.rg.name
    allocation_method            = var.allocation-method-publicip
}

resource "azurerm_public_ip" "publicip_2" {
    name                         = var.name-publicip_2
    location                     = var.location
    resource_group_name          = azurerm_resource_group.rg.name
    allocation_method            = var.allocation-method-publicip
}

resource "azurerm_public_ip" "publicip_agw" {
    name                         = var.name-publicipagw
    location                     = var.location
    resource_group_name          = azurerm_resource_group.rg.name
    allocation_method            = var.allocation-method-publicipagw
    sku                          = var.sku-publicipagw
}