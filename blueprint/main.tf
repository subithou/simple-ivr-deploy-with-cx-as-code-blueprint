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
}

resource "genesyscloud_user" "sf_janesmith" {
  email           = "jane.smith@simplefinancial.com"
  name            = "Jane Smith"
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
    official_name = "Jane Smith"
    employee_id   = "67890"
    employee_type = "Full-time"
    date_hire     = "2021-03-18"
  }
}

resource "genesyscloud_routing_queue" "queue_ira" {
  name                     = "Simple Financial IRA queue"
  description              = "Simple Financial IRA questions and answers"
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  acw_timeout_ms           = 300000
  skill_evaluation_method  = "BEST"
  auto_answer_only         = true
  enable_transcription     = true
  enable_manual_assignment = true

  members {
    user_id  = genesyscloud_user.sf_johnsmith.id
    ring_num = 1
  }
}

resource "genesyscloud_routing_queue" "queue_K401" {
  name                     = "Simple Financial 401K queue"
  description              = "Simple Financial 401K questions and answers"
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  acw_timeout_ms           = 300000
  skill_evaluation_method  = "BEST"
  auto_answer_only         = true
  enable_transcription     = true
  enable_manual_assignment = true
  members {
    user_id  = genesyscloud_user.sf_johnsmith.id
    ring_num = 1
  }

  members {
    user_id  = genesyscloud_user.sf_janesmith.id
    ring_num = 1
  }
}

resource "genesyscloud_flow" "mysimpleflow" {
  filepath = "./SimpleFinancialIvr_v2-0.yaml"
  file_content_hash = filesha256("./SimpleFinancialIvr_v2-0.yaml") 
}

resource "genesyscloud_flow" "mysimpleflow1" {
  filepath = "./Customer support with CRM Script_v1-0.yaml"
  file_content_hash = filesha256("./Customer support with CRM Script_v1-0.yaml") 
}
resource "genesyscloud_flow" "mysimpleflow3" {
  filepath = "./ivr_implementation3_v2-0.yaml"
  file_content_hash = filesha256("./ivr_implementation3_v2-0.yaml") 
}

resource "genesyscloud_flow" "mysimpleflow4" {
  filepath = "./Holiday2.yaml"
  file_content_hash = filesha256("./Holiday2.yaml") 
}


resource "genesyscloud_telephony_providers_edges_did_pool" "mygcv_number" {
  start_phone_number = "+19205422729"
  end_phone_number   = "+19205422729"
  description        = "GCV Number for inbound calls"
  comments           = "Additional comments"
}

resource "genesyscloud_architect_ivr" "mysimple_ivr" {
  name               = "A simple IVR"
  description        = "A sample IVR configuration"
  dnis               = ["+19205422729", "+19205422729"]
  open_hours_flow_id = genesyscloud_flow.mysimpleflow.id
  depends_on         = [
    genesyscloud_flow.mysimpleflow,
    genesyscloud_telephony_providers_edges_did_pool.mygcv_number
  ]
}

