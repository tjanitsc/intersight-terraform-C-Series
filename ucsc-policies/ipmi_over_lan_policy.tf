resource "intersight_ipmioverlan_policy" "ipmi_over_lan_policy" {
  name        = "${var.prefix}_ipmi_over_lan_policy"
  description = "${var.prefix} ipmi_over_lan policy"
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
  enabled        = var.ipmi_over_lan_enabled
  privilege      = var.ipmi_over_lan_privilege
  encryption_key = var.ipmi_over_lan_encryption_key

}
