resource "azurerm_log_analytics_workspace" "log" {
  name                = var.name-log
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = var.sku-log
  retention_in_days   = var.retention-log
}

resource "azurerm_container_app_environment" "cae" {
  name                       = var.name-cae
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.log.id
}

resource "azurerm_container_app" "ca" {
  name                         = var.name-ca
  container_app_environment_id = azurerm_container_app_environment.cae.id
  resource_group_name          = azurerm_resource_group.rg.name
  revision_mode                = var.revision-ca

  template {
    container {
      name   = "examplecontainerapp"
      image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}

resource "azurerm_container_app_environment_dapr_component" "caedapr" {
  name                         = var.name-cae-dapr
  container_app_environment_id = azurerm_container_app_environment.cae.id
  component_type               = var.component_type-cae-dapr
  version                      = var.version-cae-dapr
}