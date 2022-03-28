variable "disabled_features" {
  description = "disabled_features"
  type        = list(string)
  default = {}
}

variable "uid" {
  description = "space u-id "
  type        = any
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "color" {
  description = "A mapping of tags to assign to the resource"
  type        = number
  default     = "#000000"
}

variable "kibana_version" {
  description = "Which version of Kibana to install"
  type = string
}