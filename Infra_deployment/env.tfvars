subscription_id = "cab55b56-b5a7-4443-a247-e79699aad39a"
client_id       = "XXXX.XXXX.XXXX.XXXX"
client_secret   = "XXXX.XXXX.XXXX.XXXX"
tenant_id       = "d043ce72-ba03-4c71-9752-8182ccd05df9"

devRGName       = "Rg_dev"
devRGlocation   = "West Europe"
dev-aks-cluster = "aksdev"
acr-name        = "devreg"
//Agent Pool configuration 
agnet_pool_name = "agentpool_dev_westeurope"
pool_count      = 1
vm_size         = "Standard_B1s"
os_sku          = "Ubuntu"
#vnet_subnet_id  = "xxxxxxxxxx"
type = "VirtualMachineScaleSets"
#availability_zones = ["1","2","3"]
max_pods        = 30
os_disk_size_gb = 30

Enviroenmnet_tag = "uat"

## Vnet ####
vnet_name = "Test"
vnet_address_space =  ["10.0.0.0/16"]
subnet_name = "myAKSSubnet"
aks_subnet_prefix = "10.0.1.0/24"
##### ACR #############3

location = "West Europe"
acr_name = "myacr"

resource_group_name = "Rg_dev"


## Storagr account ###
storage_account_name = "mystorage"



### KeyVault #####
key_vault_name = "mykeyvault"

object_id = "mykeyvaultobjectid"


