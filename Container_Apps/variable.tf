#Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "ACExample"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "AC_example" }
}

#Log Analytics Workspace
variable "name-log" {
  description = "(Required) Log Analytics Workspace name of the all services to be created"
  default= "actfexample2023"
}

variable "sku-log" {
  description = "(Required) Specifies the SKU of the Log Analytics Workspace."
  default     = "PerGB2018"
}

variable "retention-log" {
  description = "(Required) Specifies the Retention day of the Log Analytics Workspace."
  default     = 33
}

#Azure Container App Enviroment
variable "name-cae" {
  description = "(Required) Azure Container App Enviroment name of the all services to be created"
  default= "acexample2023"
}

#Azure Container App
variable "name-ca" {
  description = "(Required) Azure Container App name of the all services to be created"
  default= "acxample2023"
}

variable "revision-ca" {
  description = "(Required) Azure Container App revision of the all services to be created"
  default= "Single"
}

variable "ingress_external_enabled" {
  description = "(Required) Azure Container App Ingress External"
  default= true
}

variable "target_port" {
  description = "(Required) Azure Container App Ingress Target Port"
  default= 80
}

variable "allow_insecure_connections" {
  description = "(Required) Azure Container App Ingress Allow Insecure Connections"
  default= true
}

variable "latest_revision" {
  description = "(Required) Azure Container App Ingress Traffic Weight Latest Revision"
  default= true
}

variable "percentage" {
  description = "(Required) Azure Container App Ingress Traffic Weight Percentage"
  default= 100
}

#Azure Container App Enviroment Dapr Component
variable "name-cae-dapr" {
  description = "(Required) Azure Container App Enviroment Dapr Component name of the all services to be created"
  default= "acedaprxample2023"
}

variable "component_type-cae-dapr" {
  description = "(Required) Azure Container App Enviroment Dapr Component type of the all services to be created"
  default= "state.azure.blobstorage"
}

variable "version-cae-dapr" {
  description = "(Required) Azure Container App Enviroment Dapr Component version of the all services to be created"
  default= "v1"
}

#Azure Container Registry
variable "name-acr" {
  description = "(Required) Azure Container Registry name of the all services to be created"
  default= "acrdemoac2023"
}

variable "sku-acr" {
  description = "(Required) Specifies the SKU of the Azure Container Registry."
  default     = "Premium"
}