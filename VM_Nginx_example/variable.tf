#Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "RG_Example_VM"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "VM_example" }
}

# Virtual Network
variable "name-vnet" {
  description = "(Required) Name of the Virtual Network."
  default = "Production"
}

variable "address_space" {
  description = "(Required) The Address Spaces of the Virtual Network."
  default = ["10.254.0.0/16"]
}

variable "name_subnet_1" {
  description = "(Required) Name of subnets to create."
  default = "agw"
}

variable "address_space_subnet_1" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.254.0.0/24"]
}

variable "name_subnet_2" {
  description = "(Required) Name of subnets to create."
  default = "frontend"
}

variable "address_space_subnet_2" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.254.2.0/24"]
}

variable "dns_servers" {
  description = "(Optional) DNS Servers object."
  default     = null
}

# Public IP
variable "name-publicip" {
  description = "(Required) Name of Public IP"
  default="myPublicIP"
}

variable "name-publicipagw" {
  description = "(Required) Name of Public IP"
  default="myPublicIPagw"
}

variable "allocation-method-publicip" {
  description = "(Required) Allocation Method of Public IP"
  default="Dynamic"
}

variable "allocation-method-publicipagw" {
  description = "(Required) Allocation Method of Public IP"
  default="Static"
}

variable "sku-publicipagw" {
  description = "(Required) Allocation Method of Public IP"
  default="Standard"
}

# Storage Account
variable "name-sta" {
  description = "(Required) Name of Storage Account"
  default="demoagwssta"
}

variable "sku-sta" {
  description = "(Required) Sku Storage Account"
  default="Standard"
}

variable "replication-type-sta" {
  description = "(Required) Replication type on Storage Account"
  default="LRS"
}

variable "http-traffic-only-sta" {
  description = "(Required) http-traffic-only-sta Storage Account"
  default=true
}

variable "name-sta-container" {
  description = "(Required) Name of Storage Account Container"
  default="tfstate"
}

variable "access-type-sta-container" {
  description = "(Required) Access Type of Storage Account Container"
  default="private"
}

# Virtual Machine
variable "name-vm" {
  description = "(Required) Name of Virtual Machine"
  default="demovm"
}

variable "sku-vm" {
  description = "(Required) Name of Virtual Machine"
  default="Standard_DS1_v2"
}

variable "name-disk-vm" {
  description = "(Required) Name of disk - Virtual Machine"
  default="DemoDeviceDisk"
}

variable "caching-disk-vm" {
  description = "(Required) Caching of disk - Virtual Machine"
  default="ReadWrite"
}

variable "sta-disk-vm" {
  description = "(Required) Storage Account Type of disl - Virtual Machine"
  default="Premium_LRS"
}

variable "image-publisher-vm" {
  description = "(Required) Image Publisher SO of Virtual Machine"
  default="Canonical"
}

variable "image-offer-vm" {
  description = "(Required) Image Publisher SO of Virtual Machine"
  default="UbuntuServer"
}

variable "image-sku-vm" {
  description = "(Required) Image Publisher SO of Virtual Machine"
  default="18.04-LTS"
}

variable "image-version-vm" {
  description = "(Required) Image Publisher SO of Virtual Machine"
  default="latest"
}

variable "user-name-vm" {
  description = "(Required) User of Virtual Machine"
  default="azureuser"
}

variable "user-password-vm" {
  description = "(Required) Password of Virtual Machine"
  default="Password1234!"
}

variable "password_authentication-vm" {
  description = "(Required) Password Authentication of Virtual Machine"
  default=false
}

# Network Interface
variable "name-nic" {
  description = "(Required) Name of Network Interface"
  default="edgedevicesim-nic"
}

variable "name-ipconfig-nic" {
  description = "(Required) Ip Configuration of Network Interface"
  default="testconfiguration1"
}

variable "private-ip-allocation-nic" {
  description = "(Required) Private Ip Address Allocation of Network Interface"
  default="Dynamic"
}
