data "oci_containerengine_pod_shapes" "containerengine_pod_shapes_lookup" {
  for_each = var.containerengine_pod_shapes_lookup

  compartment_id      = each.value.compartment_id
  availability_domain = each.value.availability_domain
  name                = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

