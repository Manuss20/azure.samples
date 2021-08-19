# Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "iotcentralexample"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "IoTCentral" }
}

# Azure IoT Central
variable "iotcentral_name"{
  description = "(Required) Name of IoT Central instance"
  default = "iotcentraltestmanu"
}

variable "iotcentral_sku"{
  description = "(Required) SKU of IoT Central instance"
  default = "ST2"
}

variable "iotcentral_template"{
  description = "(Required) Template of IoT Central instance"
  default = "iotc-pnp-preview@1.0.0"
}
