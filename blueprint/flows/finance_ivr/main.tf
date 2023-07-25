terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = "aae02681-f58f-4186-9f0b-200ef4a6e1e9"
  oauthclient_secret = "RgeRJaE9DLCNpYIaI07nIR-wHZZoCh4fQYaOXOE8JAw"
  aws_region = "us-east-1"
}

resource "genesyscloud_tf_export" "export" {
  directory          = "./genesyscloud"
  resource_types     = ["genesyscloud_user"]
  include_state_file = true
}






