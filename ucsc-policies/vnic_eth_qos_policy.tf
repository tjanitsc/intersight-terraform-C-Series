resource "intersight_vnic_eth_qos_policy" "vnic_eth_qos_policy" {
  name        = "${var.prefix}_vnic_eth_qos_policy"
  description = "${var.prefix} VNIC Eth QoS Policy"
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
  mtu            = var.vnic_eth_qos_mut
  rate_limit     = var.vnic_eth_qos_rate_limit
  trust_host_cos = var.vnic_eth_qos_trust_host_cos
  # Applicable for C-series 
  cos = var.vnic_eth_qos_cos # number, range: 0-6 
  # Applicable for B-series
  burst    = var.vnic_eth_qos_burst
  priority = var.vnic_eth_qos_priority
}
