resource "intersight_storage_drive_group" "drive_group_policy" {
  name        = "${var.prefix}_disk_group_policy"
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
  raid_level = var.disk_group_raid_level
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
