resource "intersight_vnic_eth_if" "vnic_eth_if_policy" {
  name = "${var.prefix}_vnic_eth_if_policy"
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  order = 0
  placement {
    id       = "1"
    pci_link = 0
    uplink   = 0
  }
  cdn {
    value = var.vnic_eth_if_cdn_nr_source
    # nr_source = var.vnic_eth_if_cdn_value
  }
  usnic_settings {
    # User Space NIC Settings that enable low-latency and higher throughput by bypassing the kernel layer when sending/receiving packets. 
    cos      = 5 # int, Class of Service to be used for traffic on the usNIC.
    nr_count = 0 # int, Number of usNIC interfaces to be created.
  }
  vmq_settings {
    enabled             = var.vnic_eth_if_vmq_enabled
    multi_queue_support = false
    num_interrupts      = 1
    num_vmqs            = 1
  }
  lan_connectivity_policy {
    moid        = intersight_vnic_lan_connectivity_policy.vnic_lan_conn_policy.id
    object_type = "vnic.LanConnectivityPolicy"
  }
  eth_network_policy {
    moid = intersight_vnic_eth_network_policy.vnic_eth_network_policy.id
  }
  eth_adapter_policy {
    moid = intersight_vnic_eth_adapter_policy.vnic_eth_adapter_policy.id
  }
  eth_qos_policy {
    moid = intersight_vnic_eth_qos_policy.vnic_eth_qos_policy.id
  }
  depends_on = [intersight_vnic_lan_connectivity_policy.vnic_lan_conn_policy, intersight_vnic_eth_network_policy.vnic_eth_network_policy, intersight_vnic_eth_adapter_policy.vnic_eth_adapter_policy, intersight_vnic_eth_qos_policy.vnic_eth_qos_policy]
}
