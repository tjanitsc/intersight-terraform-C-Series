resource "intersight_vnic_fc_network_policy" "vnic_fc_network_policy" {
  name        = "${var.prefix}_vnic_fc_network_policy"
  description = "${var.prefix} VNIC FC Network Policy"
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
  vsan_settings {
    default_vlan_id = 1 # int range: 0-4094 C-series only 
    # id = 100   # B-series only 
  }
}
