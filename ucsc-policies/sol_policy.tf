resource "intersight_sol_policy" "sol_policy" {
  name        = "${var.prefix}_sol_policy"
  description = "${var.prefix} SOL Policy"
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
  enabled   = var.sol_enabled
  com_port  = var.sol_com_port
  baud_rate = var.sol_baud_rate
  ssh_port  = var.sol_ssh_port
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
