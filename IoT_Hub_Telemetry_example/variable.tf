variable "resource_group_name" {
  default = "iottelemetry"
}

variable "storage_account_name" {
  default = "iotstga"
}

variable "event_hub_name_space" {
  default = "evhubiot"
}

variable "event_hub_name" {
  default = "iottelemetry"
}

variable "iot_hub_name" {
  default = "iothubtelemetry"
}

variable "location" {
  default = "West Europe"
}

variable "tags" {
  description = "(Required) Tags to be applied to the all services to be created"
  default = { Project = "IoTTelemetry" }
}

