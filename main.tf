resource "stripe_plan" "plans" {
  for_each = var.plans

  currency          = each.value.currency
  interval          = each.value.interval
  active            = each.value.active
  amount            = each.value.amount
  amount_decimal    = each.value.amount_decimal
  billing_scheme    = each.value.billing_scheme
  interval_count    = each.value.interval_count
  metadata          = each.value.metadata
  meter             = each.value.meter
  nickname          = each.value.nickname
  product           = each.value.product
  tiers             = each.value.tiers
  tiers_mode        = each.value.tiers_mode
  transform_usage   = each.value.transform_usage
  trial_period_days = each.value.trial_period_days
  usage_type        = each.value.usage_type
}

