variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID for Azure Key Vault"
  type        = string
}

variable "object_id" {
  description = "Object ID for Azure Key Vault access policy"
  type        = string
}
