variable "workitems" {
  description = <<EOT
Map of workitems, attributes below
Required:
    - project_id
    - title
    - type
Optional:
    - additional_fields_json
    - area_path
    - custom_fields
    - description
    - iteration_path
    - parent_id
    - state
    - tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id             = string
    title                  = string
    type                   = string
    additional_fields_json = optional(string)
    area_path              = optional(string)
    custom_fields          = optional(map(string))
    description            = optional(string)
    iteration_path         = optional(string)
    parent_id              = optional(number)
    state                  = optional(string)
    tags                   = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        length(trimspace(v.title)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        length(trimspace(v.type)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.state == null || (length(trimspace(v.state)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.custom_fields == null || (alltrue([for x in v.custom_fields : length(trimspace(x)) > 0]))
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.tags == null || (alltrue([for x in v.tags : length(trimspace(x)) > 0]))
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.area_path == null || (length(trimspace(v.area_path)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.iteration_path == null || (length(trimspace(v.iteration_path)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitems : (
        v.parent_id == null || (v.parent_id >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
}

