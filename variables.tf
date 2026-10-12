variable "plans" {
  description = <<EOT
Map of plans, attributes below
Required:
    - currency
    - interval
Optional:
    - active
    - amount
    - amount_decimal
    - billing_scheme
    - interval_count
    - metadata
    - meter
    - nickname
    - product
    - tiers
    - tiers_mode
    - transform_usage
    - trial_period_days
    - usage_type
EOT

  type = map(object({
    currency       = string
    interval       = string
    active         = optional(bool)
    amount         = optional(number)
    amount_decimal = optional(number)
    billing_scheme = optional(string)
    interval_count = optional(number)
    metadata       = optional(map(string))
    meter          = optional(string)
    nickname       = optional(string)
    product        = optional(string)
    tiers = optional(list(object({
      flat_amount         = optional(number)
      flat_amount_decimal = optional(number)
      unit_amount         = optional(number)
      unit_amount_decimal = optional(number)
      up_to               = number
    })))
    tiers_mode = optional(string)
    transform_usage = optional(object({
      divide_by = number
      round     = string
    }))
    trial_period_days = optional(number)
    usage_type        = optional(string)
  }))
}

