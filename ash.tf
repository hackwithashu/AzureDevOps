terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-centralindia"
  location = "Central India"
}


resource "azurerm_resource_group" "rg1" {
  name     = "rg-terraform-centralindia1"
  location = "Central India"
}
