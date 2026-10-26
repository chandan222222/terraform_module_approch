variable "name"                { type = string }
variable "location"            { type = string }
variable "resource_group_name" { type = string }
variable "vm-admin-username" {
  type = string
  sensitive = true
}
variable "vm-admin-password" {
  type = string
  sensitive = true
}
variable "tags" {
  type    = map(string)
  default = {}
}
variable "sku_name" {
  type = string
}