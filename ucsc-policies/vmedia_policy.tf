resource "intersight_vmedia_policy" "vmedia_policy" {
  name        = "${var.prefix}_vmedia_policy"
  description = "${var.prefix} VMedia Policy"
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
  enabled       = var.vmedia_enabled
  encryption    = var.vmedia_encryption
  low_power_usb = var.vmedia_low_power_usb
  mappings {
    device_type    = var.vmedia_device_type
    mount_protocol = var.vmedia_mount_protocol
    # http/https/CIFS/NFS options 
    volume_name   = var.vmedia_volume_name
    file_location = var.vmedia_file_location
    mount_options = var.vmedia_mount_options
    # http/https/CIFS options 
    username = var.vmedia_username
    password = var.vmedia_password
    # cifs options   
    # authentication_protocol = var.vmedia_cifs_auth_protocol
  }
}
