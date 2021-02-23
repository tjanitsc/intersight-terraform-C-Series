resource "intersight_vnic_fc_adapter_policy" "vnic_fc_adapter_policy" {
  name        = "${var.prefix}_vnic_fc_adapter_policy"
  description = "${var.prefix} VNIC FC Adapter Policy"
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
  error_detection_timeout = 100000
  error_recovery_settings {
    enabled           = false
    io_retry_count    = 255
    io_retry_timeout  = 50
    link_down_timeout = 240000
    port_down_timeout = 240000
  }

  flogi_settings {
    retries = 0
    timeout = 255000
  }

  interrupt_settings {
    mode = "MSIx"
  }

  io_throttle_count = 1024
  lun_count         = 1024
  lun_queue_depth   = 254

  plogi_settings {
    retries = 255
    timeout = 255000
  }
  resource_allocation_timeout = 100000

  rx_queue_settings {
    nr_count  = 1
    ring_size = 128
  }
  tx_queue_settings {
    nr_count  = 1
    ring_size = 128
  }


  scsi_queue_settings {
    nr_count  = 8
    ring_size = 152
  }

}
