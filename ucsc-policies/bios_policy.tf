resource "intersight_bios_policy" "bios_policy" {
  name        = "${var.prefix}_bios_policy"
  description = "${var.prefix} BIOS Policy"
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
  cpu_power_management = "performance"
  serial_port_aenable  = "enabled"
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
