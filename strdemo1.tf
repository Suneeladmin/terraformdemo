terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "7fa0bb00-b033-48d9-9361-1465f0634425"
    tenant_id = "f53b8e10-affd-4a46-bf97-570764f0721e"
    client_id = "65dcf84b-efbc-4a1a-b70c-d729c07300e7"
    client_secret = "VXi8Q~OzYC0AwRFxxwNLVYmQRz9hLuvNM_v_oap-"
    features {}
    }
resource "azurerm_resource_group" "Terraformdemo" {
    name = "Terraformdemo"
    location = "eastus"
}
resource "azurerm_storage_account" "ertyuffgdfgh" {
    name = "ertyuffgdfgh"
    resource_group_name = "Terraformdemo"
    location = "eastus" 
    account_tier = "Standard"
    account_replication_type = "LRS"
    account_kind = "StorageV2"
}
resource "azurerm_storage_container" "data" {
    name = "data"
    storage_account_name = "ertyuffgdfgh"
    container_access_type = "blob"
}
