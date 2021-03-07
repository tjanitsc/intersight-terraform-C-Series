resource "intersight_vnic_san_connectivity_policy" "vnic_san_connectivity_policy" {
  name        = "${var.prefix}_san_conn_policy"
  description = "${var.prefix} SAN Connectivity Policy"
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
  target_platform = var.vnic_san_conn_target_platform
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
