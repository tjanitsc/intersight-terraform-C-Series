resource "intersight_vnic_fc_if" "vnic_fc_if" {
  name = "${var.prefix}_fc_vhba_A"
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  order               = var.fc_vhba_order
  persistent_bindings = var.fc_vhba_persistent_bindings
  placement {
    id       = var.fc_vhba_slot_id
    pci_link = var.fc_vhha_pci_link
    uplink   = var.fc_vhba_uplink
  }
  type = var.fc_vhba_type
  fc_adapter_policy {
    moid = intersight_vnic_fc_adapter_policy.vnic_fc_adapter_policy.moid
  }
  fc_network_policy {
    moid = intersight_vnic_fc_network_policy.vnic_fc_network_policy.moid
  }
  fc_qos_policy {
    moid = intersight_vnic_fc_qos_policy.vnic_fc_qos_policy.moid
  }
  san_connectivity_policy {
    moid = intersight_vnic_san_connectivity_policy.vnic_san_connectivity_policy.moid
  }
}
