# Please change the below vaules as per environment
# Intersight Access API Key
api_key                                    = "<your_api_key>"
secret_key                                 = "SecretKey.txt"  # SecretKey.txt file in the directory you have the .tf files. 
endpoint                                   = "https://intersight.com"
# Common
org_name                                   = "default"
# server_serial                              = "$filter=Serial eq 'xxxxxx'" # << Replace xxxx with the server serial. Else, need to comment out this from variables.tf and service_profile.tf file

# org_moid = ""
prefix                                     = "tf_sj"

# Common
# Tags
tags = {
    key1   = "DC"
    value1 = "SJ"
    key2   = "ENV"
    value2 = "LAB"
    }

# Policies 
# adapter_config_policy 
adapter_slot_id                            = "MLOM"
adapter_eth_lldp_enabled                   = true
adapter_fc_fip_enabled                     = true
adapter_port_channel_enabled               = true
adapter_dce_fec_mode                       = "cl91"

# BIOS Policy 
## bios_policy.tf file needs to be updated manually as per requirements. 

# Boot Policy 
## rest of boot_policy.tf file needs to be updated manually as per requirements. 
boot_mode                                  = "Uefi"
boot_enforce_uefi_secure_boot              = false

# deviceconnector_policy 
dc_lockout_enabled                         = false

# disk_group_policy
## Update disk_group_policy.tf file with the disk numbers on the server
disk_group_raid_level                      = "Raid1" # Options: Raid0, Raid1, Raid5, Raid6, Raid10, Raid50, Raid60
disk_group_use_jbods                       = true

# iam_ldap_policy 
ldap_enabled                               = true
ldap_enable_dns                            = true
ldap_user_search_precedence                = "LocalUserDb"
ldap_properties_attribute                  = "CiscoAvPair"
ldap_properties_base_dn                    = "DC=xxxx,DC=cisco,DC=com"
ldap_properties_bind_dn                    = "CN=administrator,CN=Users,DC=xxxxx,DC=cisco,DC=com"
ldap_properties_bind_method                = "Anonymous" # Other options: LoginCredentials, ConfiguredCredentials
ldap_properties_domain                     = "xxxxxx.cisco.com"
ldap_properties_enable_encryption          = true
ldap_properties_enable_group_authorization = true
ldap_properties_filter                     = "sAMAccountName"
ldap_properties_group_attribute            = "memberOf"
ldap_properties_nested_group_search_depth  = 128
ldap_properties_timeout                    = 180
ldap_dns_parameters_nr_source              = "Extracted"
ldap_dns_parameters_search_forest          = "xyz"
ldap_dns_parameters_search_domain          = "abc"

# ipmi_over_lan_policy
ipmi_over_lan_enabled                      = true
ipmi_over_lan_privilege                    = "admin" # Other options: user, read-only
ipmi_over_lan_encryption_key               = "69706d69313233" # ascii: ipmi123

# kvm_policy
kvm_policy_enabled                         = true
kvm_policy_max_sessions                    = 4 # Range: 1-4
kvm_policy_enable_video_encryption         = true
kvm_policy_remote_port                     = 2068 # Range: 1-65535, Standalone policy
kvm_policy_enable_local_server_video       = true # Standalone policy

# network_conn_policy
network_conn_enable_dynamic_dns            = false # Platforms: UCS Server (Standalone)
network_conn_dynamic_dns_domain            = ""
## IPv4 Settings
network_conn_enable_ipv4dns_from_dhcp      = false
network_conn_preferred_ipv4dns_server      = "8.8.8.8"
network_conn_alternate_ipv4dns_server      = "4.2.2.2"
## IPv6 Settings
network_conn_enable_ipv6                   = false
network_conn_enable_ipv6dns_from_dhcp      = false
network_conn_preferred_ipv6dns_server      = "::"
network_conn_alternate_ipv6dns_server      = "::"

# ntp_policy
## Max 4 NTP servers can be added. Modify ntp_policy.tf to add more NTP servesr. 
ntp_policy_enabled                         = true
ntp_server_1                               = "1.1.1.1"
ntp_server_2                               = "1.1.1.2"
ntp_server_3                               = ""
ntp_server_4                               = ""
ntp_policy_timezone                        = "America/Los_Angeles"

# smtp_policy 
## Max 4 mail recipients can be configured
smtp_enabled                               = false
smtp_server_ip                             = "1.1.1.1"
smtp_port                                  = "25"
smtp_min_severity                          = "critical" # condition/informational, warning, minor, major
smtp_sender_email                          = "abc@sender.com"
smtp_receipients_email_1                   = "abc1@receiver.com"
smtp_receipients_email_2                   = "abc2@receiver.com"
smtp_receipients_email_3                   = ""
smtp_receipients_email_4                   = ""

# snmp_policy
snmp_enabled                               = true
snmp_port                                  = 161 # Range: 1-65535 
snmp_community_string                      = "communitystring"
snmp_community_access                      = "Disabled" # values: Disabled, Limited, Full,   Platforms: Standalone
snmp_trap_community                        = "trapcommunity"
snmp_sys_contact                           = "devuser" #   Platforms: Standalone
snmp_sys_location                          = "SJ" #   Platforms: Standalone
snmp_engine_id                             = "" #   Platforms: Standalone
## SNMP Users Info Per User
snmp_users_name                            = "test"
snmp_users_security_level                  = "AuthPriv" # Options: AuthPriv, AuthNoPriv
snmp_users_auth_type                       = "SHA" # Options: MD5, SHA
snmp_users_auth_password                   = "test12345"
snmp_users_privacy_type                    = "AES"
snmp_users_privacy_password                = "test12345"
## SNMP Trap Destinations 
snmp_traps_enabled                         = false
snmp_traps_nr_version                      = "V3" # Options: V3, V2 
snmp_traps_user                            = "test"
snmp_traps_type                            = "Trap" # Options: Trap, Inform 
snmp_traps_destination                     = "10.10.10.10"
snmp_traps_port                            = 162 # Range: 1-65535 

# sol_policy
sol_enabled                                = false
sol_com_port                               = "com1" # values: com0, com1
sol_baud_rate                              = 9600 # values: 9600, 19200, 38400, 57600, 115200
sol_ssh_port                               = 2400 # Range: 1024-65535 

# ssh_policy
ssh_enabled                                = true
ssh_port                                   = 22 # Range: 1-65535
ssh_timeout                                = 1800 # Range: 60-10800

# storage_policy
storage_retain_policy_virtual_drives       = true
storage_unused_disks_state                 = "UnconfiguredGood"
storage_vd_name                            = "RAID0_1"
storage_vd_boot_drive                      = true
storage_vd_drive_cache                     = "NoChange"
storage_vd_expand_to_available             = false
storage_vd_io_policy                       = "Direct"
storage_vd_access_policy                   = "ReadWrite"
storage_vd_read_policy                     = "NoReadAhead"
storage_vd_size                            = 285148
storage_vd_write_policy                    = "WriteThrough"

# syslog_policy
syslog_local_clients_min_sev               = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug
# Syslog Server 1
syslog_server1_enabled                     = true
syslog_server1_ip                          = "1.1.1.1"
syslog_server1_port                        = 514 # Range: 1-65535 
syslog_server1_protocol                    = "udp" # Options: udp, tcp
syslog_server1_min_severity                = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug
# Syslog Server 2
# syslog_server2_enabled                     = true
# syslog_server2_ip                          = "1.1.1.2"
# syslog_server2_port                        = 514 # Range: 1-65535 
# syslog_server2_protocol                    = "UDP" # Options: UDP, TCP
# syslog_server2_min_severity                = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug

# vmedia_policy
vmedia_enabled                             = true
vmedia_encryption                          = true
vmedia_low_power_usb                       = true
vmedia_device_type                         = "cdd" # Options: cdd, hdd 
vmedia_mount_protocol                      = "https" # options: nfs, cifs, https 
## http/https/CIFS/NFS options 
vmedia_volume_name                         = "esxi67"
vmedia_file_location                       = "https://x.x.x.x/path/to/iso/VMware_ESXi_6.7.0_14320388_Custom_Cisco_6.7.3.1.iso"
vmedia_mount_options                       = "noauto"
## http/https/CIFS options 
vmedia_username                            = ""
vmedia_password                            = ""
## cifs settings 
# vmedia_cifs_auth_protocol                  = "none" # options: none, ntlm, ntlmi, ntlmv2, ntlmv2i, ntlmssp, ntlmsspi 

# vnic_eth_adapter_policy 
vnic_eth_vxlan_enabled                     = false
vnic_eth_nvgre_enabled                     = false
vnic_eth_arfs_enabled                      = false
# advanced_filter
# interrupt scaling
# roce settings
vnic_eth_completion_queue_count            = 15 # range: 1-2000
vnic_eth_completion_queue_ring_size        = 1 # range: 1-256
vnic_eth_rx_count                          = 8 # range: 1-1000
vnic_eth_rx_ring_size                      = 4096 # range: 64-4096 
vnic_eth_tx_count                          = 8 # range: 1-1000
vnic_eth_tx_ring_size                      = 4096 # range: 64-4096 
vnic_eth_adapter_rss_settings              = true

# vnic_eth_if_policy
# In-progress 
vnic_eth_if_cdn_nr_source                  = "vnic" # options: vnic, user, vnic - Source of the CDN is the same as the vNIC name.* user - Source of the CDN is specified by the user.
# vnic_eth_if_cdn_value                      = "eth0"
vnic_eth_if_vmq_enabled                    = false

# vnic_eth_network_policy
vnic_eth_network_target_platform           = "Standalone" # options: Standalone, FIAttached
vnic_eth_network_vlan_mode                 = "ACCESS" # Options: ACCESS, TRUNK 
vnic_eth_network_vlan_default              = 1 # Options: 0-4094

# vnic_eth_qos_policy
vnic_eth_qos_mut                           = 9000 # Range: 1500-9000
vnic_eth_qos_rate_limit                    = 0 # Options: 0-100000
vnic_eth_qos_trust_host_cos                = false
vnic_eth_qos_cos                           = 0 # Options: 0-6 
# Only B-series 
# vnic_eth_qos_burst                         = 1024 # Range: 1024-1000000
# vnic_eth_qos_priority                      = "Best Effort" # Best Effort, FC, Platinum, Gold, Silver, Bronze,

# vnic_lan_conn_policy
vnic_lan_conn_target_platform              = "Standalone" # Options: Standalone, FIAttached

# service_profile 
sp_action                                  = "No-op" # Options: # Deploy, Unassign
sp_target_platform                         = "Standalone" # Options: Standalone, FIAttached

#vnic_fc_if_policy
fc_vhba_type                               = "fc-initiator"
fc_vhba_slot_id                            = "MLOM"
fc_vhba_uplink                             = 0
fc_vhha_pci_link                           = 0
fc_vhba_pci_order                          = 2
fc_vhba_persistent_bindings                = false

# vnic_san_conn_policy
vnic_san_conn_target_platform              = "Standalone"