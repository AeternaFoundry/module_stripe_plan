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
  validation {
    condition = alltrue([
      for k, v in var.plans : (
        v.billing_scheme == null || (contains(["per_unit", "tiered"], v.billing_scheme))
      )
    ])
    error_message = "must be one of: \"per_unit\", \"tiered\""
  }
  validation {
    condition = alltrue([
      for k, v in var.plans : (
        contains(["day", "month", "week", "year"], v.interval)
      )
    ])
    error_message = "must be one of: \"day\", \"month\", \"week\", \"year\""
  }
  validation {
    condition = alltrue([
      for k, v in var.plans : (
        v.tiers_mode == null || (contains(["graduated", "volume"], v.tiers_mode))
      )
    ])
    error_message = "must be one of: \"graduated\", \"volume\""
  }
  validation {
    condition = alltrue([
      for k, v in var.plans : (
        v.transform_usage == null || (contains(["down", "up"], v.transform_usage.round))
      )
    ])
    error_message = "must be one of: \"down\", \"up\""
  }
  validation {
    condition = alltrue([
      for k, v in var.plans : (
        v.usage_type == null || (contains(["licensed", "metered"], v.usage_type))
      )
    ])
    error_message = "must be one of: \"licensed\", \"metered\""
  }
}

