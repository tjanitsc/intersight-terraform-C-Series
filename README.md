# Intersight UCS C-series configuration using terraform
* This module creates a UCS C-series Server-profile and its related policies in intersight and assign's to a server based on serial number. 
* It doesn't deploy the server-profile. That needs to be done manually or change the sp_action variable. 


## Below is a list of what is available in this repo: 

- Create Service-Profile 

We can choose the below policies during Service-profile creation: 
  - Note: Policies with *NA* at the end are not created yet. Please use the terraform intersight provider for the same. 

- Compute Configuration  Policies
  - BIOS
  - Boot Order 
  - NTP 
  - Persistent Memory *NA*
  - Virtual Media 

- Management Configuration  Policies
  - Device Connector 
  - IPMI over LAN 
  - LDAP 
  - Local User  *NA*
  - Network Connectivity 
  - Serial Over LAN 
  - SMTP 
  - SNMP 
  - SSH 
  - Syslog 
  - Virtual KVM 

- Storage Configuration Policies
  - SD Card *NA*
  - Storage 

- Network Configuration  Policies
  - Adapter Configuration 
  - LAN Connectivity 
  - SAN Connectivity 
  - vNICs & vHBAs placement *


## Requirements
* Terraform v0.13.5
* git 

## Usage
* Create an account in intersight.com. 
* Login to Intersight, go to settings and generate API key. Download the SecretKey.txt file and copy the API key. 
* Download and install Terraform
<https://www.terraform.io/downloads.html>
* Clone the repository
```txt
git clone https://github.com/sandkum5/intersight-terraform-C-Series.git
cd ucsc-policies
```

* Copy the SecretKye.txt file in the hx-edge directory. 
* Add the API Key to the api_key variable and the rest of the environment variables in the `<env>`.tfvars template files. Filename can be re-named as `<new-filename>`.tfvars.

* Initialize Terraform. 
  Note: This step automatically downloads intersight provider plugin. 

```txt
terraform init
```

* Create Terraform exacution plan

```txt
terraform plan
```

* Apply the configuration

```txt
terraform apply
```

When asked to enter a value, enter **"yes"**.

* Destroy the Terraform managed infrastructure

```txt
terraform destroy
```

To get more details on Intersight, terraform provider for intersight, how to create an intersight account, how to Generate API keys, refer: 
https://www.cisco.com/c/en/us/products/collateral/servers-unified-computing/ucs-c-series-rack-servers/2201041-intersight-terrafirma-wp.html 


## Terraform Workspaces 
* Use terraform workspaces to reuse the same config file for different environments. 

* Create a new workspace : 
```txt
  terraform workspace new WORKSPACE_NAME      # creates and moves to the new workspace 
```
* To list workspaces     
```txt
  terraform workspace list          # "*" indicates the current selected workspace
```
* To switch workspace    
```txt
terraform workspace select WORKSPACE_NAME     # Move to a different namespace
```

* Create a separate <env_name>.tfvars file for each environment 
* Use below commands in the respective workspace to create the policies. 
```txt
terraform plan -var-file=<env_name>.tfvars   
terraform apply -var-file=<env_name>.tfvars
```
* Use the provided sample env.tfvars template for all the environment variables configuration. 



### Additional intersight modules: 
https://github.com/CiscoDevNet/intersight-terraform-modules

https://github.com/sandkum5/terraform-intersight-hx-edge-deploy

https://github.com/sandkum5/terraform_intersight_os_install
