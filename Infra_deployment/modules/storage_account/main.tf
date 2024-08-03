resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"  # Can be Standard or Premium
  account_replication_type = "LRS"       # Can be LRS, GRS, RAGRS, ZRS, etc.
  
}

output "storage_account_id" {
  value = azurerm_storage_account.main.id
}

output "storage_account_primary_blob_endpoint" {
  value = azurerm_storage_account.main.primary_blob_endpoint
}

output "storage_account_primary_container" {
  value = azurerm_storage_account.main.primary_blob_endpoint
}
