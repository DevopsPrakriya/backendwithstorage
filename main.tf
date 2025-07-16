resource "azurerm_resource_group" "rg1" {
    name     = "arsrg1"
    location = "West Europe"
  
}

resource "azurerm_resource_group" "rg2" {
    name     = "arsrg2"
    location = "West Europe"
  
}

resource "azurerm_storage_account" "storage1" {
    name                     = "b35arsstorage1"
    resource_group_name      = azurerm_resource_group.rg1.name
    location                 = azurerm_resource_group.rg1.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_account" "storage2" {
    name                     = "b35arsstorage2"
    resource_group_name      = azurerm_resource_group.rg2.name
    location                 = azurerm_resource_group.rg2.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_account" "storage3" {
    name                     = "b35arsstorage3"
    resource_group_name      = azurerm_resource_group.rg2.name
    location                 = azurerm_resource_group.rg2.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_account" "storage4" {
    name                     = "b35arsstorage4"
    resource_group_name      = azurerm_resource_group.rg2.name
    location                 = azurerm_resource_group.rg2.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

# resource "azurerm_storage_account" "storage5" {
#     name                     = "b35arsstorage5"
#     resource_group_name      = azurerm_resource_group.rg2.name
#     location                 = azurerm_resource_group.rg2.location
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
# }