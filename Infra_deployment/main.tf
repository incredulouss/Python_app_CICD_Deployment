
provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
  tenant_id                  = var.tenant_id
}

module "resourceGroup" {
  source = "./modules/Resource_group"
  base_name = "example01"
  location = "West Europe"
}

module "vnet" {
  source              = "./modules/Vnet"
  resource_group_name = module.resourceGroup.name
  location            = var.devRGlocation
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  aks_subnet_name     = var.aks_subnet_name
  aks_subnet_prefix   = var.aks_subnet_prefix
  postgresql_subnet_name = var.postgresql_subnet_name
  postgresql_subnet_prefix = var.postgresql_subnet_prefix
}

module "container_registry" {
  source = "./modules/container_registry"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
}

module "storage_account" {
  source              = "./modules/storage_account"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  storage_account_name = var.storage_account_name
}

module "AKS_Cluster" {
  source = "./modules/aks_cluster"
  devRGName = module.resourceGroup.name
  location = var.devRGlocation
  dev-aks-cluster  = var.dev-aks-cluster
  agnet_pool_name  = var.agnet_pool_name
  pool_count       = var.pool_count
  vm_size          = var.vm_size
  os_sku           = var.os_sku
  vnet_subnet_id   = var.vnet_subnet_id
  os_disk_size_gb  = var.os_disk_size_gb
  type             = var.type
  max_pods         = var.max_pods
  Enviroenmnet_tag = var.Enviroenmnet_tag

}

module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  key_vault_name      = var.key_vault_name
  tenant_id           = var.tenant_id
  object_id           = var.object_id
}
