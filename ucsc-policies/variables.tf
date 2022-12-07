# Intersight Access API Key
variable "api_key" {
  type        = string
  description = "Intersight API key"
  default     = "5ca1afb07564612d30e91091/5e9ef5ea7564612d304456f8/6298fd0f7564612d31db2402"
}

variable "secret_key" {
  type        = string
  description = "Intersight Secret Key"
  default     = "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEAwRCqf0W7aGLUeQ8/4l6086b2LMmJilLlwCSEK3ZIYTCAb1ZH/PiGJMUw3EhzuzYZ9tpgRvFEQUiKl5S/GBY9TgAEiohFAE+C2I0SBtqDhnOoRzyofCr7ooJ5uuJqwjXxbrDgWgqPQlHGPeJT37Q72e0bY5wwQOwte9qDYi4TwsgwF5vl8QIbxNoW1s0VoAlFi/JrgS4hoOLx8S4nhxiPt8F2Ffi3UZ60LQeV3Uq2HKEYM9EtozEJhczM6XY+EzqH1VvkL3ypGmAuZ4HwWlV4KNSQNeXKdViu6OMh6CwJ7sw0jteC/i0Mpjp7Vtl2vONpR+PFfTlRvXXngm1JtGdeZwIDAQABAoIBAQCLER0u9iTLST0xQnnK7ls7ks2Kb1WCbLoP0H3f7KCwWUZ6bFUIdF/0BpJuakXq2UqUlLJ7B3kZ6U3jaALKL+LS15Jt00CYu61NnTgZ9bZ917ukLJ5UaoW9hmx24Hb0E/UnvYKteSO+Krc4hlnSLrpZ/MAY3T2o1jbhGwI+a2BSkazF65PKBgHOQV6KP6e3oRIx3uRVhDTc3w3DhgRQkkjh9mlpHhNwcdyUE4GxSwNrXgV2EJkfslDFj4v/azCqFYh9cs01xyycFYiP6tCXeSGmZwcQ75MNZSL8Sla9IJVRAj7cvB/PYwBTZHW5E3dvBaecwkEOS17HJmc8GSg/WQVZAoGBAMniaJw3aKmCl9YCBGmmCKl9/5urXSAKG2bRcdnjHRwLCw4GoT0YwRVjcPLX8CO2Sm3rbHXBtv5N8bVDyCaEGEzMhEXPQxT9/gdd6zGC9PwhMhYMHNiHpTyq4gVJV9OYo+FB6IdnY5L0dd4k2kdISHjxd+4SuGMhQHggTfgmMiyFAoGBAPTREGuPj97QQdNxKIRI3n6zVLi+AF4zhi1wl7GpyBEyzFRP67Gb61GFn1jmxohzubBOo+vj899pl9m6edd5lPoAv+q6Pk4klQQZvHx8HxVWozkX/+w2ghRN0j3GDoA4fxqOHf271QAqHsI5vV64E6e0w7y7dc3IS87YghFyyFj7AoGAUfcKYeJdK/VJkCnhgMNYYPg2/wzkEk4IMgZ3Iu+CshAJvPgUHqoeOoDVKsNhTB6GuXoL3wN3OGiM6ftLF9gpxYSDb5Rmt+8nY/ZNtxxkOrl/jFP+oirwe2Elwt+0OMSQRLRtpAvl8ZQvBrIPrUE7q17eQlp3Ykft1NfI0Ccx18ECgYByvMTgVFFOUPZ43XDqxqgYY33Sc6IChE1fYISHzJWqkc83uJkzDWs1MtXiuY3Uh8BARCsJNDWowHldnsrZ1O6gWNeZcB4hS33XhSRUh2ud+ZPX/0p/b3B5iZt+PiOvrkrLrE2cDHsgb50o1BzPlqAHmm2eN5FXl4cH82rKOKxzHwKBgQCSnjpx67un5zF32mvxNgsxgTDdVvw9HFEDCvy6Lekf/xupIbCVwDuQLI/FJOwqGBgVYZHShPiNpkLBHD7IQZyZ4Irei58i5LS3a4VUDhZOsfsF3p0EM+YLYCuWkDdd5pnma6xTJk3OFKIpotNxAMcGhwJ/bNXOTWEx37WFgB7XRw==-----END RSA PRIVATE KEY-----"
}

variable "endpoint" {
  type        = string
  description = "Intersight URL"
  default     = "https://intersight.com"
}

variable "prefix" {
  type        = string
  description = "prefix appended to the policy names"
  default     = "tf_"
}

# Common
# Org Details
variable "org_name" {
  type        = string
  description = "Name of the Org where you want to create the resource"
}

# variable "server_serial" {
#   type        = string
#   description = "Specify the Server serial"
# }

# Tags
variable "tags" {
  type = map(string)
  default = {
    key1   = "DC"
    value1 = "SJ"
    key2   = "ENV"
    value2 = "LAB"
  }
}

# Policies 
# adapter_config_policy 
variable "adapter_slot_id" {
  type        = string
  description = "PCIe slot where the VIC adapter is installed. Supported values are (1-15) and MLOM."
  default     = "MLOM"
}
variable "adapter_eth_lldp_enabled" {
  type        = bool
  description = "Status of LLDP protocol on the adapter interfaces."
  default     = true
}
variable "adapter_fc_fip_enabled" {
  type        = bool
  description = "Status of FIP protocol on the adapter interfaces."
  default     = true
}
variable "adapter_port_channel_enabled" {
  type        = bool
  description = "When Port Channel is enabled, two vNICs and two vHBAs are available for use on the adapter card. When disabled, four vNICs and four vHBAs are available for use on the adapter card. Disabling port channel reboots the server. Port Channel is supported only for Cisco VIC 1455/1457 adapters."
  default     = true
}
variable "adapter_dce_fec_mode" {
  type        = string
  description = "Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces. Supported values are cl91, cl74, Off "
  default     = "cl91"
}

# BIOS Policy 
## bios_policy.tf file needs to be updated manually as per requirements. 

# Boot Policy 
## rest of boot_policy.tf file needs to be updated manually as per requirements. 
variable "boot_mode" {
  type        = string
  description = "Sets the BIOS boot mode. UEFI uses the GUID Partition Table (GPT) whereas Legacy mode uses the Master Boot Record (MBR) partitioning scheme. Options: Legacy, Uefi"
  default     = "Uefi"
}
variable "boot_enforce_uefi_secure_boot" {
  type        = bool
  description = "If UEFI secure boot is enabled, the boot mode is set to UEFI by default. Secure boot enforces that device boots using only software that is trusted by the Original Equipment Manufacturer (OEM)."
  default     = false
}



# deviceconnector_policy 
variable "dc_lockout_enabled" {
  type        = bool
  description = "Enables configuration lockout on the endpoint. Note: System will be set to be configured from Intersight Only. IPMI over LAN privilege will be read-only."
  default     = false
}


# disk_group_policy
## Update disk_group_policy.tf file with the disk numbers on the server
variable "disk_group_raid_level" {
  type        = string
  description = "The supported RAID level for the disk group."
  default     = "Raid1" # Options: Raid0, Raid1, Raid5, Raid6, Raid10, Raid50, Raid60
}

variable "disk_group_use_jbods" {
  type        = bool
  description = "Selected disks in the disk group in JBOD state will be set to Unconfigured Good state before they are used in virtual drive creation."
  default     = true
}


# iam_ldap_policy 
variable "ldap_enabled" {
  type        = bool
  description = "LDAP server performs authentication."
  default     = true
}
variable "ldap_enable_dns" {
  type        = bool
  description = ""
  default     = true
}
variable "ldap_user_search_precedence" {
  type        = string
  description = ""
  default     = "LocalUserDb"
}
variable "ldap_properties_attribute" {
  type        = string
  description = ""
  default     = "CiscoAvPair"
}
variable "ldap_properties_base_dn" {
  type        = string
  description = "Base Distinguished Name (DN). Starting point from where server will search for users and groups."
  default     = "DC=xxxxx,DC=cisco,DC=com"
}
variable "ldap_properties_bind_dn" {
  type        = string
  description = ""
  default     = "CN=administrator,CN=Users,DC=xxxxx,DC=cisco,DC=com"
}
variable "ldap_properties_bind_method" {
  type        = string
  description = "Authentication method to access LDAP servers."
  default     = "Anonymous" # Other options: LoginCredentials, ConfiguredCredentials
}
variable "ldap_properties_domain" {
  type        = string
  description = "The IPv4 domain that all users must be in."
  default     = "xxxxx.cisco.com"
}
variable "ldap_properties_enable_encryption" {
  type        = bool
  description = ""
  default     = true
}
variable "ldap_properties_enable_group_authorization" {
  type        = bool
  description = ""
  default     = true
}
variable "ldap_properties_filter" {
  type        = string
  description = "Criteria to identify entries in search requests."
  default     = "sAMAccountName"
}
variable "ldap_properties_group_attribute" {
  type        = string
  description = "Groups to which an LDAP entry belongs."
  default     = "memberOf"
}
variable "ldap_properties_nested_group_search_depth" {
  type        = number
  description = ""
  default     = 128
}
variable "ldap_properties_timeout" {
  type        = number
  description = ""
  default     = 180
}
variable "ldap_dns_parameters_nr_source" {
  type        = string
  description = ""
  default     = "Extracted"
}
variable "ldap_dns_parameters_search_forest" {
  type        = string
  description = ""
  default     = "xyz"
}
variable "ldap_dns_parameters_search_domain" {
  type        = string
  description = ""
  default     = "abc"
}


# ipmi_over_lan_policy

variable "ipmi_over_lan_enabled" {
  type        = bool
  description = "State of the IPMI Over LAN service on the endpoint."
  default     = true
}
variable "ipmi_over_lan_privilege" {
  type        = string
  description = "The highest privilege level that can be assigned to an IPMI session on a server."
  default     = "admin" # Other options: user, read-only
}
variable "ipmi_over_lan_encryption_key" {
  type        = string
  description = "The encryption key to use for IPMI communication. It should have an even number of hexadecimal characters and not exceed 40 characters."
  default     = "69706d69313233" # ascii: ipmi123
}

# kvm_policy
variable "kvm_policy_enabled" {
  type        = bool
  description = "State of the vKVM service on the endpoint."
  default     = true
}
variable "kvm_policy_max_sessions" {
  type        = number
  description = "The maximum number of concurrent KVM sessions allowed."
  default     = 4 # Range: 1-4
}
variable "kvm_policy_enable_video_encryption" {
  type        = bool
  description = "If enabled, encrypts all video information sent through KVM."
  default     = true
}
variable "kvm_policy_remote_port" {
  type        = number
  description = "The port used for KVM communication."
  default     = 2068 # Range: 1-65535, Standalone policy
}
variable "kvm_policy_enable_local_server_video" {
  type        = bool
  description = "If enabled, displays KVM session on any monitor attached to the server."
  default     = true # Standalone policy
}


# network_conn_policy
variable "network_conn_enable_dynamic_dns" {
  type        = bool
  description = "If enabled, updates the resource records to the DNS from Cisco IMC. Platforms: UCS Server (Standalone)"
  default     = false # Platforms: UCS Server (Standalone)
}

variable "network_conn_dynamic_dns_domain" {
  type        = string
  description = "The domain name appended to a hostname for a Dynamic DNS (DDNS) update. If left blank, only a hostname is sent to the DDNS update request."
  default     = ""
}

## IPv4 Settings
variable "network_conn_enable_ipv4dns_from_dhcp" {
  type        = bool
  description = "If enabled, Cisco IMC retrieves the DNS server addresses from DHCP. Use DHCP field must be enabled for IPv4 in Cisco IMC to enable it."
  default     = false
}
variable "network_conn_preferred_ipv4dns_server" {
  type        = string
  description = "IP address of the primary DNS server."
  default     = "8.8.8.8"
}
variable "network_conn_alternate_ipv4dns_server" {
  type        = string
  description = "IP address of the secondary DNS server."
  default     = "4.2.2.2"
}

## IPv6 Settings
variable "network_conn_enable_ipv6" {
  type        = bool
  description = "If enabled, allows to configure IPv6 properties."
  default     = false
}
variable "network_conn_enable_ipv6dns_from_dhcp" {
  type        = bool
  description = "If enabled, Cisco IMC retrieves the DNS server addresses from DHCP. Use DHCP field must be enabled for IPv6 in Cisco IMC to enable it."
  default     = false
}
variable "network_conn_preferred_ipv6dns_server" {
  type        = string
  description = "IP address of the primary DNS server."
  default     = "::"
}
variable "network_conn_alternate_ipv6dns_server" {
  type        = string
  description = "IP address of the secondary DNS server."
  default     = "::"
}


# ntp_policy
## Max 4 NTP servers can be added. Modify ntp_policy.tf to add more NTP servesr. 
variable "ntp_policy_enabled" {
  type        = bool
  description = "State of NTP service on the endpoint."
  default     = true
}
variable "ntp_server_1" {
  type        = string
  description = "NTP Server IP"
  default     = "1.1.1.1"
}
variable "ntp_server_2" {
  type        = string
  description = "NTP Server IP"
  default     = "1.1.1.2"
}
variable "ntp_server_3" {
  type        = string
  description = "NTP Server IP"
  default     = "x.x.x.x"
}
variable "ntp_server_4" {
  type        = string
  description = "NTP Server IP"
  default     = "x.x.x.x"
}
variable "ntp_policy_timezone" {
  type        = string
  description = "Timezone of services on the endpoint."
  default     = "America/Los_Angeles"
}


# smtp_policy 
## Max 4 mail recipients can be configured
variable "smtp_enabled" {
  type        = bool
  description = "If enabled, controls the state of the SMTP client service on the managed device."
  default     = false
}
variable "smtp_server_ip" {
  type        = string
  description = "IP address or hostname of the SMTP server. The SMTP server is used by the managed device to send email notifications."
  default     = "1.1.1.1"
}
variable "smtp_port" {
  type        = number
  description = "Port number used by the SMTP server for outgoing SMTP communication."
  default     = "25"
}
variable "smtp_min_severity" {
  type        = string
  description = "Minimum fault severity level to receive email notifications. Email notifications are sent for all faults whose severity is equal to or greater than the chosen level."
  default     = "critical" # condition/informational, warning, minor, major
}

variable "smtp_sender_email" {
  type        = string
  description = "The email address entered here will be displayed as the from address (mail received from address) of all the SMTP mail alerts that are received. If not configured, the hostname of the server is used in the from address field."
  default     = "abc@sender.com"
}
variable "smtp_receipients_email_1" {
  type        = string
  description = "Mail receiver email-id"
  default     = "abc1@receiver.com"
}
variable "smtp_receipients_email_2" {
  type        = string
  description = "Mail receiver email-id"
  default     = "abc2@receiver.com"
}
variable "smtp_receipients_email_3" {
  type        = string
  description = "Mail receiver email-id"
  default     = ""
}
variable "smtp_receipients_email_4" {
  type        = string
  description = "Mail receiver email-id"
  default     = ""
}


# snmp_policy
variable "snmp_enabled" {
  type        = bool
  description = "State of the SNMP Policy on the endpoint. If enabled, the endpoint sends SNMP traps to the designated host."
  default     = true
}
variable "snmp_port" {
  type        = number
  description = "Port on which Cisco IMC SNMP agent runs. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269)."
  default     = 161 # Range: 1-65535 
}
variable "snmp_community_string" {
  type        = string
  description = "The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long."
  default     = "communitystring"
}
variable "snmp_community_access" {
  type        = string
  description = "Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users."
  default     = "Disabled" # values: Disabled, Limited, Full,   Platforms: Standalone
}
variable "snmp_trap_community" {
  type        = string
  description = "SNMP community group used for sending SNMP trap to other devices. Valid only for SNMPv2c users."
  default     = "trapcommunity"
}
variable "snmp_sys_contact" {
  type        = string
  description = "Contact person responsible for the SNMP implementation. Enter a string up to 64 characters, such as an email address or a name and telephone number."
  default     = "devuser" #   Platforms: Standalone
}
variable "snmp_sys_location" {
  type        = string
  description = "Location of host on which the SNMP agent (server) runs."
  default     = "SJ" #   Platforms: Standalone
}
variable "snmp_engine_id" {
  type        = string
  description = "User-defined unique identification of the static engine."
  default     = "" #   Platforms: Standalone
}

## SNMP Users Info Per User
variable "snmp_users_name" {
  type        = string
  description = "SNMP username. Must have a minimum of 1 and and a maximum of 31 characters."
  default     = "test"
}
variable "snmp_users_security_level" {
  type        = string
  description = "Security mechanism used for communication between agent and manager."
  default     = "AuthPriv" # Options: AuthPriv, AuthNoPriv
}
variable "snmp_users_auth_type" {
  type        = string
  description = "Authorization protocol for authenticating the user."
  default     = "SHA" # Options: MD5, SHA
}
variable "snmp_users_auth_password" {
  type        = string
  description = "Authorization password for the user. Should be 8-64 characters"
  default     = "test12345"
}
variable "snmp_users_privacy_type" {
  type        = string
  description = "Privacy protocol for the user."
  default     = "AES"
}
variable "snmp_users_privacy_password" {
  type        = string
  description = "Privacy password for the user. Should be 8-64 characters"
  default     = "test12345"
}

## SNMP Trap Destinations 
variable "snmp_traps_enabled" {
  type        = bool
  description = "Enables/disables the trap on the server If enabled, trap is active on the server."
  default     = false
}
variable "snmp_traps_nr_version" {
  type        = string
  description = "SNMP version used for the trap."
  default     = "V3" # Options: V3, V2 
}
variable "snmp_traps_user" {
  type        = string
  description = "SNMP user for the trap. Applicable only to SNMPv3."
  default     = "test"
}
variable "snmp_traps_type" {
  type        = string
  description = "Type of trap which decides whether to receive a notification when a trap is received at the destination."
  default     = "Trap" # Options: Trap, Inform 
}
variable "snmp_traps_destination" {
  type        = string
  description = "Address to which the SNMP trap information is sent."
  default     = "10.10.10.10"
}

variable "snmp_traps_port" {
  type        = number
  description = "Port used by the server to communicate with the trap destination. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269)."
  default     = 162 # Range: 1-65535 
}





# sol_policy
variable "sol_enabled" {
  type        = bool
  description = "State of Serial Over LAN service on the endpoint."
  default     = false
}
variable "sol_com_port" {
  type        = string
  description = "Serial port through which the system routes Serial Over LAN communication. This field is available only on some Cisco UCS C-Series servers. If it is unavailable, the server uses COM port 0 by default."
  default     = "com1" # values: com0, com1
}
variable "sol_baud_rate" {
  type        = number
  description = "Baud Rate used for Serial Over LAN communication."
  default     = 9600 # values: 9600, 19200, 38400, 57600, 115200
}

variable "sol_ssh_port" {
  type        = number
  description = "SSH port used to access Serial Over LAN directly. Enables bypassing Cisco IMC shell to provide direct access to Serial Over LAN."
  default     = 2400 # Range: 1024-65535 
}


# ssh_policy
variable "ssh_enabled" {
  type        = bool
  description = "State of SSH service on the endpoint."
  default     = true
}
variable "ssh_port" {
  type        = number
  description = "Port used for secure shell access."
  default     = 22 # Range: 1-65535
}
variable "ssh_timeout" {
  type        = number
  description = "Number of seconds to wait before the system considers a SSH request to have timed out."
  default     = 1800 # Range: 60-10800
}

# storage_policy
variable "storage_retain_policy_virtual_drives" {
  type        = bool
  description = "value"
  default     = true
}
variable "storage_unused_disks_state" {
  type        = string
  description = "value"
  default     = "UnconfiguredGood"
}
variable "storage_vd_name" {
  type        = string
  description = "value"
  default     = "RAID0_1"
}
variable "storage_vd_boot_drive" {
  type        = bool
  description = "value"
  default     = true
}
variable "storage_vd_drive_cache" {
  type        = string
  description = "value"
  default     = "NoChange"
}
variable "storage_vd_expand_to_available" {
  type        = bool
  description = "value"
  default     = false
}
variable "storage_vd_io_policy" {
  type        = string
  description = "value"
  default     = "Direct"
}
variable "storage_vd_access_policy" {
  type        = string
  description = "value"
  default     = "ReadWrite"
}
variable "storage_vd_read_policy" {
  type        = string
  description = "value"
  default     = "NoReadAhead"
}
variable "storage_vd_size" {
  type        = number
  description = "value"
  default     = 285148
}
variable "storage_vd_write_policy" {
  type        = string
  description = "value"
  default     = "WriteThrough"
}


# syslog_policy
variable "syslog_local_clients_min_sev" {
  type        = string
  description = "Lowest level of messages to be included in the local log."
  default     = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug
}

# Syslog Server 1
variable "syslog_server1_enabled" {
  type        = bool
  description = "Syslog Server 1 logging Enabled"
  default     = true
}
variable "syslog_server1_ip" {
  type        = string
  description = "Hostname or IP Address of the syslog server where log should be stored."
  default     = "1.1.1.1"
}
variable "syslog_server1_port" {
  type        = number
  description = "Port number used for logging on syslog server."
  default     = 514 # Range: 1-65535 
}
variable "syslog_server1_protocol" {
  type        = string
  description = "Transport layer protocol for transmission of log messages to syslog server."
  default     = "udp" # Options: udp, tcp
}
variable "syslog_server1_min_severity" {
  type        = string
  description = "Lowest level of messages to be included in the remote log."
  default     = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug
}

# Syslog Server 2
# variable "syslog_server2_enabled" {
#   type        = bool
#   description = "Syslog Server 1 logging Enabled"
#   default     = true
# }
# variable "syslog_server2_ip" {
#   type        = string
#   description = "Hostname or IP Address of the syslog server where log should be stored."
#   default     = "1.1.1.2"
# }
# variable "syslog_server2_port" {
#   type        = number
#   description = "Port number used for logging on syslog server."
#   default     = 514 # Range: 1-65535 
# }
# variable "syslog_server2_protocol" {
#   type        = string
#   description = "Transport layer protocol for transmission of log messages to syslog server."
#   default     = "UDP" # Options: UDP, TCP
# }
# variable "syslog_server2_min_severity" {
#   type        = string
#   description = "Lowest level of messages to be included in the remote log."
#   default     = "emergency" # options: warning, emergency, alert, critical, error, notice, informational, debug
# }


# vmedia_policy
variable "vmedia_enabled" {
  type        = bool
  description = "State of the Virtual Media service on the endpoint."
  default     = true
}
variable "vmedia_encryption" {
  type        = bool
  description = "If enabled, allows encryption of all Virtual Media communications."
  default     = true
}
variable "vmedia_low_power_usb" {
  type        = bool
  description = "If enabled, the virtual drives appear on the boot selection menu after mapping the image and rebooting the host."
  default     = true
}
variable "vmedia_device_type" {
  type        = string
  description = "Type of remote Virtual Media device."
  default     = "cdd" # Options: cdd, hdd 
}
variable "vmedia_mount_protocol" {
  type        = string
  description = "Protocol to access the file over the network"
  default     = "https" # options: nfs, cifs, https 
}

## http/https/CIFS/NFS options 
variable "vmedia_volume_name" {
  type        = string
  description = "Identity of the image for Virtual Media mapping."
  default     = "esxi67"
}
variable "vmedia_file_location" {
  type        = string
  description = "Name of the remote file. It should be of .img format for HDD Virtual Media mapping and .iso format for CDD Virtual Media mapping."
  default     = "https://x.x.x.x/path/to/iso/VMware_ESXi_6.7.0_14320388_Custom_Cisco_6.7.3.1.iso"
}
variable "vmedia_mount_options" {
  type        = string
  description = "Mount options for the Virtual Media mapping. The field can be left blank or filled in a comma separated list with the following options. For NFS, supported options are ro, rw, nolock, noexec, soft, port=VALUE, timeo=VALUE, retry=VALUE. For CIFS, supported options are soft, nounix, noserverino, guest. For CIFS version < 3.0, vers=VALUE is mandatory. e.g. vers=2.0 For HTTP/HTTPS, the only supported option is noauto."
  default     = "noauto"
}

## http/https/CIFS options 
variable "vmedia_username" {
  type        = string
  description = "Username to log in to the remote server."
  default     = ""
}
variable "vmedia_password" {
  type        = string
  description = "Password associated with the username."
  default     = ""
}

## cifs settings 
# variable "vmedia_cifs_auth_protocol" {
#   type        = string
#   description = "Type of Authentication protocol when CIFS is used for communication with the remote server."
#   default     = "none" # options: none, ntlm, ntlmi, ntlmv2, ntlmv2i, ntlmssp, ntlmsspi 
# }


# vnic_eth_adapter_policy 


variable "vnic_eth_vxlan_enabled" {
  type        = bool
  description = "Status of the Virtual Extensible LAN Protocol on the virtual ethernet interface."
  default     = false
}
variable "vnic_eth_nvgre_enabled" {
  type        = bool
  description = "Status of the Network Virtualization using Generic Routing Encapsulation on the virtual ethernet interface."
  default     = false
}
variable "vnic_eth_arfs_enabled" {
  type        = bool
  description = "Status of Accelerated Receive Flow Steering on the virtual ethernet interface."
  default     = false
}

# advanced_filter
# interrupt scaling
# roce settings

variable "vnic_eth_completion_queue_count" {
  type        = number
  description = "The number of completion queue resources to allocate. In general, the number of completion queue resources to allocate is equal to the number of transmit queue resources plus the number of receive queue resources."
  default     = 15 # range: 1-2000
}
variable "vnic_eth_completion_queue_ring_size" {
  type        = number
  description = "The number of descriptors in each completion queue."
  default     = 1 # range: 1-256
}
variable "vnic_eth_rx_count" {
  type        = number
  description = "The number of queue resources to allocate."
  default     = 8 # range: 1-1000
}
variable "vnic_eth_rx_ring_size" {
  type        = number
  description = "The number of descriptors in each queue."
  default     = 4096 # range: 64-4096 
}
variable "vnic_eth_tx_count" {
  type        = number
  description = "The number of queue resources to allocate."
  default     = 8 # range: 1-1000
}
variable "vnic_eth_tx_ring_size" {
  type        = number
  description = "The number of descriptors in each queue."
  default     = 4096 # range: 64-4096 
}
variable "vnic_eth_adapter_rss_settings" {
  type        = bool
  description = "Receive Side Scaling allows the incoming traffic to be spread across multiple CPU cores."
  default     = true
}


# vnic_eth_if_policy
# In-progress 
variable "vnic_eth_if_cdn_nr_source" {
  type        = string
  description = "Consistent Device Naming configuration for the virtual NIC.Source of the CDN."
  default     = "vnic" # options: vnic, user, vnic - Source of the CDN is the same as the vNIC name.* user - Source of the CDN is specified by the user.
}
# variable "vnic_eth_if_cdn_value" {
#   type        = string
#   description = "The CDN value entered in case of user defined mode."
#   default     = "eth0"
# }
variable "vnic_eth_if_vmq_enabled" {
  type        = bool
  description = "Enables VMQ feature on the virtual interface."
  default     = false
}

# vnic_eth_network_policy
variable "vnic_eth_network_target_platform" {
  type        = string
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight."
  default     = "Standalone" # options: Standalone, FIAttached
}
variable "vnic_eth_network_vlan_mode" {
  type        = string
  description = "Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic."
  default     = "ACCESS" # Options: ACCESS, TRUNK 
}
variable "vnic_eth_network_vlan_default" {
  type        = number
  description = "Native VLAN ID of the virtual interface or the corresponding vethernet on the peer Fabric Interconnect to which the virtual interface is connected. Setting the ID to 0 will not associate any native VLAN to the traffic on the virtual interface."
  default     = 1 # Options: 0-4094
}


# vnic_eth_qos_policy
variable "vnic_eth_qos_mut" {
  type        = number
  description = "The Maximum Transmission Unit (MTU) or packet size that the virtual interface accepts."
  default     = 9000 # Range: 1500-9000
}
variable "vnic_eth_qos_rate_limit" {
  type        = number
  description = "The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off."
  default     = 0 # Options: 0-100000
}
variable "vnic_eth_qos_trust_host_cos" {
  type        = bool
  description = "Enables usage of the Class of Service provided by the operating system."
  default     = false
}
variable "vnic_eth_qos_cos" {
  type        = number
  description = "Class of Service to be associated to the traffic on the virtual interface."
  default     = 0 # Options: 0-6 
}
# Applicable for B-series 
variable "vnic_eth_qos_burst" {
  type        = number
  description = "The burst traffic, in bytes, allowed on the vNIC."
  default     = 1024 # Range: 1024-1000000
}
variable "vnic_eth_qos_priority" {
  type        = string
  description = "The priortity matching the System QoS specified in the fabric profile"
  default     = "Best Effort" # Best Effort, FC, Platinum, Gold, Silver, Bronze,
}



# vnic_lan_conn_policy
variable "vnic_lan_conn_target_platform" {
  type        = string
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight."
  default     = "Standalone" # Options: Standalone, FIAttached
}

# service_profile 
variable "sp_action" {
  type        = string
  description = "service profile operations"
  default     = "No-op" # Options: # Deploy, Unassign
}

variable "sp_target_platform" {
  type        = string
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight."
  default     = "Standalone" # Options: Standalone, FIAttached
}


#vnic_fc_if_policy
# At a minimum two vHBAs are required named fc0 and fc1.
# name = Name of the virtual fibre channel interface.
variable "fc_vhba_type" {
  type        = string
  description = "vHBA Type configuration for SAN Connectivity Policy. This configuration is supported only on Cisco VIC 14XX series and higher series of adapters."
  default     = "fc-initiator" # fc-initiator, fc-nvme-initiator, fc-nvme-target, fc-target
}
variable "fc_vhba_slot_id" {
  type        = string
  description = "PCIe Slot where the VIC adapter is installed. Supported values are (1-15) and MLOM."
  default     = "MLOM"
}
variable "fc_vhba_uplink" {
  type        = number
  description = "Adapter port on which the virtual interface will be created."
  default     = 0
}
variable "fc_vhha_pci_link" {
  type        = number
  description = "The PCI Link used as transport for the virtual interface. All VIC adapters have a single PCI link except VIC 1385 which has two."
  default     = 0
}
variable "fc_vhba_pci_order" {
  type        = number
  description = "The order in which the virtual interface is brought up. The order assigned to an interface should be unique for all the Ethernet and Fibre-Channel interfaces on each PCI link on a VIC adapter. The maximum value of PCI order is limited by the number of virtual interfaces (Ethernet and Fibre-Channel) on each PCI link on a VIC adapter. All VIC adapters have a single PCI link except VIC 1385 which has two."
}
variable "fc_vhba_persistent_bindings" {
  type        = bool
  description = "Enables retention of LUN ID associations in memory until they are manually cleared."
  default     = false
}

# vnic_san_conn_policy
variable "vnic_san_conn_target_platform" {
  type        = string
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight."
  default     = "Standalone"
}

# variable "name" {
#   type        = string
#   description = ""
#   default     = ""
# }

