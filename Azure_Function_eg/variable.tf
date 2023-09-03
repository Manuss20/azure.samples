#Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "rg"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "ACR READER" }
}

# Storage Account
variable "name_st" {
  description = "(Required) Name of Storage Account"
  default="stacr"
}

variable "sku_st" {
  description = "(Required) Sku Storage Account"
  default="Standard"
}

variable "kind_st" {
  description = "(Required) Kind Storage Account"
  default="StorageV2"
}

variable "replication_type_st" {
  description = "(Required) Replication type on Storage Account"
  default="LRS"
}

variable "http_traffic_only_st" {
  description = "(Required) http_traffic_only_sta Storage Account"
  default=true
}

variable "stacrread" {
  description = "(Required) Name of Storage Account Container"
  default="stcacr"
}

variable "access_type_st_container" {
  description = "(Required) Access Type of Storage Account Container"
  default="private"
}

variable "name_st_func" {
  description = "(Required) Name of Storage Account"
  default="stfuncacr"
}

variable "sku_st_func" {
  description = "(Required) Sku Storage Account"
  default="Standard"
}

variable "kind_st_func" {
  description = "(Required) Kind Storage Account"
  default="StorageV2"
}

variable "replication_type_st_func" {
  description = "(Required) Replication type on Storage Account"
  default="LRS"
}

# Event Grid
variable "name_evgt" {
  description = "(Required) Name of Event Grid topic"
  default="evgtacr"
}

# Azure App Service Plan
variable "asp_name" {
  description = "(Required) App Service Plan name"
  default = "aspacr"
}

variable "asp_sku" {
  description = "(Required) App Service Plan Sku"
  default = "Y1"
}
variable "asp_os_type" {
  description = "(Required) App Service Plan Os Type"
  default = "Linux"
}

# Azure Application Insights
variable "appi_name" {
  description = "(Required) Azure Application Insights name"
  default = "appiacr"
}

variable "appi_application_type" {
  description = "(Required) Azure Application Insights Application Type"
  default = "web"
}

variable "appi_retention_days" {
  description = "(Required) Azure Application Insights Retention Days"
  default = 90
}

# Azure Function App

variable "fun_name" {
  description = "(Required) Azure Function name"
  default = "funacr"
}

variable "func_https_only" {
  description = "(Required) Azure Function Https Only"
  default = true
}