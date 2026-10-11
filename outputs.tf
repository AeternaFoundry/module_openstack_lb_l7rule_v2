output "lb_l7rule_v2s_id" {
  description = "Map of id values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_l7rule_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no admin_state_up are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.admin_state_up if v.admin_state_up != null }
}
output "lb_l7rule_v2s_compare_type" {
  description = "Map of compare_type values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no compare_type are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.compare_type if v.compare_type != null && length(v.compare_type) > 0 }
}
output "lb_l7rule_v2s_invert" {
  description = "Map of invert values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no invert are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.invert if v.invert != null }
}
output "lb_l7rule_v2s_key" {
  description = "Map of key values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no key are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.key if v.key != null && length(v.key) > 0 }
}
output "lb_l7rule_v2s_l7policy_id" {
  description = "Map of l7policy_id values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no l7policy_id are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.l7policy_id if v.l7policy_id != null && length(v.l7policy_id) > 0 }
}
output "lb_l7rule_v2s_listener_id" {
  description = "Map of listener_id values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no listener_id are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.listener_id if v.listener_id != null && length(v.listener_id) > 0 }
}
output "lb_l7rule_v2s_region" {
  description = "Map of region values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lb_l7rule_v2s_tenant_id" {
  description = "Map of tenant_id values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no tenant_id are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "lb_l7rule_v2s_type" {
  description = "Map of type values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no type are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.type if v.type != null && length(v.type) > 0 }
}
output "lb_l7rule_v2s_value" {
  description = "Map of value values across all lb_l7rule_v2s, keyed the same as var.lb_l7rule_v2s except keys with no value are omitted"
  value       = { for k, v in openstack_lb_l7rule_v2.lb_l7rule_v2s : k => v.value if v.value != null && length(v.value) > 0 }
}

