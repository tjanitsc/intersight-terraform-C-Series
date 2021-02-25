resource "intersight_server_profile" "server1" {
  name        = "${var.prefix}_profile"
  description = "${var.prefix} Server Profile"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  target_platform = var.sp_target_platform 
  action          = var.sp_action
  assigned_server {
    object_type = "compute.RackUnit"
    selector    = var.server_serial
  }
}
