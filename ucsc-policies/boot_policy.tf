resource "intersight_boot_precision_policy" "boot_policy" {
  name                     = "${var.prefix}_boot_policy"
  description              = "${var.prefix} Boot policy"
  configured_boot_mode     = var.boot_mode
  enforce_uefi_secure_boot = var.boot_enforce_uefi_secure_boot
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
  boot_devices {
    enabled     = true
    name        = "disk"
    object_type = "boot.LocalDisk"
    additional_properties = jsonencode({
      Slot = "MRAID"
    })
  }
  boot_devices {
    enabled     = true
    name        = "vmedia"
    object_type = "boot.VirtualMedia"
    additional_properties = jsonencode({
      subtype = "cimc-mapped-dvd"
    })
  }
  profiles {
    moid        = intersight_server_profile.server1.id
    object_type = "server.Profile"
  }
}



