resource "intersight_storage_drive_group" "drive_group_policy" {
  name        = "${var.prefix}_disk_group_policy"
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  raid_level = var.disk_group_raid_level
  
}
