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

resource "genesyscloud_flow" "mysimpleflow3" {
  filepath = "./Closed Hours6.yaml"
  file_content_hash = filesha256("./Closed Hours6.yaml") 
}









