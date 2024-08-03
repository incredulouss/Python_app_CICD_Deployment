terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

resource "random_string" "name" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_kubernetes_cluster" "dev-aks-cluster" {
  name                = "${lower(var.dev-aks-cluster)}${random_string.name.result}"
  location            = var.location
  resource_group_name = var.devRGName
  dns_prefix          = var.dev-aks-cluster

  default_node_pool {
    name       = var.dev-aks-cluster
    node_count = var.pool_count
    vm_size    = var.vm_size
    os_sku     = var.os_sku
    #vnet_subnet_id = "${var.vnet_subnet_id}"
    type = var.type
    #availability_zones = ["1","2","3"]
    max_pods        = var.max_pods
    os_disk_size_gb = var.os_disk_size_gb
  }

  //Kubenet AKS Cluster
  network_profile {
    network_plugin = "kubenet"
    dns_service_ip = "10.2.2.254"
    service_cidr   = "10.2.2.0/24"
    pod_cidr       = "10.244.0.0/16"
  }

  //CNI AKS Cluster
  #   network_profile {
  #   network_plugin = "azure"
  #   service_cidr   = "10.0.0.0/16"
  #   dns_service_ip = "10.0.0.10"
  #   load_balancer_sku = "standard"
  # }

  depends_on = [
    var.devRGName
  ]
  identity {
    type = "SystemAssigned"
  }
  tags = {
    Environment = "${var.Enviroenmnet_tag}"
  }
}