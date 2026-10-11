output "securitylake_subscriber_notifications_id" {
  description = "Map of id values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securitylake_subscriber_notifications_configuration" {
  description = "Map of configuration values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
  sensitive   = true
}
output "securitylake_subscriber_notifications_endpoint_id" {
  description = "Map of endpoint_id values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.endpoint_id if v.endpoint_id != null && length(v.endpoint_id) > 0 }
}
output "securitylake_subscriber_notifications_region" {
  description = "Map of region values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securitylake_subscriber_notifications_subscriber_endpoint" {
  description = "Map of subscriber_endpoint values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.subscriber_endpoint if v.subscriber_endpoint != null && length(v.subscriber_endpoint) > 0 }
}
output "securitylake_subscriber_notifications_subscriber_id" {
  description = "Map of subscriber_id values across all securitylake_subscriber_notifications, keyed the same as var.securitylake_subscriber_notifications"
  value       = { for k, v in aws_securitylake_subscriber_notification.securitylake_subscriber_notifications : k => v.subscriber_id if v.subscriber_id != null && length(v.subscriber_id) > 0 }
}

