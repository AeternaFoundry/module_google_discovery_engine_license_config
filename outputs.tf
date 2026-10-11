output "discovery_engine_license_configs_id" {
  description = "Map of id values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_license_configs_auto_renew" {
  description = "Map of auto_renew values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no auto_renew are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.auto_renew if v.auto_renew != null }
}
output "discovery_engine_license_configs_end_date" {
  description = "Map of end_date values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no end_date are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => one(v.end_date) if v.end_date != null && length(v.end_date) > 0 }
}
output "discovery_engine_license_configs_free_trial" {
  description = "Map of free_trial values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no free_trial are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.free_trial if v.free_trial != null }
}
output "discovery_engine_license_configs_last_user_update_time" {
  description = "Map of last_user_update_time values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no last_user_update_time are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.last_user_update_time if v.last_user_update_time != null && length(v.last_user_update_time) > 0 }
}
output "discovery_engine_license_configs_license_config_id" {
  description = "Map of license_config_id values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no license_config_id are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.license_config_id if v.license_config_id != null && length(v.license_config_id) > 0 }
}
output "discovery_engine_license_configs_license_count" {
  description = "Map of license_count values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no license_count are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.license_count if v.license_count != null }
}
output "discovery_engine_license_configs_location" {
  description = "Map of location values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_license_configs_name" {
  description = "Map of name values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_license_configs_project" {
  description = "Map of project values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_license_configs_start_date" {
  description = "Map of start_date values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no start_date are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => one(v.start_date) if v.start_date != null && length(v.start_date) > 0 }
}
output "discovery_engine_license_configs_subscription_term" {
  description = "Map of subscription_term values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no subscription_term are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.subscription_term if v.subscription_term != null && length(v.subscription_term) > 0 }
}
output "discovery_engine_license_configs_subscription_tier" {
  description = "Map of subscription_tier values across all discovery_engine_license_configs, keyed the same as var.discovery_engine_license_configs except keys with no subscription_tier are omitted"
  value       = { for k, v in google_discovery_engine_license_config.discovery_engine_license_configs : k => v.subscription_tier if v.subscription_tier != null && length(v.subscription_tier) > 0 }
}

