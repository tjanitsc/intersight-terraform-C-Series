resource "intersight_snmp_policy" "snmp_policy" {
  name        = "${var.prefix}_snmp_policy"
  description = "${var.prefix} SNMP Policy"
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
  enabled = var.snmp_enabled
  #snmp_port               = var.snmp_port   
  snmp_port               = var.snmp_port
  access_community_string = var.snmp_community_string
  community_access        = var.snmp_community_access
  trap_community          = var.snmp_trap_community
  sys_contact             = var.snmp_sys_contact
  sys_location            = var.snmp_sys_location
  engine_id               = var.snmp_engine_id
  snmp_users {
    name             = var.snmp_users_name
    privacy_type     = var.snmp_users_privacy_type
    auth_password    = var.snmp_users_auth_password
    privacy_password = var.snmp_users_privacy_password
    security_level   = var.snmp_users_security_level
    auth_type        = var.snmp_users_auth_type
  }
  snmp_traps {
    destination = var.snmp_traps_destination
    enabled     = var.snmp_traps_enabled
    port        = var.snmp_traps_port
    type        = var.snmp_traps_type
    user        = var.snmp_traps_user
    nr_version  = var.snmp_traps_nr_version
  }
}
