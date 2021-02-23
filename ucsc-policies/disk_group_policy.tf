resource "intersight_storage_disk_group_policy" "disk_group_policy" {
  name        = "${var.prefix}_disk_group_policy"
  description = "${var.prefix} Disk Group Policy"
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
  raid_level = var.disk_group_raid_level
  use_jbods  = var.disk_group_use_jbods
  span_groups {
    disks {
      slot_number = 1
    }
    disks {
      slot_number = 2
    }
  }
  dedicated_hot_spares {
    slot_number = 3
  }
}
