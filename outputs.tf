output "kafka_acls_id" {
  description = "Map of id values across all kafka_acls, keyed the same as var.kafka_acls except keys with no id are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kafka_acls_credentials" {
  description = "Map of credentials values across all kafka_acls, keyed the same as var.kafka_acls except keys with no credentials are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "kafka_acls_host" {
  description = "Map of host values across all kafka_acls, keyed the same as var.kafka_acls except keys with no host are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.host if v.host != null && length(v.host) > 0 }
}
output "kafka_acls_kafka_cluster" {
  description = "Map of kafka_cluster values across all kafka_acls, keyed the same as var.kafka_acls except keys with no kafka_cluster are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "kafka_acls_operation" {
  description = "Map of operation values across all kafka_acls, keyed the same as var.kafka_acls except keys with no operation are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.operation if v.operation != null && length(v.operation) > 0 }
}
output "kafka_acls_pattern_type" {
  description = "Map of pattern_type values across all kafka_acls, keyed the same as var.kafka_acls except keys with no pattern_type are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.pattern_type if v.pattern_type != null && length(v.pattern_type) > 0 }
}
output "kafka_acls_permission" {
  description = "Map of permission values across all kafka_acls, keyed the same as var.kafka_acls except keys with no permission are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.permission if v.permission != null && length(v.permission) > 0 }
}
output "kafka_acls_principal" {
  description = "Map of principal values across all kafka_acls, keyed the same as var.kafka_acls except keys with no principal are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "kafka_acls_resource_name" {
  description = "Map of resource_name values across all kafka_acls, keyed the same as var.kafka_acls except keys with no resource_name are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}
output "kafka_acls_resource_type" {
  description = "Map of resource_type values across all kafka_acls, keyed the same as var.kafka_acls except keys with no resource_type are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "kafka_acls_rest_endpoint" {
  description = "Map of rest_endpoint values across all kafka_acls, keyed the same as var.kafka_acls except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_kafka_acl.kafka_acls : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}

