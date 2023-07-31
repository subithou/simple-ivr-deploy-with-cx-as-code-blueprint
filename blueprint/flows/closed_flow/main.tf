terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = ${{ secrets.GENESYSCLOUD_OAUTHCLIENT_ID }}
  oauthclient_secret = ${{ secrets.GENESYSCLOUD_OAUTHCLIENT_SECRET }}
  aws_region = "us-east-1"
}










