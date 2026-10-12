output "plans_id" {
  description = "Map of id values across all plans, keyed the same as var.plans except keys with no id are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "plans_active" {
  description = "Map of active values across all plans, keyed the same as var.plans except keys with no active are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.active if v.active != null }
}
output "plans_amount" {
  description = "Map of amount values across all plans, keyed the same as var.plans except keys with no amount are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.amount if v.amount != null }
}
output "plans_amount_decimal" {
  description = "Map of amount_decimal values across all plans, keyed the same as var.plans except keys with no amount_decimal are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.amount_decimal if v.amount_decimal != null }
}
output "plans_billing_scheme" {
  description = "Map of billing_scheme values across all plans, keyed the same as var.plans except keys with no billing_scheme are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.billing_scheme if v.billing_scheme != null && length(v.billing_scheme) > 0 }
}
output "plans_created" {
  description = "Map of created values across all plans, keyed the same as var.plans except keys with no created are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.created if v.created != null }
}
output "plans_currency" {
  description = "Map of currency values across all plans, keyed the same as var.plans except keys with no currency are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "plans_interval" {
  description = "Map of interval values across all plans, keyed the same as var.plans except keys with no interval are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.interval if v.interval != null && length(v.interval) > 0 }
}
output "plans_interval_count" {
  description = "Map of interval_count values across all plans, keyed the same as var.plans except keys with no interval_count are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.interval_count if v.interval_count != null }
}
output "plans_livemode" {
  description = "Map of livemode values across all plans, keyed the same as var.plans except keys with no livemode are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.livemode if v.livemode != null }
}
output "plans_metadata" {
  description = "Map of metadata values across all plans, keyed the same as var.plans except keys with no metadata are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "plans_meter" {
  description = "Map of meter values across all plans, keyed the same as var.plans except keys with no meter are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.meter if v.meter != null && length(v.meter) > 0 }
}
output "plans_nickname" {
  description = "Map of nickname values across all plans, keyed the same as var.plans except keys with no nickname are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.nickname if v.nickname != null && length(v.nickname) > 0 }
}
output "plans_object" {
  description = "Map of object values across all plans, keyed the same as var.plans except keys with no object are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.object if v.object != null && length(v.object) > 0 }
}
output "plans_product" {
  description = "Map of product values across all plans, keyed the same as var.plans except keys with no product are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.product if v.product != null && length(v.product) > 0 }
}
output "plans_tiers" {
  description = "Map of tiers values across all plans, keyed the same as var.plans except keys with no tiers are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.tiers if v.tiers != null && length(v.tiers) > 0 }
}
output "plans_tiers_mode" {
  description = "Map of tiers_mode values across all plans, keyed the same as var.plans except keys with no tiers_mode are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.tiers_mode if v.tiers_mode != null && length(v.tiers_mode) > 0 }
}
output "plans_transform_usage" {
  description = "Map of transform_usage values across all plans, keyed the same as var.plans except keys with no transform_usage are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.transform_usage if v.transform_usage != null && length(v.transform_usage) > 0 }
}
output "plans_trial_period_days" {
  description = "Map of trial_period_days values across all plans, keyed the same as var.plans except keys with no trial_period_days are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.trial_period_days if v.trial_period_days != null }
}
output "plans_usage_type" {
  description = "Map of usage_type values across all plans, keyed the same as var.plans except keys with no usage_type are omitted"
  value       = { for k, v in stripe_plan.plans : k => v.usage_type if v.usage_type != null && length(v.usage_type) > 0 }
}

