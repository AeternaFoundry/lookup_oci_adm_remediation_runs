output "adm_remediation_runs_lookup_id" {
  description = "Map of id values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "adm_remediation_runs_lookup_compartment_id" {
  description = "Map of compartment_id values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "adm_remediation_runs_lookup_display_name" {
  description = "Map of display_name values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "adm_remediation_runs_lookup_filter" {
  description = "Map of filter values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "adm_remediation_runs_lookup_remediation_recipe_id" {
  description = "Map of remediation_recipe_id values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no remediation_recipe_id are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.remediation_recipe_id if v.remediation_recipe_id != null && length(v.remediation_recipe_id) > 0 }
}
output "adm_remediation_runs_lookup_remediation_run_collection" {
  description = "Map of remediation_run_collection values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no remediation_run_collection are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.remediation_run_collection if v.remediation_run_collection != null && length(v.remediation_run_collection) > 0 }
}
output "adm_remediation_runs_lookup_state" {
  description = "Map of state values across all adm_remediation_runs_lookup, keyed the same as var.adm_remediation_runs_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_adm_remediation_runs.adm_remediation_runs_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

