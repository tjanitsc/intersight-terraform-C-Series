resource "intersight_adapter_config_policy" "adapter_config_policy" {
  name        = "${var.prefix}_adapter_policy"
  description = "${var.prefix} Adapter Config policy"
  organization {
    object_type = "organization.Organization"
    # moid = var.org_moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  settings {
    slot_id     = var.adapter_slot_id
    object_type = "adapter.AdapterConfig"
    eth_settings {
      lldp_enabled = var.adapter_eth_lldp_enabled
    }
    fc_settings {
      fip_enabled = var.adapter_fc_fip_enabled
    }
    port_channel_settings {
      enabled = var.adapter_port_channel_enabled
    }

    dce_interface_settings {
      object_type  = "adapter.DceInterfaceSettings"
      fec_mode     = var.adapter_dce_fec_mode
      interface_id = 0
    }
    dce_interface_settings {
      object_type  = "adapter.DceInterfaceSettings"
      fec_mode     = var.adapter_dce_fec_mode
      interface_id = 1
    }
    dce_interface_settings {
      object_type  = "adapter.DceInterfaceSettings"
      fec_mode     = var.adapter_dce_fec_mode
      interface_id = 2
    }
    dce_interface_settings {
      object_type  = "adapter.DceInterfaceSettings"
      fec_mode     = var.adapter_dce_fec_mode
      interface_id = 3
    }
  }
}
