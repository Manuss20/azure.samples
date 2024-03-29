# Create an Azure Network Interfaces

resource "azurerm_network_interface" "nic" {
  name                = var.name-nic
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.name-ipconfig-nic
    subnet_id                     = azurerm_subnet.subnet2.id
    private_ip_address_allocation = var.private-ip-allocation-nic
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}


resource "azurerm_network_interface" "nic_2" {
  name                = var.name-nic-2
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.name-ipconfig-nic-2
    subnet_id                     = azurerm_subnet.subnet2.id
    private_ip_address_allocation = var.private-ip-allocation-nic-2
    public_ip_address_id          = azurerm_public_ip.publicip_2.id
  }
}