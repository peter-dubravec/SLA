provider "azurerm" {
  features {
  }
  subscription_id = "4bc84661-8ce6-4da1-a5d7-68e7c94f07cc"
  tenant_id       = "3b4ae6e2-737c-4120-acaf-cae2465de9a5"
  client_id       = "059dfc90-3c61-41da-b203-f55e821a4be2"
  client_secret   = var.secret
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

variable "secret" {
  type = string
}

resource "azurerm_resource_group" "name" {
  name     = "rg_from_linux"
  location = "westeurope"
}
