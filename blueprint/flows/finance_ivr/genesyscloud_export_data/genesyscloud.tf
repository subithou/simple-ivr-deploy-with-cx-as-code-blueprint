terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.17.0"
    }
  }
}

resource "genesyscloud_user" "debopriya_roy2_cognizant_com_1510255342" {
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  acd_auto_answer = false
  email           = "debopriya.roy2@cognizant.com"
  name            = "CIITeam"
  state           = "active"
}

resource "genesyscloud_user" "john_smith_simplefinancial_com_1864029883" {
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  name            = "John Smith"
  title           = "Agent"
  acd_auto_answer = true
  department      = "IRA"
  email           = "john.smith@simplefinancial.com"
  state           = "active"
  addresses {
    phone_numbers {
      type       = "MOBILE"
      media_type = "PHONE"
      number     = "+19205551212"
    }
  }
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "John Smith"
  }
}

resource "genesyscloud_user" "testuser_cognizant_com_397940358" {
  routing_skills {
    proficiency = 0
    skill_id    = "11953f32-940e-40cc-a56e-6ba265bbd7bb"
  }
  routing_skills {
    proficiency = 0
    skill_id    = "449f4845-32bf-47ac-9921-3249b6b351ee"
  }
  routing_skills {
    skill_id    = "6e592972-3fea-483e-a863-c341ab72f850"
    proficiency = 0
  }
  routing_skills {
    proficiency = 0
    skill_id    = "9bc943da-31d8-4812-838a-02de854e72be"
  }
  routing_skills {
    proficiency = 0
    skill_id    = "d1f643cb-0b31-426a-bb66-3b62290f8b4d"
  }
  routing_skills {
    proficiency = 4
    skill_id    = "7ad0ab23-0bbb-4977-97e8-1e9c6b3e2042"
  }
  routing_skills {
    proficiency = 4
    skill_id    = "de032463-302b-4802-895c-23d41748b27b"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "22a99f8c-638b-4f85-869d-40129c2dbdba"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "614e8735-969e-43ca-8626-157e018af988"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "8ec0924d-0e7c-4375-8bd8-ac0cefa7673d"
  }
  addresses {
    phone_numbers {
      type       = "WORK3"
      extension  = "1001"
      media_type = "PHONE"
      number     = "1001"
    }
    phone_numbers {
      extension  = "8104"
      media_type = "PHONE"
      number     = "8104"
      type       = "WORK2"
    }
  }
  division_id = "059b8947-060a-4dce-8713-46a7e7575ffe"
  email       = "testuser@cognizant.com"
  locations {
    location_id = "3dfe3863-0bb3-48c8-b5f9-e5a77f8dc7c5"
  }
  name = "TestUser"
  routing_languages {
    language_id = "4a2f6eee-9425-4caf-86ae-e39faa6d8530"
    proficiency = 5
  }
  routing_languages {
    proficiency = 4
    language_id = "aa3369a3-1975-404c-baf9-0b59b9dac085"
  }
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 5
  }
  routing_utilization {
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "callback", "chat"]
      maximum_capacity          = 2
    }
    message {
      maximum_capacity = 4
      include_non_acd  = false
    }
    call {
      include_non_acd           = true
      interruptible_media_types = ["chat"]
      maximum_capacity          = 1
    }
    callback {
      include_non_acd  = false
      maximum_capacity = 1
    }
    chat {
      maximum_capacity          = 2
      include_non_acd           = false
      interruptible_media_types = ["call", "callback"]
    }
  }
  manager         = "${genesyscloud_user.Prateek_Sethi_cognizant_com_2554108284.id}"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "ed_littleton_cognizant_com_391455941" {
  routing_skills {
    proficiency = 0
    skill_id    = "de2de7c8-3016-46f4-a61a-620c9e09d1ef"
  }
  state = "inactive"
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 0
  }
  acd_auto_answer = false
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  email           = "ed.littleton@cognizant.com"
  name            = "Edward Littleton"
}

resource "genesyscloud_user" "jane_smith_simplefinancial_com_2699486804" {
  state           = "active"
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  acd_auto_answer = true
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "67890"
    employee_type = "Full-time"
    official_name = "Jane Smith"
  }
  name  = "Jane Smith"
  title = "Agent"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+19205551212"
      type       = "MOBILE"
    }
  }
  department = "IRA"
  email      = "jane.smith@simplefinancial.com"
}

resource "genesyscloud_user" "lab_admin_cognizant_com_3646195267" {
  acd_auto_answer = false
  name            = "Lab Admin"
  state           = "active"
  email           = "lab.admin@cognizant.com"
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
}

resource "genesyscloud_user" "Prateek_Sethi_cognizant_com_2554108284" {
  email = "Prateek.Sethi@cognizant.com"
  name  = "John Wick"
  routing_languages {
    language_id = "4a2f6eee-9425-4caf-86ae-e39faa6d8530"
    proficiency = 5
  }
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 3
  }
  state           = "active"
  acd_auto_answer = false
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  addresses {
    phone_numbers {
      extension  = "8102"
      media_type = "PHONE"
      number     = "8102"
      type       = "WORK"
    }
  }
}

resource "genesyscloud_user" "genc2_cognizant_com_1634165076" {
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  email           = "genc2@cognizant.com"
  state           = "active"
  acd_auto_answer = false
  name            = "GenC2"
}

resource "genesyscloud_user" "eps_genesys_com_3149675326" {
  state           = "active"
  acd_auto_answer = false
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 0
  }
  division_id = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  email       = "eps@genesys.com"
  routing_skills {
    proficiency = 0
    skill_id    = "c458fd1e-2938-4c51-b31b-f9eba70d5f27"
  }
  name = "EPS Purecloud Support"
}

resource "genesyscloud_user" "_2043420_cognizant_com_2806130564" {
  division_id = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  state       = "inactive"
  email       = "2043420@cognizant.com"
  name        = "daya"
  routing_languages {
    language_id = "3b6322c2-82f9-4251-a7f4-84df43190a7a"
    proficiency = 3
  }
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 5
  }
  routing_skills {
    proficiency = 3
    skill_id    = "d23ee03c-0bb3-416a-85b6-0110c10102d5"
  }
  routing_skills {
    proficiency = 4
    skill_id    = "979fd54f-521c-4473-a89a-482cdd5700c6"
  }
  routing_skills {
    proficiency = 4
    skill_id    = "984088d8-5dd9-4852-ab8e-62ecdf8523eb"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "0cd4c142-fcca-42f7-8ffe-c1c4f16fe4f1"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "dacb629c-2af3-48ca-b6b1-4e2f76370892"
  }
  acd_auto_answer = false
}

resource "genesyscloud_user" "sreeram_marella_cognizant_com_2000527010" {
  routing_skills {
    proficiency = 5
    skill_id    = "ce5d5e7c-656f-4a4b-9945-440197457063"
  }
  state = "active"
  name  = "Sreeram Marella"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+12012450745"
      type       = "WORK"
    }
  }
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  email           = "sreeram.marella@cognizant.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "mps_genesys_com_3520407462" {
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  state           = "active"
  acd_auto_answer = false
  email           = "mps@genesys.com"
  locations {
    location_id = "3dfe3863-0bb3-48c8-b5f9-e5a77f8dc7c5"
  }
  name = "MPS Purecloud Support"
}

resource "genesyscloud_user" "_2043413_cognizant_com_3012491442" {
  email       = "2043413@cognizant.com"
  state       = "inactive"
  division_id = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  routing_languages {
    language_id = "a11faf5b-4e10-4cc6-8ba9-95cdee765351"
    proficiency = 3
  }
  routing_languages {
    language_id = "a505cba7-8e45-4224-860c-85e60e55202c"
    proficiency = 5
  }
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 4
  }
  acd_auto_answer = false
  routing_skills {
    proficiency = 3
    skill_id    = "614e8735-969e-43ca-8626-157e018af988"
  }
  routing_skills {
    skill_id    = "939fb5ee-6078-46b8-b258-3cca0eb38249"
    proficiency = 4
  }
  name = "Niveditha"
}

resource "genesyscloud_user" "genc3_cognizant_com_1608991749" {
  routing_languages {
    language_id = "3b6322c2-82f9-4251-a7f4-84df43190a7a"
    proficiency = 4
  }
  routing_languages {
    language_id = "a11faf5b-4e10-4cc6-8ba9-95cdee765351"
    proficiency = 3
  }
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 5
  }
  acd_auto_answer = false
  email           = "genc3@cognizant.com"
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+12015550123"
      type       = "WORK2"
    }
    phone_numbers {
      type       = "WORK3"
      extension  = "8107"
      media_type = "PHONE"
      number     = "8107"
    }
  }
  name = "GenC3"
  routing_skills {
    skill_id    = "54bea895-0360-45b0-bfaa-5d70689c0aae"
    proficiency = 4
  }
  routing_skills {
    proficiency = 5
    skill_id    = "e2af6862-082e-41e7-9f11-fbf6220dff5d"
  }
  state = "active"
}

resource "genesyscloud_user" "integration-generic-a03293c0-945d-11ea-a64c-ebeb45b9d295_webhook_com_4272434661" {
  name  = "Generic"
  email = "integration-generic-a03293c0-945d-11ea-a64c-ebeb45b9d295@webhook.com"
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 0
  }
  routing_skills {
    proficiency = 0
    skill_id    = "ec88ee12-9986-4e05-9007-136069120aa4"
  }
  state           = "active"
  acd_auto_answer = false
  division_id     = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
}

resource "genesyscloud_user" "genc1_cognizant_com_2857100879" {
  routing_languages {
    language_id = "cdc2f828-03b2-465c-8e1c-61e944a7be9e"
    proficiency = 4
  }
  routing_skills {
    proficiency = 0
    skill_id    = "28db7598-53ab-45a0-8804-e55cffc02785"
  }
  routing_skills {
    proficiency = 5
    skill_id    = "61f2ba58-0b65-40eb-bd74-8037f3b3e57b"
  }
  state           = "active"
  acd_auto_answer = false
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+157145"
      type       = "HOME"
    }
  }
  name        = "GenC1"
  division_id = "36852a81-ad7f-4c71-a1cd-7f431c05179f"
  email       = "genc1@cognizant.com"
}

