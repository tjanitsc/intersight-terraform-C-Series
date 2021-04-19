resource "intersight_vnic_eth_adapter_policy" "vnic_eth_adapter_policy" {
  name        = "${var.prefix}_vnic_eth_adapter_policy"
  description = "${var.prefix} VNIC ETH Adapter Policy"
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
  vxlan_settings {
    enabled = var.vnic_eth_vxlan_enabled # bool, false
  }
  nvgre_settings {
    enabled = var.vnic_eth_nvgre_enabled # bool, false
  }
  arfs_settings {
    enabled = var.vnic_eth_arfs_enabled # bool, false
  }
  interrupt_settings {
    nr_count        = 32    # Range: 1-1024,            The number of interrupt resources to allocate. Typical value is be equal to the number of completion queue resources.
    mode            = "MSI" # options: MSIx, MSI, INTx, Preferred driver interrupt mode. This can be one of the following:- MSIx - Message Signaled Interrupts (MSI) with the optional extension. MSI - MSI only. INTx - PCI INTx interrupts. MSIx is the recommended option.
    coalescing_time = 125   # Range: 0-65535            The time to wait between interrupts or the idle period that must be encountered before an interrupt is sent. To turn off interrupt coalescing, enter 0 (zero) in this field.
    coalescing_type = "MIN" # Options: Min, Idle,       Interrupt Coalescing Type. This can be one of the following:- MIN - The system waits for the time specified in the Coalescing Time field before sending another interrupt event IDLE - The system does not send an interrupt until there is a period of no activity lasting as least as long as the time specified in the Coalescing Time field.
  }
  completion_queue_settings {
    nr_count  = var.vnic_eth_completion_queue_count     # number, 16
    ring_size = var.vnic_eth_completion_queue_ring_size # number, 1
  }
  rx_queue_settings {
    nr_count  = var.vnic_eth_rx_count     # number, 8
    ring_size = var.vnic_eth_rx_ring_size # number, 4096
  }
  tx_queue_settings {
    nr_count  = var.vnic_eth_tx_count     # number, 8
    ring_size = var.vnic_eth_tx_ring_size # number, 4096
  }
  tcp_offload_settings {
    large_receive = true
    large_send    = true
    rx_checksum   = true
    tx_checksum   = true
  }
  rss_settings = var.vnic_eth_adapter_rss_settings # true
}
