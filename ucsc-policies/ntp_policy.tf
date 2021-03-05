resource "intersight_ntp_policy" "ntp_policy" {
  name        = "${var.prefix}_ntp_policy"
  description = "${var.prefix} NTP Policy"
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
  enabled = var.ntp_policy_enabled
  ntp_servers = [
    var.ntp_server_1,
    var.ntp_server_2,
    var.ntp_server_3,
    var.ntp_server_4
  ]
  timezone = var.ntp_policy_timezone
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
