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

# Azure Maps
variable "maps_name"{
  description = "(Required) Name of Azure Maps instance"
  default = "mapsexamplemanu"
}

variable "maps_sku"{
  description = "(Required) SKU of Azure Maps instance"
  default = "S1"
}