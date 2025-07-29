tenant_id             = ""
spoke_subscription_id = ""
workload_name         = "edac"
environment_name      = "DEV"
location              = "germanywestcentral"

/* ----------------------------------- Hub ---------------------------------- */

hub_subscription_id                 = ""
hub_vnet_resource_id                = ""
firewall_private_ip_address         = ""
log_analytics_workspace_resource_id = ""

/* ------------------------------- Networking ------------------------------- */

spoke_vnet_address_prefix = ""
spoke_vnet_dns_servers    = ["<firewall-private-ip-address>"]

// Subnets
application_gateway_subnet_address_prefix = ""
management_subnet_address_prefix          = ""
master_node_subnet_address_prefix         = ""
worker_node_subnet_address_prefix         = ""
key_vault_subnet_address_prefix           = ""

// local_development_deployer_ip_address = "" // IP address of the deployer. This is needed for the Key Vault in case we are running the deployment outside of the private network.

/* ------------------------------- Private DNS ------------------------------ */

// Needed if the disk encryption set is deployed or if the Key Vault is deployed
key_vault_private_dns_zone_resource_id = ""

// Needed if we want to deploy the Arc Private Link Scope
# privatelink_dp_kubernetesconfiguration_private_dns_zone_resource_id = "" # Optional
# privatelink_guestconfiguration_private_dns_zone_resource_id         = "" # Optional
# privatelink_his_arc_private_dns_zone_resource_id                    = "" # Optional

/* --------------------------- Disk Encryption Set -------------------------- */

deploy_security_key_vault  = false
deploy_disk_encryption_set = false

/* ---------------------------- Workload Specific --------------------------- */

aro_cluster_version      = "4.14.38"
aro_master_nodes_vm_size = "Standard_D8s_v5"
aro_worker_nodes_count   = 3
aro_worker_nodes_vm_size = "Standard_D8s_v5"