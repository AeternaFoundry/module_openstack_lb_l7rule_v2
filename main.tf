resource "openstack_lb_l7rule_v2" "lb_l7rule_v2s" {
  for_each = var.lb_l7rule_v2s

  compare_type   = each.value.compare_type
  l7policy_id    = each.value.l7policy_id
  type           = each.value.type
  value          = each.value.value
  admin_state_up = each.value.admin_state_up
  invert         = each.value.invert
  key            = each.value.key
  region         = each.value.region
  tenant_id      = each.value.tenant_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

