
variable "devRGName" {
  type    = string
  default = ""
}

variable "location" {
  type = string
  description = "Location of AKS"
}

variable "dev-aks-cluster" {
  type    = string
  default = ""  
}

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

variable "os_disk_size_gb" {
  type    = number
  default = 30
}

variable "type" {
  type    = string
  default = "VirtualMachineScaleSets"
}
variable "max_pods" {
  type    = number
  default = 30
}

variable "Enviroenmnet_tag" {
  default = "Dev"
}