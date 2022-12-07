resource "intersight_storage_storage_policy" "storage_policy" {
  name        = "${var.prefix}_storage_policy"
  description = "${var.prefix} Storage Policy"
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

  unused_disks_state           = var.storage_unused_disks_state           # "UnconfiguredGood"
  
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
