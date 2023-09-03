data "azurerm_subscription" "current" {}

data "azurerm_client_config" "current" {
}

data "azuread_domains" "aad_domains" {
  only_default        = true
}

resource "random_id" "random" {
  byte_length = 8
}

locals {
  name_sufix          = substr(lower(random_id.random.hex), 1, 4)
  resource_group_name = "${var.resource_group_name}-${local.name_sufix}"
  storage_name        = "${var.name_st}${local.name_sufix}"
  storage_name_func   = "${var.name_st_func}${local.name_sufix}"
  storage_container   = "${var.stacrread}-${local.name_sufix}"
  event_grid_topic    = "${var.name_evgt}-${local.name_sufix}"
  app_service_plan	  = "${var.asp_name}-${local.name_sufix}"
  function_name       = "${var.fun_name}-${local.name_sufix}"  
  
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name                = local.resource_group_name
  location            = var.location
  tags                = var.tags
}