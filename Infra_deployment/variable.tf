variable "subscription_id" {
  type        = string
  description = "subscription Value"
  default     = ""
}
variable "client_id" {
  type        = string
  description = "client_id Value"
  default     = ""
}
variable "client_secret" {
  type        = string
  description = "client_secret Value"
  default     = ""
}

variable "tenant_id" {
  type        = string
  description = "tenant_id"
  default     = ""
}



variable "devRGName" {
  type        = string
  default     = ""
  description = "name of resource group of Dev Enviroenmnet"
}

variable "devRGlocation" {
  type        = string
  default     = ""
  description = "Location of resource group of Dev Enviroenmnet"
}

variable "dev-aks-cluster" {
  type        = string
  default     = ""
  description = "name of aks cluster of Dev Enviroenmnet"
}

variable "acr-name" {
  type        = string
  default     = ""
  description = "name of acr registry of Dev Enviroenmnet"
}
//Agent Pool configuration 
variable "agnet_pool_name" {
  type    = string
  default = "agentpool_dev_westeurope"
}
variable "pool_count" {
  type    = number
  default = 3
}
variable "vm_size" {
  type    = string
  default = "Standard_A2m_v2"
}
variable "os_sku" {
  type    = string
  default = "Ubuntu"
}
variable "vnet_subnet_id" {
  type    = string
  default = ""
}
variable "type" {
  type    = string
  default = "VirtualMachineScaleSets"
}
variable "max_pods" {
  type    = number
  default = 30
}
variable "os_disk_size_gb" {
  type    = number
  default = 30
}
variable "availability_zones" {
  description = "A list of availability zones for the AKS agent pool"
  type        = list(string)
  default     = ["1", "2", "3"]
}

variable "Enviroenmnet_tag" {
  default = "Dev"
}

##### /Vnet #############3

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "myVNet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
  default     = "myAKSSubnet"
}

variable "aks_subnet_prefix" {
  description = "Address prefix for the AKS subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "postgresql_subnet_name" {
  description = "Name of the PostgreSQL subnet"
  type        = string
  default     = "myPostgreSQLSubnet"
}

variable "postgresql_subnet_prefix" {
  description = "Address prefix for the PostgreSQL subnet"
  type        = string
  default     = "10.0.2.0/24"
}


#### ACR ###

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

## Storagr account ###
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}


### Key Vault


variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "object_id" {
  description = "Object ID for Azure Key Vault access policy"
  type        = string
}
