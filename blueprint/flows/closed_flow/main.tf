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



resource "genesyscloud_flow" "mysimpleflow3" {
  filepath = "./Closed Hours6.yaml"
  file_content_hash = filesha256("./Closed Hours6.yaml") 
}





