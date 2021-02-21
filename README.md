# intersight-terraform-C-Series
Intersight UCS C-series configuration using terraform

Create Server-profile and associated policies using terraform and assing to a server. 

Below is a list of what is available in this repo: 

-Create Service-Profile 

We can choose the below policies during Service-profile creation: 
Note: Policies with *NA* at the end are not created yet. Please use the terraform intersight provider for the same. 

- Compute Configuration  Policies
BIOS
Boot Order 
NTP 
Persistent Memory *NA*
Virtual Media 

- Management Configuration  Policies
-- Device Connector 
IPMI over LAN 
LDAP 
Local User  *NA*
Network Connectivity 
Serial Over LAN 
SMTP 
SNMP 
SSH 
Syslog 
Virtual KVM 

- Storage Configuration Policies
SD Card *NA*
Storage 

- Network Configuration  Policies
Adapter Configuration 
LAN Connectivity 
SAN Connectivity 
vNICs & vHBAs placement *

