provider "kibana" {
    url      = "http://kibana.company.com:5601"
    username = "elasticsearch_username"
    password = "elasticsearch_password"
    insecure = true
}


#Kibanna Space creation
resource kibana_user_space "test-space" {
  uid                 = "var.uid"
  name                = "$(group_name)-space"
  description         = "test space"
  initials = "TT"
  color = var.color
  disabled_features = var.disabled_features
  }




