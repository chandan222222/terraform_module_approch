variable "rg_name" {
    type=string

}
variable "vm_name" {
    type=string
}
variable "size" {
    type=string
}
# var for location
variable "var_location" {
    type=string
}
variable "keyvault_name" {
    type=string
}
variable "keyvault_sku" {
    type=string
}

variable "tags" {
  type = map(string)
}
variable "username" {
    type=string
}
variable "password" {
    type=string
}   
variable "vnet_dev_name" {
    type=string
}
variable "vent_dev_adress_space" {
    type=list(string)
}
#above code variable for rg and vnet
variable "frontendSubnet_adress_prefix" {
    type=string
}
variable "frontendSubnet_subnet" {
    type=string
}

variable "backendSubnet_adress_prefix" {
    type=string
}

variable "backendSubnet_subnet" {
    type=string
}

variable "databaseSubnet_subnet" {
    type=string
}

variable "databaseSubnet_adress_prefix" {
    type=string
}

variable "applicationgatewaySubnet_subnet" {
    type=string
}

variable "applicationgatewaySubnet_adress_prefix" {
    type=string
}
variable "nic_name1" {
    type=string
}
variable "location1" {
    type=string
}