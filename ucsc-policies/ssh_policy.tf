resource "intersight_ssh_policy" "ssh_policy" {
  name        = "${var.prefix}_ssh_policy"
  description = "${var.prefix} SSH Policy"
  organization {
    object_type = "organization.Organization"
    # moid        = var.org_moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  enabled = var.ssh_enabled # bool, true
  port    = var.ssh_port    # number, range: 1-65535 
  timeout = var.ssh_timeout # range 60-10800 
  profiles {
    moid        = intersight_server_profile.server1.id
    object_type = "server.Profile"
  }
}
