resource "google_discovery_engine_license_config" "discovery_engine_license_configs" {
  for_each = var.discovery_engine_license_configs

  license_config_id     = each.value.license_config_id
  license_count         = each.value.license_count
  location              = each.value.location
  subscription_term     = each.value.subscription_term
  subscription_tier     = each.value.subscription_tier
  auto_renew            = each.value.auto_renew
  free_trial            = each.value.free_trial
  last_user_update_time = each.value.last_user_update_time
  project               = each.value.project

  start_date {
    day   = each.value.start_date.day
    month = each.value.start_date.month
    year  = each.value.start_date.year
  }

  dynamic "end_date" {
    for_each = each.value.end_date != null ? [each.value.end_date] : []
    content {
      day   = end_date.value.day
      month = end_date.value.month
      year  = end_date.value.year
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

