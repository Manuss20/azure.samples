# Create an Azure Virtual Machine

resource "azurerm_linux_virtual_machine" "vm" {
    name                  = var.name-vm
    location              = var.location
    resource_group_name   = azurerm_resource_group.rg.name
    network_interface_ids = [azurerm_network_interface.nic.id]
    size                  = var.sku-vm

    os_disk {
        name              = var.name-disk-vm
        caching           = var.caching-disk-vm
        storage_account_type = var.sta-disk-vm
    }

    source_image_reference {
        publisher = var.image-publisher-vm
        offer     = var.image-offer-vm
        sku       = var.image-sku-vm
        version   = var.image-version-vm
    }

    computer_name  = var.name-vm
    admin_username = var.user-name-vm
    admin_password = var.user-password-vm
    disable_password_authentication = var.password_authentication-vm
    custom_data = filebase64("scripts/nginx.sh")

    boot_diagnostics {
        storage_account_uri = azurerm_storage_account.sta.primary_blob_endpoint
    }

    tags = var.tags
}
