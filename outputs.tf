output "workitems_id" {
  description = "Map of id values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.id }
}
output "workitems_additional_fields_json" {
  description = "Map of additional_fields_json values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.additional_fields_json }
}
output "workitems_area_path" {
  description = "Map of area_path values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.area_path }
}
output "workitems_custom_fields" {
  description = "Map of custom_fields values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.custom_fields }
}
output "workitems_description" {
  description = "Map of description values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.description }
}
output "workitems_iteration_path" {
  description = "Map of iteration_path values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.iteration_path }
}
output "workitems_parent_id" {
  description = "Map of parent_id values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.parent_id }
}
output "workitems_project_id" {
  description = "Map of project_id values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.project_id }
}
output "workitems_relations" {
  description = "Map of relations values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.relations }
}
output "workitems_state" {
  description = "Map of state values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.state }
}
output "workitems_tags" {
  description = "Map of tags values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.tags }
}
output "workitems_title" {
  description = "Map of title values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.title }
}
output "workitems_type" {
  description = "Map of type values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.type }
}
output "workitems_url" {
  description = "Map of url values across all workitems, keyed the same as var.workitems"
  value       = { for k, v in azuredevops_workitem.workitems : k => v.url }
}

