resource "confluent_kafka_acl" "kafka_acls" {
  for_each = var.kafka_acls

  host          = each.value.host
  operation     = each.value.operation
  pattern_type  = each.value.pattern_type
  permission    = each.value.permission
  principal     = each.value.principal
  resource_name = each.value.resource_name
  resource_type = each.value.resource_type
  rest_endpoint = each.value.rest_endpoint

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "kafka_cluster" {
    for_each = each.value.kafka_cluster != null ? [each.value.kafka_cluster] : []
    content {
      id = kafka_cluster.value.id
    }
  }
}

