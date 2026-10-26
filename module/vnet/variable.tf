variable "vnet_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "vnet_address_space" {
  description = "Azure region"
  type        = list(string)
}

variable "vnet_location" {
  type        = string
}

variable "vnet_resource_group_name" {
  type        = string
}