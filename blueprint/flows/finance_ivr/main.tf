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


resource "genesyscloud_user" "sf_johnsmith" {
  email           = "john.smith@simplefinancial.com"
  name            = "John Smith"
  password        = "b@Zinga1972"
  state           = "active"
  department      = "IRA"
  title           = "Agent"
  acd_auto_answer = true
  addresses {

    phone_numbers {
      number     = "+19205551212"
      media_type = "PHONE"
      type       = "MOBILE"
    }
  }
  employer_info {
    official_name = "John Smith"
    employee_id   = "12345"
    employee_type = "Full-time"
    date_hire     = "2021-03-18"
  }

  lifecycle {
    prevent_destroy = false
  }
}




