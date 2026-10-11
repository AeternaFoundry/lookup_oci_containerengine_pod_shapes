variable "containerengine_pod_shapes_lookup" {
  description = <<EOT
Map of containerengine_pod_shapes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    availability_domain = optional(string)
    name                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

