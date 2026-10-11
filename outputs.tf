output "workitems_id" {
  description = "Map of id values across all workitems, keyed the same as var.workitems except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitems_additional_fields_json" {
  description = "Map of additional_fields_json values across all workitems, keyed the same as var.workitems except keys with no additional_fields_json are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.additional_fields_json if v.additional_fields_json != null && length(v.additional_fields_json) > 0 }
}
output "workitems_area_path" {
  description = "Map of area_path values across all workitems, keyed the same as var.workitems except keys with no area_path are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.area_path if v.area_path != null && length(v.area_path) > 0 }
}
output "workitems_custom_fields" {
  description = "Map of custom_fields values across all workitems, keyed the same as var.workitems except keys with no custom_fields are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.custom_fields if v.custom_fields != null && length(v.custom_fields) > 0 }
}
output "workitems_description" {
  description = "Map of description values across all workitems, keyed the same as var.workitems except keys with no description are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workitems_iteration_path" {
  description = "Map of iteration_path values across all workitems, keyed the same as var.workitems except keys with no iteration_path are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.iteration_path if v.iteration_path != null && length(v.iteration_path) > 0 }
}
output "workitems_parent_id" {
  description = "Map of parent_id values across all workitems, keyed the same as var.workitems except keys with no parent_id are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.parent_id if v.parent_id != null }
}
output "workitems_project_id" {
  description = "Map of project_id values across all workitems, keyed the same as var.workitems except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "workitems_relations" {
  description = "Map of relations values across all workitems, keyed the same as var.workitems except keys with no relations are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.relations if v.relations != null && length(v.relations) > 0 }
}
output "workitems_state" {
  description = "Map of state values across all workitems, keyed the same as var.workitems except keys with no state are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.state if v.state != null && length(v.state) > 0 }
}
output "workitems_tags" {
  description = "Map of tags values across all workitems, keyed the same as var.workitems except keys with no tags are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workitems_title" {
  description = "Map of title values across all workitems, keyed the same as var.workitems except keys with no title are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.title if v.title != null && length(v.title) > 0 }
}
output "workitems_type" {
  description = "Map of type values across all workitems, keyed the same as var.workitems except keys with no type are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.type if v.type != null && length(v.type) > 0 }
}
output "workitems_url" {
  description = "Map of url values across all workitems, keyed the same as var.workitems except keys with no url are omitted"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.url if v.url != null && length(v.url) > 0 }
}

