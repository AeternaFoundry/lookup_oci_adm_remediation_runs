variable "adm_remediation_runs_lookup" {
  description = <<EOT
Map of adm_remediation_runs_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - remediation_recipe_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = optional(string)
    display_name          = optional(string)
    remediation_recipe_id = optional(string)
    state                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

