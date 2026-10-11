data "oci_adm_remediation_runs" "adm_remediation_runs_lookup" {
  for_each = var.adm_remediation_runs_lookup

  compartment_id        = each.value.compartment_id
  display_name          = each.value.display_name
  remediation_recipe_id = each.value.remediation_recipe_id
  state                 = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

