resource "genesyscloud_flow" "mysimpleflow3" {
  filepath = "./Closed Hours6.yaml"
  file_content_hash = filesha256("./Closed Hours6.yaml") 
}
