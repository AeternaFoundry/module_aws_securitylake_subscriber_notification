variable "securitylake_subscriber_notifications" {
  description = <<EOT
Map of securitylake_subscriber_notifications, attributes below
Required:
    - subscriber_id
Optional:
    - region
    - configuration (block):
        - https_notification_configuration (optional, block):
            - authorization_api_key_name (optional)
            - authorization_api_key_value (optional)
            - endpoint (required)
            - http_method (optional)
            - target_role_arn (required)
        - sqs_notification_configuration (optional, block):
EOT

  type = map(object({
    subscriber_id = string
    region        = optional(string)
    configuration = optional(list(object({
      https_notification_configuration = optional(list(object({
        authorization_api_key_name  = optional(string)
        authorization_api_key_value = optional(string)
        endpoint                    = string
        http_method                 = optional(string)
        target_role_arn             = string
      })))
      sqs_notification_configuration = optional(list(object({
      })))
    })))
  }))
}

