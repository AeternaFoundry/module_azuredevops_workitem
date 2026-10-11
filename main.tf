resource "azuredevops_workitem" "workitems" {
  for_each = var.workitems

  project_id             = each.value.project_id
  title                  = each.value.title
  type                   = each.value.type
  additional_fields_json = each.value.additional_fields_json
  area_path              = each.value.area_path
  custom_fields          = each.value.custom_fields
  description            = each.value.description
  iteration_path         = each.value.iteration_path
  parent_id              = each.value.parent_id
  state                  = each.value.state
  tags                   = each.value.tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

