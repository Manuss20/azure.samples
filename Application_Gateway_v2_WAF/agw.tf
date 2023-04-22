# Create an Azure Application Gateway

resource "azurerm_application_gateway" "agw" {
  name                = var.name-agw
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  enable_http2        = var.http2-agw
  tags                = var.tags

  sku {
    name     = var.sku-name-agw
    tier     = var.sku-tier-agw
  }

  autoscale_configuration {
    min_capacity = var.capacity-agw-min
    max_capacity = var.capacity-agw-max
  }

  gateway_ip_configuration {
    name      = azurerm_virtual_network.vnet.name
    subnet_id = azurerm_subnet.subnet.id
  }

  frontend_ip_configuration {
    name                 = var.frontend-ip-config-name-agw
    public_ip_address_id = azurerm_public_ip.publicip_agw.id
  }

  frontend_port {
    name = var.frontend-port-name-agw
    port = var.frontend-port-agw
  }

  backend_address_pool {
    name = var.backend-address-pool-name-agw
  }

  backend_http_settings {
    name                  = var.backend_http_settings-name-agw
    cookie_based_affinity = var.backend_http_settings-cookie-agw
    port                  = var.backend_http_settings-port-agw
    protocol              = var.backend_http_settings-protocol-agw
    request_timeout       = var.backend_http_settings-request_timeout-agw
  }

  http_listener {
    name                           = var.name-http-listener-agw
    frontend_ip_configuration_name = var.frontend-ip-config-name-agw
    frontend_port_name             = var.frontend-port-name-agw
    protocol                       = var.protocol-http-listener-agw
  }

  request_routing_rule {
    name                       = var.name-request-routing-rule-agw
    rule_type                  = var.type-request-routing-rule-agw
    http_listener_name         = var.name-http-listener-agw
    backend_address_pool_name  = var.backend-address-pool-name-agw
    backend_http_settings_name = var.backend_http_settings-name-agw
  }

  waf_configuration {
    enabled                  = var.enabled-waf
    firewall_mode            = var.firewall-mode-waf
    rule_set_type            = var.rule-set-type-waf
    rule_set_version         = var.rule-set-version-waf
    file_upload_limit_mb     = var.file-upload-limit-mb-waf
    max_request_body_size_kb = var.max-request-body-size-kb-waf
  }

}

resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "nicagw" {
  network_interface_id    = azurerm_network_interface.nic.id
  ip_configuration_name   = var.name-ipconfig-nic
  backend_address_pool_id = one(azurerm_application_gateway.agw.backend_address_pool).id
}

resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "nicagw2" {
  network_interface_id    = azurerm_network_interface.nic_2.id
  ip_configuration_name   = var.name-ipconfig-nic-2
  backend_address_pool_id = one(azurerm_application_gateway.agw.backend_address_pool).id
}