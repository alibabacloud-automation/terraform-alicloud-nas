resource "alicloud_nas_access_rule" "this_access_rule" {
  count             = "${var.create_access_rule ? 1 : 0}"
  access_group_name = "${var.access_group_name}"
  source_cidr_ip    = "${var.source_cidr_ip}"
  rw_access_type    = "${var.rw_access_type}"
  user_access_type  = "${var.user_access_type}"
  priority          = "${var.access_rule_priority}"
}
