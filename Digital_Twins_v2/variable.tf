# Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "DTexample"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "DigitalTwins" }
}

# Azure Digital Twins
variable "dt_name"{
  description = "(Required) Name of Digital Twins instance"
  default = "DTmanutest"
}
