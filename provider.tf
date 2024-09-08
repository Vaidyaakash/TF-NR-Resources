terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.42.3"
    }
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
  cloud {
    organization = "APV_testing"
    workspaces {
      name = "remote_backend"
    }
  }
}

provider "newrelic" {
  account_id = 3627541
  api_key    = var.api_key # usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}