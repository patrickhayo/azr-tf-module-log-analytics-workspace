resource "azurerm_resource_group" "this" {
  name     = uuid()
  location = "westeurope"
}

module "log" {
  source              = "./module"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  name                = "log-example"
  sku                 = "PerGB2018"
}
