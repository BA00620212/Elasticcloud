variable "role_mapping" {
  description = "role mapping"
  type        = any
  default     = "kibana_role_mapping"
}

variable "enables" {
  description = "mapping enable"
  type        = string
  default     = "true"
}