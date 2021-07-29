#Commons
variable "location" {
  description = "(Required) Location of the all services to be created"
  default="westeurope"
}

variable "resource_group_name" {
  description = "(Required) Resource group name of the all services to be created"
  default= "DemoSEG"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "AGW_v2" }
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
  default = ["10.254.0.0/28"]
}

variable "name_subnet_2" {
  description = "(Required) Name of subnets to create."
  default = "frontend"
}

variable "address_space_subnet_2" {
  description = "(Required) Ip Address of subnets to create."
  default = ["10.254.2.0/24"]
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

variable "name-publicip_2" {
  description = "(Required) Name of Public IP"
  default="myPublicIP2"
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
  default="demoagwssta23243"
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

variable "name-vm-2" {
  description = "(Required) Name of Virtual Machine"
  default="demovm2"
}

variable "sku-vm" {
  description = "(Required) Name of Virtual Machine"
  default="Standard_DS1_v2"
}

variable "name-disk-vm" {
  description = "(Required) Name of disk - Virtual Machine"
  default="DemoDeviceDisk"
}

variable "name-disk-vm-2" {
  description = "(Required) Name of disk - Virtual Machine"
  default="DemoDeviceDisk2"
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


variable "name-nic-2" {
  description = "(Required) Name of Network Interface"
  default="edgedevicesim2-nic"
}

variable "name-ipconfig-nic-2" {
  description = "(Required) Ip Configuration of Network Interface"
  default="testconfiguration2"
}

variable "private-ip-allocation-nic-2" {
  description = "(Required) Private Ip Address Allocation of Network Interface"
  default="Dynamic"
}

# Application Gateway
variable "name-agw" {
  description = "(Required) Name of Application Gateway"
  default="myAppGateway"
}

variable "http2-agw" {
  description = "(Required) Enabled Http2 of Application Gateway"
  default="false"
}

variable "sku-name-agw" {
  description = "(Required) Sku Name of Application Gateway"
  default="WAF_v2"
}

variable "sku-tier-agw" {
  description = "(Required) Sku Tier of Application Gateway"
  default="WAF_v2"
}

variable "capacity-agw-min" {
  description = "Min and max capacity for auto scaling of Application Gateway"
  default="0"
}

variable "capacity-agw-max" {
  description = "Max capacity for auto scaling of Application Gateway"
  default="10"
}

variable "ip-config-name-agw" {
  description = "(Required) IP Configuration of Application Gateway"
  default="my-gateway-ip-configuration"
}

variable "frontend-port-name-agw" {
  description = "(Required) Frontend Port Name of Application Gateway"
  default="production-feport"
}

variable "frontend-port-agw" {
  description = "(Required) Frontend Port of Application Gateway"
  default="80"
}

variable "frontend-ip-config-name-agw" {
  description = "(Required) Frontend Ip Configuration Name of Application Gateway"
  default="production-feip"
}

variable "backend-address-pool-name-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="poolBE"
}

variable "backend_http_settings-name-agw" {
  description = "(Required) Backend Http Settings Name of Application Gateway"
  default="production-be-htst"
}

variable "backend_http_settings-cookie-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="Disabled"
}


variable "backend_http_settings-path-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="/path1/"
}

variable "backend_http_settings-port-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="80"
}

variable "backend_http_settings-protocol-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="Http"
}

variable "backend_http_settings-request_timeout-agw" {
  description = "(Required) Backend Address Pool Name of Application Gateway"
  default="60"
}

variable "name-http-listener-agw" {
  description = "(Required) Http Listener Name of Application Gateway"
  default="listenagw"
}

variable "protocol-http-listener-agw" {
  description = "(Required) Http Listener Protocol of Application Gateway"
  default="Http"
}

variable "name-request-routing-rule-agw" {
  description = "(Required) Request Routing Rule Name of Application Gateway"
  default="reqroutingrule"
}

variable "type-request-routing-rule-agw" {
  description = "(Required) Request Routing Rule Type of Application Gateway"
  default="Basic"
}

variable "enabled-waf" {
  description = "(Required) WAF Configuration of Application Gateway"
  default="true"  
}

variable "firewall-mode-waf" {
  description = "(Required) Firewall Mode WAF of Application Gateway"
  default="Prevention"  
}

variable "rule-set-type-waf" {
  description = "(Required) Rule Set Type WAF of Application Gateway"
  default="OWASP"  
}

variable "rule-set-version-waf" {
  description = "(Required) Rule Set Type WAF of Application Gateway"
  default="3.0"
}

variable "file-upload-limit-mb-waf" {
  description = "(Required) Rule Set Type WAF of Application Gateway"
  default="100"
}

variable "max-request-body-size-kb-waf" {
  description = "(Required) Rule Set Type WAF of Application Gateway"
  default="128"
}
