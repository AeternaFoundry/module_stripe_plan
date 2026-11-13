output "plans_id" {
  description = "Map of id values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.id }
}
output "plans_active" {
  description = "Map of active values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.active }
}
output "plans_amount" {
  description = "Map of amount values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.amount }
}
output "plans_amount_decimal" {
  description = "Map of amount_decimal values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.amount_decimal }
}
output "plans_billing_scheme" {
  description = "Map of billing_scheme values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.billing_scheme }
}
output "plans_created" {
  description = "Map of created values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.created }
}
output "plans_currency" {
  description = "Map of currency values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.currency }
}
output "plans_interval" {
  description = "Map of interval values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.interval }
}
output "plans_interval_count" {
  description = "Map of interval_count values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.interval_count }
}
output "plans_livemode" {
  description = "Map of livemode values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.livemode }
}
output "plans_metadata" {
  description = "Map of metadata values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.metadata }
}
output "plans_meter" {
  description = "Map of meter values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.meter }
}
output "plans_nickname" {
  description = "Map of nickname values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.nickname }
}
output "plans_object" {
  description = "Map of object values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.object }
}
output "plans_product" {
  description = "Map of product values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.product }
}
output "plans_tiers" {
  description = "Map of tiers values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.tiers }
}
output "plans_tiers_mode" {
  description = "Map of tiers_mode values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.tiers_mode }
}
output "plans_transform_usage" {
  description = "Map of transform_usage values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.transform_usage }
}
output "plans_trial_period_days" {
  description = "Map of trial_period_days values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.trial_period_days }
}
output "plans_usage_type" {
  description = "Map of usage_type values across all plans, keyed the same as var.plans"
  value       = { for k, v in stripe_plan.plans : k => v.usage_type }
}

