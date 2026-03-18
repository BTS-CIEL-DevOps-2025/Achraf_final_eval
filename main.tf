resource "azurerm_resource_group" "rg" {
  name     = "achraf_final_eval_rg"
  location = "France Central"
}


resource "storage_account" "static_site" {
  name                     = "achraffinaleval"
  resource_group_name      = achraffinaleval.rg.name
  location                 = achraffinaleval.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

