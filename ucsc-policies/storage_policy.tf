resource "intersight_storage_storage_policy" "storage_policy" {
  depends_on  = [intersight_storage_disk_group_policy.disk_group_policy]
  name        = "${var.prefix}_storage_policy"
  description = "${var.prefix} Storage Policy"
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
  retain_policy_virtual_drives = var.storage_retain_policy_virtual_drives # bool, true
  unused_disks_state           = var.storage_unused_disks_state           # "UnconfiguredGood"
  virtual_drives {
    name                = var.storage_vd_name # "RAID0_1"
    object_type         = "storage.VirtualDriveConfig"
    boot_drive          = var.storage_vd_boot_drive          # bool, true
    drive_cache         = var.storage_vd_drive_cache         # "NoChange"
    expand_to_available = var.storage_vd_expand_to_available # false
    io_policy           = var.storage_vd_io_policy           # "Direct"
    access_policy       = var.storage_vd_access_policy       # "ReadWrite"
    read_policy         = var.storage_vd_read_policy         # "NoReadAhead"
    size                = var.storage_vd_size                # 285148
    write_policy        = var.storage_vd_write_policy        # "WriteThrough"
    disk_group_policy   = intersight_storage_disk_group_policy.disk_group_policy.moid
  }
  profiles {
    moid        = intersight_server_profile.server1.id
    object_type = "server.Profile"
  }
}
