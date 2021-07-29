# Create an Azure Network Interfaces

resource "azurerm_network_interface" "nic" {
  name                = var.name-nic
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.name-ipconfig-nic
    subnet_id                     = "/subscriptions/4bc8c932-c834-4b5e-8081-2ff96cb1d4be/resourceGroups/spoke1-vnet-rg/providers/Microsoft.Network/virtualNetworks/spoke1-vnet/subnets/BackendSubnet"
    private_ip_address_allocation = var.private-ip-allocation-nic
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}