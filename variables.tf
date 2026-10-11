variable "lb_l7rule_v2s" {
  description = <<EOT
Map of lb_l7rule_v2s, attributes below
Required:
    - compare_type
    - l7policy_id
    - type
    - value
Optional:
    - admin_state_up
    - invert
    - key
    - region
    - tenant_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compare_type   = string
    l7policy_id    = string
    type           = string
    value          = string
    admin_state_up = optional(bool)
    invert         = optional(bool)
    key            = optional(string)
    region         = optional(string)
    tenant_id      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_l7rule_v2s : (
        contains([for v in ["COOKIE", "FILE_TYPE", "HEADER", "HOST_NAME", "PATH", "SSL_CONN_HAS_CERT", "SSL_VERIFY_RESULT", "SSL_DN_FIELD"] : lower(v)], lower(v.type))
      )
    ])
    error_message = "must be one of: \"COOKIE\", \"FILE_TYPE\", \"HEADER\", \"HOST_NAME\", \"PATH\", \"SSL_CONN_HAS_CERT\", \"SSL_VERIFY_RESULT\", \"SSL_DN_FIELD\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_l7rule_v2s : (
        contains([for v in ["CONTAINS", "STARTS_WITH", "ENDS_WITH", "EQUAL_TO", "REGEX"] : lower(v)], lower(v.compare_type))
      )
    ])
    error_message = "must be one of: \"CONTAINS\", \"STARTS_WITH\", \"ENDS_WITH\", \"EQUAL_TO\", \"REGEX\""
  }
}

