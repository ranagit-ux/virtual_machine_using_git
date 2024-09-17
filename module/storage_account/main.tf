resource "azurerm_storage_account" "storagegit" {
  for_each                 = var.gitstorage
  name                     = each.value.name
  location                 = each.value.location
  account_replication_type = each.value.account_replication_type
  account_tier              = each.value.account_tier
  resource_group_name      = each.value.resource_group_name

}
