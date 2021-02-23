resource "intersight_vnic_fc_qos_policy" "vnic_fc_qos_policy" {
  name        = "${var.prefix}_vnic_fc_qos_policy"
  description = "${var.prefix} VNIC FC QoS Policy"
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
  rate_limit          = 10000
  cos                 = 6
  max_data_field_size = 2112
  # B-series only
  # burst = 1024
  # priority = "Best Effort"
}
