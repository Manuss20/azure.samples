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
variable "name-st" {
  description = "(Required) Name of Storage Account"
  default="stacr"
}

variable "sku-st" {
  description = "(Required) Sku Storage Account"
  default="Standard"
}

variable "kind-st" {
  description = "(Required) Kind Storage Account"
  default="StorageV2"
}

variable "replication-type-st" {
  description = "(Required) Replication type on Storage Account"
  default="LRS"
}

variable "http-traffic-only-st" {
  description = "(Required) http-traffic-only-sta Storage Account"
  default=true
}

variable "stacrread" {
  description = "(Required) Name of Storage Account Container"
  default="stcacr"
}

variable "access-type-st-container" {
  description = "(Required) Access Type of Storage Account Container"
  default="private"
}

variable "name-st-func" {
  description = "(Required) Name of Storage Account"
  default="stfuncacr"
}

variable "sku-st-func" {
  description = "(Required) Sku Storage Account"
  default="Standard"
}

variable "kind-st-func" {
  description = "(Required) Kind Storage Account"
  default="StorageV2"
}

variable "replication-type-st-func" {
  description = "(Required) Replication type on Storage Account"
  default="LRS"
}

# Event Grid
variable "name-evgt" {
  description = "(Required) Name of Event Grid topic"
  default="evgtacr"
}

# Azure App Service Plan
variable "asp_name" {
  description = "(Required) App Service Plan name"
  default = "aspacr"
}

variable "asp_kind" {
  description = "(Required) App Service Plan kind"
  default = "functionapp"
}

variable "asp_sku" {
  description = "(Required) App Service Plan Sku"
  default = { tier = "Dynamic", size = "Y1" }
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