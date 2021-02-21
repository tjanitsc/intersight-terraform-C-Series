resource "intersight_kvm_policy" "kvm_policy" {
  name        = "${var.prefix}_kvm_policy"
  description = "${var.prefix} KVM Policy"
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
  enabled                   = var.kvm_policy_enabled
  maximum_sessions          = var.kvm_policy_max_sessions
  enable_video_encryption   = var.kvm_policy_enable_video_encryption
  remote_port               = var.kvm_policy_remote_port
  enable_local_server_video = var.kvm_policy_enable_local_server_video
}
