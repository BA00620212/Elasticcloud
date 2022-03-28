provider "kibana" {
    url      = "http://kibana.company.com:5601"
    username = "elasticsearch_username"
    password = "elasticsearch_password"
    insecure = true
}

resource "kibana_role" "reader" {
  name = "reader"

elasticsearch {
    indices {
        names       = ["analytics","observability"]
        privileges  = ["monitor_ml","monitor_text_structure", "monitor_watcher", "read_ccr","monitor_data_frame_transforms", "monitor_snapshot", "read_pipeline", "moniotr_rollup", "read_ilm", "read_slm", "monitor","monitor_transform"]
    }

    cluster = ["all"]
  }

kibana {
      features {
          name          = ["dashboard","discovery","maps","machine_learning","canvas","graph","visualize_library"]
          permissions   = ["read"]
      }
      
      spaces = ["default"]
        }
}


resource "kibana_role" "admin" {
  name = "admin"

  elasticsearch {
    indices {
        names       = ["logs","matrics"]
        privileges  = ["*"]
    }

    cluster = ["all"]
  }

kibana {
      features {
          name          = ["Analyatics","Observability","Security","Managment"]
          permissions   = ["*"]
      }
      
      spaces = ["var.spaces"]
        }
}


