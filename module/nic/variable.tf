variable "name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Name of the Resource Group"
  type        = string
}



variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}

variable "subnet_id" {
  type=string
}
variable "resource_group_name" {
  type=string
}