resource "intersight_networkconfig_policy" "network_conn_policy" {
  name        = "${var.prefix}_network_conn_policy"
  description = "${var.prefix} Network Connectivity Policy"
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
  enable_dynamic_dns = var.network_conn_enable_dynamic_dns
  dynamic_dns_domain = var.network_conn_dynamic_dns_domain
  # IPv4 
  enable_ipv4dns_from_dhcp = var.network_conn_enable_ipv4dns_from_dhcp
  preferred_ipv4dns_server = var.network_conn_preferred_ipv4dns_server
  alternate_ipv4dns_server = var.network_conn_alternate_ipv4dns_server
  # IPv6
  enable_ipv6 = var.network_conn_enable_ipv6
  # enable_ipv6dns_from_dhcp = var.network_conn_enable_ipv6dns_from_dhcp
  # preferred_ipv6dns_server = var.network_conn_preferred_ipv6dns_server
  # alternate_ipv6dns_server = var.network_conn_alternate_ipv6dns_server
  profiles {
    moid        = intersight_server_profile.server1.id
    object_type = "server.Profile"
  }
}
