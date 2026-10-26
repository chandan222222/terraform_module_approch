variable "name"            { type = string }
#variable "vm_name"             { type = string }
variable "location"            { type = string }
variable "resource_group_name" { type = string }
#variable "subnet_id"           { type = string }
variable "size"             { type = string }
variable "admin_username"      { type = string }
variable "admin_password"      { type = string }
#variable "key_vault_id"        { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}
variable "image_publisher" {
  type=string
}
variable "image_offer" {
  type=string
}
variable "image_sku" {
  type=string
}
variable "image_version" {
  type=string
}
variable "os_disk_caching" {
  type=string
}
variable "os_disk_storage_account_type" {
  type=string

}

variable "nic_ids" {
  type        = list(string)
  description = "List of Network Interface IDs to attach to the VM"
}