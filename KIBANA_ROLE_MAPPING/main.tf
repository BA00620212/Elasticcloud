provider "kibana" {
    url      = "http://kibana.company.com:5601"
    username = "elasticsearch_username"
    password = "elasticsearch_password"
    insecure = true
}

resource "kibana_role_mapping" "kibanna_reader_role_mapping" {
    role_mapping_name = var.role_mapping
    enabled = var.enabled
    roles = [
        kibana_role.reader.name,kibana_role.admin.name
    ]
  
}