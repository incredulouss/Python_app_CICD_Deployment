variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
}

variable "aks_subnet_prefix" {
  description = "Address prefix for the AKS subnet"
  type        = string
}

variable "postgresql_subnet_name" {
  description = "Name of the PostgreSQL subnet"
  type        = string
}

variable "postgresql_subnet_prefix" {
  description = "Address prefix for the PostgreSQL subnet"
  type        = string
}
