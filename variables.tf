variable "kafka_acls" {
  description = <<EOT
Map of kafka_acls, attributes below
Required:
    - host
    - operation
    - pattern_type
    - permission
    - principal
    - resource_name
    - resource_type
Optional:
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - kafka_cluster (block):
        - id (required)
EOT

  type = map(object({
    host          = string
    operation     = string
    pattern_type  = string
    permission    = string
    principal     = string
    resource_name = string
    resource_type = string
    rest_endpoint = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    kafka_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

