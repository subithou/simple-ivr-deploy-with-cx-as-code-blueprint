terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = "94a34097-24d0-4ba9-b6aa-66afa52870c1"
  oauthclient_secret = "Vy62YXuW8NFM8bMxeVhDR5dzgv_XOiad2_nu2PPkC5Q"
  aws_region = "us-east-1"
}

resource "genesyscloud_tf_export" "export" {
  directory          = "./export"
  resource_types     = ["genesyscloud_user"]
  include_state_file = true
  export_as_hcl = true
}









