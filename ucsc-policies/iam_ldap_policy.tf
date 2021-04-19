# In-progress
resource "intersight_iam_ldap_policy" "iam_ldap_policy" {
  name        = "${var.prefix}_ldap_policy"
  description = "${var.prefix} LDAP policy"
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
  enabled                = var.ldap_enabled
  enable_dns             = var.ldap_enable_dns
  user_search_precedence = var.ldap_user_search_precedence
  base_properties {
    attribute                  = var.ldap_properties_attribute
    base_dn                    = var.ldap_properties_base_dn
    bind_dn                    = var.ldap_properties_bind_dn
    bind_method                = var.ldap_properties_bind_method
    domain                     = var.ldap_properties_domain
    enable_encryption          = var.ldap_properties_enable_encryption
    enable_group_authorization = var.ldap_properties_enable_group_authorization
    filter                     = var.ldap_properties_filter
    group_attribute            = var.ldap_properties_group_attribute
    nested_group_search_depth  = var.ldap_properties_nested_group_search_depth
    timeout                    = var.ldap_properties_timeout
  }
  dns_parameters {
    nr_source     = var.ldap_dns_parameters_nr_source
    search_forest = var.ldap_dns_parameters_search_forest
    search_domain = var.ldap_dns_parameters_search_domain
  }
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
