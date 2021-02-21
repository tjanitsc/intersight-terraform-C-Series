## To configure a vnic as trunk or access. For trunk, native vlan. 
resource "intersight_vnic_eth_network_policy" "vnic_eth_network_policy" {
  name        = "${var.prefix}_vnic_eth_network_policy"
  description = "${var.prefix} VNIC Eth Network Policy"
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
  target_platform = var.vnic_eth_network_target_platform
  vlan_settings {
    mode         = var.vnic_eth_network_vlan_mode
    default_vlan = var.vnic_eth_network_vlan_default
    object_type  = "vnic.VlanSettings"
  }
}
