module "rgdev_module" {
  source   = "../../module/resource_group"
  name     = var.rg_name
  location = var.var_location
  tags     = var.tags
}

module "virtualnetwork_module" {
  source                   = "../../module/vnet"
  vnet_name                = var.vnet_dev_name
  vnet_address_space       = var.vent_dev_adress_space
  vnet_location            = module.rgdev_module.location
  vnet_resource_group_name = module.rgdev_module.name
}

module "frontendSubnet" {
  source               = "../../module/subnet"
  subnet_name          = var.frontendSubnet_subnet
  subnet_prefix        = var.frontendSubnet_adress_prefix
  resource_group_name  = module.rgdev_module.name
  virtual_network_name = module.virtualnetwork_module.name
}

module "backendSubnet" {
  source               = "../../module/subnet"
  subnet_name          = var.backendSubnet_subnet
  subnet_prefix        = var.backendSubnet_adress_prefix
  resource_group_name  = module.rgdev_module.name
  virtual_network_name = module.virtualnetwork_module.name
}

module "databaseSubnet" {
  source               = "../../module/subnet"
  subnet_name          = var.databaseSubnet_subnet
  subnet_prefix        = var.databaseSubnet_adress_prefix
  resource_group_name  = module.rgdev_module.name
  virtual_network_name = module.virtualnetwork_module.name
}

module "applicationgatewaySubnet" {
  source               = "../../module/subnet"
  subnet_name          = var.applicationgatewaySubnet_subnet
  subnet_prefix        = var.applicationgatewaySubnet_adress_prefix
  resource_group_name  = module.rgdev_module.name
  virtual_network_name = module.virtualnetwork_module.name
}

module "keyvault" {
  source ="../../module/key_vault"
  name= var.keyvault_name
  location= module.rgdev_module.location
  resource_group_name= module.rgdev_module.name
  sku_name= var.keyvault_sku
  vm-admin-username=var.username
  vm-admin-password=var.password

}


module "nic" {
  source              = "../../module/nic"
  name            = "dev-nic-01"
  location            = "eastus"
  resource_group_name = module.rgdev_module.name
  subnet_id           = module.frontendSubnet.id
  tags                = var.tags
}

module "vm" {
  source                 = "../../module/vm"
  name                = var.vm_name
  resource_group_name    = module.rgdev_module.name
  location               = module.rgdev_module.location
  size                = var.size
  admin_username         = module.keyvault.vm-admin-username
  admin_password         = module.keyvault.vm-admin-password

  # NIC ID list yahan pass hogi:
  nic_ids  = [module.nic.nic_id]

  # OS disk configuration
  os_disk_caching              = "ReadWrite"
  os_disk_storage_account_type = "Standard_LRS"

  image_publisher = "Canonical"
  image_offer      = "0001-com-ubuntu-server-jammy"
  image_sku        = "22_04-lts"
  image_version    = "latest"

  tags = var.tags
}