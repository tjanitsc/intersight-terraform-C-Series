resource "intersight_vnic_lan_connectivity_policy" "vnic_lan_conn_policy" {
  name        = "${var.prefix}_vnic_lan_conn_policy"
  description = "${var.prefix} VNIC LAN Conn Policy"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  target_platform = var.vnic_lan_conn_target_platform
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
