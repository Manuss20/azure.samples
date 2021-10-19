# Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "RGexample"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "TF_example" }
}

# Storage Account
variable "sta_name" {
  description = "(Required) Storage account name"
  default = "staexample"
}
variable "sta_tier" {
  description = "(Required) Storage account tier"
  default = "Standard"
}
variable "sta_replication_type" {
  description = "(Required) Storage account replication type"
  default = "GRS"
}
variable "sta_ntw_rule_default_action" {
  description = "(Required) Storage account network rule default action"
  default = "Deny"
}
variable "sta_ntw_rule_bypass" {
  description = "(Required) Storage account network rule bypass"
  default = [ "AzureServices" ]
}



# Azure App Service Plan
variable "app_service_plan_name" {
  description = "(Required) App Service Plan name"
  default = "app-service-plan-example"
}

variable "app_service_plan_kind" {
  description = "(Required) App Service Plan kind"
  default = "Linux"
}

# When creating a Linux App Service Plan, the reserved field must be set to true, and when creating a Windows/app App Service Plan the reserved field must be set to false.
variable "app_service_plan_reserved" {
  description = "(Required) App Service Plan reserved"
  default = "true"
}

variable "app_service_plan_tier" {
  description = "(Required) App Service Plan tier"
  default = "Premiumv2"
}

variable "app_service_plan_size" {
  description = "(Required) App Service Plan size"
  default = "P1v2"
}

# Azure App Service Frontend
variable "app_service_name_fe" {
  description = "(Required) App Service name"
  default = "app-service-example-fe"
}

# Azure App Service Frontend
variable "app_service_name_be" {
  description = "(Required) App Service name"
  default = "app-service-example-be"
}

# Virtual Network
variable "name-vnet" {
  description = "(Required) Name of the Virtual Network."
  default = "Production"
}

variable "address_space" {
  description = "(Required) The Address Spaces of the Virtual Network."
  default = ["10.0.0.0/16"]
}

variable "dns_servers" {
  description = "(Optional) DNS Servers object."
  default     = null
}

variable "name_subnet_1" {
  description = "(Required) Name of subnets to create."
  default = "jump"
}

variable "address_space_subnet_1" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.0.1.0/24"]
}

variable "name_subnet_2" {
  description = "(Required) Name of subnets to create."
  default = "webs"
}

variable "address_space_subnet_2" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.0.2.0/24"]
}

variable "nsg_ids" {
  description = "A map of subnet name to Network Security Group IDs"
  type        = map(string)

  default = {
  }
}

variable "route_tables_ids" {
  description = "A map of subnet name to Route table ids"
  type        = map(string)
  default     = {}
}

variable "enforce_private_link_endpoint" {
  description = "(Required) Enforce Private Link Endpoint Network Policies ."
  default = true
}

variable "enforce_private_link_service" {
  description = "(Required) Enforce Private Link Service Network Policies ."
  default = false
}

# Azure Private DNS Zone
variable "private_dns_zone_name" {
  description = "(Required) Private DNS Zone Name."
  default = "privatelink.azurewebsites.net"
}

# Azure Private DNS Zone Virtual Network Link
variable "private_dns_vnet_link_name" {
  description = "(Required) Azure Private DNS Zone Virtual Network Link Name."
  default = "link-to-subnet-dns"
}

#Private Endpoint
variable "pe_name" {
  description = "(Required) Private Endpoint Name."
  default = "backwebappprivateendpoint"
}

#Private DNS Zone Group
variable "private_dns_zone_group" {
  description = "(Required) Private DNS Zone Group Name."
  default = "privatednszonegroup"
}

#Private Service Connection
variable "private_service_connection" {
  description = "(Required) Private Service Connection Name."
  default = "privateendpointconnection"
}

variable "subresource_names" {
  description = "(Required) Private Service Connection Sub Resource Names."
  default = ["sites"]
}

variable "is_manual_connection" {
  description = "(Required) Private Service Connection is Manual Connection."
  default = false
}

