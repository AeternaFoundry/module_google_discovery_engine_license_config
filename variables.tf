variable "discovery_engine_license_configs" {
  description = <<EOT
Map of discovery_engine_license_configs, attributes below
Required:
    - license_config_id
    - license_count
    - location
    - subscription_term
    - subscription_tier
    - start_date (block):
        - day (optional)
        - month (optional)
        - year (optional)
Optional:
    - auto_renew
    - free_trial
    - last_user_update_time
    - project
    - end_date (block):
        - day (optional)
        - month (optional)
        - year (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    license_config_id     = string
    license_count         = number
    location              = string
    subscription_term     = string
    subscription_tier     = string
    auto_renew            = optional(bool)
    free_trial            = optional(bool)
    last_user_update_time = optional(string)
    project               = optional(string)
    start_date = object({
      day   = optional(number)
      month = optional(number)
      year  = optional(number)
    })
    end_date = optional(object({
      day   = optional(number)
      month = optional(number)
      year  = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

