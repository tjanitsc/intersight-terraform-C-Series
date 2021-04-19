resource "intersight_syslog_policy" "syslog_policy" {
  name        = "${var.prefix}_syslog_policy"
  description = "${var.prefix} Syslog Policy"
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
  local_clients {
    min_severity = var.syslog_local_clients_min_sev
    object_type  = "syslog.LocalFileLoggingClient"
  }
  remote_clients {
    enabled      = var.syslog_server1_enabled
    hostname     = var.syslog_server1_ip
    port         = var.syslog_server1_port
    protocol     = var.syslog_server1_protocol
    min_severity = var.syslog_server1_min_severity
    object_type  = "syslog.RemoteLoggingClient"
  }
  # remote_clients {
  #   enabled      = var.syslog_server2_enabled      
  #   hostname     = var.syslog_server2_ip           
  #   port         = var.syslog_server2_port         
  #   protocol     = var.syslog_server2_protocol     
  #   min_severity = var.syslog_server2_min_severity 
  #   object_type  = "syslog.RemoteLoggingClient"
  # }
  profiles {
    moid        = intersight_server_profile.server_profile.moid
    object_type = "server.Profile"
  }
}
