
resource "azurerm_resource_group" "state_rg" {
  name     = "rg4"
  location = "East US"
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "laxmitfstate20261014"
  resource_group_name      = azurerm_resource_group.state_rg.name
  location                 = azurerm_resource_group.state_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}
