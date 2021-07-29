#Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "vnetexample"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "Vnet" }
}

# Virtual Network
variable "name-vnet" {
  description = "(Required) Name of the Virtual Network."
  default = "vn_name"
}

variable "address_space" {
  description = "(Required) The Address Spaces of the Virtual Network."
  default = ["10.0.0.0/28"]
}

variable "dns_servers" {
  description = "(Optional) DNS Servers object."
  default     = null
}

# Virtual Subnet
variable "name_subnet" {
  description = "(Required) Name of subnets to create."
  default = "default"
}

variable "address_space_subnet" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.0.0.0/28"]
}

# Network Security Group
variable "name_nsg" {
  description = "(Required) Name of Network Security Group to create."
  default = "nsg_name"
}
