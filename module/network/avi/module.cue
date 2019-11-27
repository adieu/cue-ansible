package avi

avi_backup :: {

	// Unique object identifier of the object.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Url to download the backup file.

	local_file_url?: string

	// Url to download the backup file.

	remote_file_url?: string

	// Scheduler information.
	// It is a reference to an object of type scheduler.

	scheduler_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// Unix timestamp of when the backup file is created.

	timestamp?: string

	// Avi controller URL of the object.

	url?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Backupconfiguration information.
	// It is a reference to an object of type backupconfiguration.

	backup_config_ref?: string

	// The file name of backup.

	file_name: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string
}

avi_backupconfiguration :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Local backup.

	save_local?: bool

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Aws bucket.
	// Field introduced in 18.2.3.

	aws_bucket_id?: string

	// Prefix of the exported configuration file.
	// Field introduced in 17.1.1.

	backup_file_prefix?: string

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Aws access key id.
	// Field introduced in 18.2.3.

	aws_access_key?: string

	// Passphrase of backup configuration.

	backup_passphrase?: string

	// Rotate the backup files based on this count.
	// Allowed values are 1-20.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	maximum_backups_stored?: string

	// Directory at remote destination with write permission for ssh user.

	remote_directory?: string

	// Remote destination.

	remote_hostname?: string

	// Access credentials for remote destination.
	// It is a reference to an object of type cloudconnectoruser.

	ssh_user_ref?: string

	// Aws secret access key.
	// Field introduced in 18.2.3.

	aws_secret_access?: string

	// Name of backup configuration.

	name: string

	// Remote backup.

	upload_to_remote_host?: bool

	// Cloud backup.
	// Field introduced in 18.2.3.

	upload_to_s3?: bool

	// Unique object identifier of the object.

	uuid?: string
}

avi_network :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// List of subnet.

	configured_subnets?: string

	// Boolean flag to set vcenter_dvs.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	vcenter_dvs?: bool

	// It is a reference to an object of type vimgrnwruntime.

	vimgrnw_ref?: string

	// It is a reference to an object of type vrfcontext.

	vrf_context_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Select the ip address management scheme for this network.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	dhcp_enabled?: bool

	// Enable ipv6 auto configuration.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	ip6_autocfg_enabled?: bool

	// Boolean flag to set synced_from_se.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	synced_from_se?: bool

	// Avi controller URL of the object.

	url?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// When selected, excludes all discovered subnets in this network from consideration for virtual service placement.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_discovered_subnets?: bool

	// Name of the object.

	name: string

	// Unique object identifier of the object.

	uuid?: string
}

avi_serverautoscalepolicy :: {

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// User defined description for the object.

	description?: string

	// Use avi intelligent autoscale algorithm where autoscale is performed by comparing load on the pool against estimated capacity of all the servers.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	intelligent_autoscale?: bool

	// Name of the object.

	name: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Trigger scaleout when alerts due to any of these alert configurations are raised.
	// It is a reference to an object of type alertconfig.

	scaleout_alertconfig_refs?: string

	// The state that should be applied on the entity.

	state?: string

	// Maximum number of servers to scalein simultaneously.
	// The actual number of servers to scalein is chosen such that target number of servers is always more than or equal to the min_size.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	max_scalein_adjustment_step?: string

	// Maximum number of servers to scaleout simultaneously.
	// The actual number of servers to scaleout is chosen such that target number of servers is always less than or equal to the max_size.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	max_scaleout_adjustment_step?: string

	// Maximum number of servers after scaleout.
	// Allowed values are 0-400.

	max_size?: string

	// No scale-in happens once number of operationally up servers reach min_servers.
	// Allowed values are 0-400.

	min_size?: string

	// Use predicted load rather than current load.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	use_predicted_load?: bool

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Maximum extra capacity as percentage of load used by the intelligent scheme.
	// Scalein is triggered when available capacity is more than this margin.
	// Allowed values are 1-99.
	// Default value when not specified in API or module is interpreted by Avi Controller as 40.

	intelligent_scalein_margin?: string

	// Minimum extra capacity as percentage of load used by the intelligent scheme.
	// Scaleout is triggered when available capacity is less than this margin.
	// Allowed values are 1-99.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	intelligent_scaleout_margin?: string

	// Cooldown period during which no new scaleout is triggered to allow previous scaleout to successfully complete.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	scaleout_cooldown?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Trigger scalein when alerts due to any of these alert configurations are raised.
	// It is a reference to an object of type alertconfig.

	scalein_alertconfig_refs?: string

	// Cooldown period during which no new scalein is triggered to allow previous scalein to successfully complete.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	scalein_cooldown?: string
}

avi_trafficcloneprofile :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// It is a reference to an object of type cloud.
	// Field introduced in 17.1.1.

	cloud_ref?: string

	// Name for the traffic clone profile.
	// Field introduced in 17.1.1.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Uuid of the traffic clone profile.
	// Field introduced in 17.1.1.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Field introduced in 17.1.1.

	clone_servers?: string

	// Specifies if client ip needs to be preserved to clone destination.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	preserve_client_ip?: bool

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_alertemailconfig :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Alerts are copied to the comma separated list of  email recipients.

	cc_emails?: string

	// User defined description for the object.

	description?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// A user-friendly name of the email notification service.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Alerts are sent to the comma separated list of  email recipients.

	to_emails: string

	// Avi controller URL of the object.

	url?: string
}

avi_cloudconnectoruser :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Field introduced in 17.2.1.

	azure_serviceprincipal?: string

	// Credentials for google cloud platform.
	// Field introduced in 18.2.1.

	gcp_credentials?: string

	// The state that should be applied on the entity.

	state?: string

	// Credentials for tencent cloud.
	// Field introduced in 18.2.3.

	tencent_credentials?: string

	// Avi controller URL of the object.

	url?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Field introduced in 17.2.1.

	azure_userpass?: string

	// Name of the object.

	name: string

	// Credentials for oracle cloud infrastructure.
	// Field introduced in 18.2.1,18.1.3.

	oci_credentials?: string

	// Private_key of cloudconnectoruser.

	private_key?: string

	// Public_key of cloudconnectoruser.

	public_key?: string

	// Unique object identifier of the object.

	uuid?: string
}

avi_stringgroup :: {

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the string group.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for the object.

	description?: string

	// Configure key value in the string group.

	kv?: string

	// Name of the string group.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Type of stringgroup.
	// Enum options - SG_TYPE_STRING, SG_TYPE_KEYVAL.
	// Default value when not specified in API or module is interpreted by Avi Controller as SG_TYPE_STRING.

	type: string
}

avi_vsdatascriptset :: {

	// Uuid of pools that could be referred by vsdatascriptset objects.
	// It is a reference to an object of type pool.

	pool_refs?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the virtual service datascript collection.

	uuid?: string

	// List of protocol parsers that could be referred by vsdatascriptset objects.
	// It is a reference to an object of type protocolparser.
	// Field introduced in 18.2.3.

	protocol_parser_refs?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Datascripts to execute.

	datascript?: string

	// Uuid of ip groups that could be referred by vsdatascriptset objects.
	// It is a reference to an object of type ipaddrgroup.

	ipgroup_refs?: string

	// The state that should be applied on the entity.

	state?: string

	// Uuid of string groups that could be referred by vsdatascriptset objects.
	// It is a reference to an object of type stringgroup.

	string_group_refs?: string

	// Creator name.
	// Field introduced in 17.1.11,17.2.4.

	created_by?: string

	// User defined description for the object.

	description?: string

	// Name for the virtual service datascript collection.

	name: string

	// Uuid of pool groups that could be referred by vsdatascriptset objects.
	// It is a reference to an object of type poolgroup.

	pool_group_refs?: string
}

avi_actiongroupconfig :: {

	// Select the syslog notification configuration to use when sending alerts via syslog.
	// It is a reference to an object of type alertsyslogconfig.

	syslog_config_ref?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for the object.

	description?: string

	// Select the snmp trap notification to use when sending alerts via snmp trap.
	// It is a reference to an object of type snmptrapprofile.

	snmp_trap_profile_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// Reference of the action script configuration to be used.
	// It is a reference to an object of type alertscriptconfig.

	action_script_config_ref?: string

	// Generate alert only to external destinations.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	external_only: bool

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// Trigger notification to autoscale manager.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	autoscale_trigger_notification?: bool

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Name of the object.

	name: string

	// Select the email notification configuration to use when sending alerts via email.
	// It is a reference to an object of type alertemailconfig.

	email_config_ref?: string

	// When an alert is generated, mark its priority via the alert level.
	// Enum options - ALERT_LOW, ALERT_MEDIUM, ALERT_HIGH.
	// Default value when not specified in API or module is interpreted by Avi Controller as ALERT_LOW.

	level: string
}

avi_ipaddrgroup :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Populate ip addresses from tasks of this marathon app.

	marathon_app_name?: string

	// The state that should be applied on the entity.

	state?: string

	// Configure ip address(es).

	addrs?: string

	// Name of the ip address group.

	name: string

	// Configure ip address range(s).

	ranges?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Populate the ip address ranges from the geo database for this country.

	country_codes?: string

	// User defined description for the object.

	description?: string

	// Configure (ip address, port) tuple(s).

	ip_ports?: string

	// Configure ip address prefix(es).

	prefixes?: string

	// Populate ip addresses from members of this cisco apic epg.

	apic_epg_name?: string

	// Task port associated with marathon service port.
	// If marathon app has multiple service ports, this is required.
	// Else, the first task port is used.

	marathon_service_port?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the ip address group.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string
}

avi_serviceenginegroup :: {

	// Dedicate the core that handles packet receive/transmit from the network to just the dispatching function.
	// Don't use it for tcp/ip and ssl functions.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	dedicated_dispatcher_core?: bool

	// Use virtual mac address for interfaces on which floating interface ips are placed.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	enable_vmac?: bool

	// When vip_asg is set, vip configuration will be managed by avi.user will be able to configure vip_asg or vips individually at the time of create.
	// Field introduced in 17.2.12, 18.1.2.

	vip_asg?: string

	// Number of sideband threads per se.
	// Allowed values are 1-128.
	// Field introduced in 16.5.2, 17.1.9, 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	se_sb_threads?: string

	// Enum options - vcenter_datastore_any, vcenter_datastore_local, vcenter_datastore_shared.
	// Default value when not specified in API or module is interpreted by Avi Controller as VCENTER_DATASTORE_ANY.

	vcenter_datastore_mode?: string

	// Number of vcpus for each of the service engine virtual machines.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	vcpus_per_se?: string

	// If serviceenginegroup is configured for legacy 1+1 active standby ha mode, floating ip's will be advertised only by the active se in the pair.
	// Virtual services in this group must be disabled/enabled for any changes to the floating ip's to take effect.
	// Only active se hosting vs tagged with active standby se 1 tag will advertise this floating ip when manual load distribution is enabled.

	floating_intf_ip?: string

	// If no license type is specified then default license enforcement for the cloud type is chosen.
	// Enum options - LIC_BACKEND_SERVERS, LIC_SOCKETS, LIC_CORES, LIC_HOSTS, LIC_SE_BANDWIDTH, LIC_METERED_SE_BANDWIDTH.
	// Field introduced in 17.2.5.

	license_type?: string

	// Per-app se mode is designed for deploying dedicated load balancers per app (vs).
	// In this mode, each se is limited to a max of 2 vss.
	// Vcpus in per-app ses count towards licensing usage at 25% rate.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	per_app?: bool

	// Reboot the system if the se is stopped.
	// Field introduced in 17.2.16,18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	reboot_on_stop?: bool

	// Amount of se memory in gb until which shared memory is collected in core archive.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 8.

	archive_shm_limit?: string

	// Percentage of memory for connection state.
	// This will come at the expense of memory used for http in-memory cache.
	// Allowed values are 10-90.
	// Default value when not specified in API or module is interpreted by Avi Controller as 50.

	connection_memory_percentage?: string

	// Memory pool size used for waf.
	// Field introduced in 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 64.

	waf_mempool_size?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// During se upgrade, time to wait for the scaled-in se to drain existing flows before marking the scalein done.
	// Default value when not specified in API or module is interpreted by Avi Controller as 30.

	vs_scalein_timeout_for_upgrade?: string

	// Enable memory pool for waf.
	// Field introduced in 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	waf_mempool?: bool

	// By default, avi creates and manages security groups along with custom sg provided by user.
	// Set this to true to disallow avi to create and manage new security groups.
	// Avi will only make use of custom security groups provided by user.
	// This option is only supported for aws cloud type.
	// Field introduced in 17.2.13,18.1.4,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_avi_securitygroups?: bool

	// Instance/flavor name for se instance.

	instance_flavor?: string

	// Management subnet to use for avi service engines.

	mgmt_subnet?: string

	// Number of changes in num flow cores sum to ignore.
	// Default value when not specified in API or module is interpreted by Avi Controller as 8.

	num_flow_cores_sum_changes_to_ignore?: string

	// Capacities of se for auto rebalance for each criteria.
	// Field introduced in 17.2.4.

	auto_rebalance_capacity_per_se?: string

	// Applicable to azure platform only.
	// Maximum number of rules per azure lb.
	// Field introduced in 17.2.12, 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 150.

	max_rules_per_lb?: string

	// Maximum number of active service engines for the virtual service.
	// Allowed values are 1-64.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	max_scaleout_per_vs?: string

	// Ipv6 subnets assigned to the se group.
	// Required for vs group placement.
	// Field introduced in 18.1.1.

	service_ip6_subnets?: string

	// Service engines in active/standby mode for ha failover.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	active_standby?: bool

	// In compact placement, virtual services are placed on existing ses until max_vs_per_se limit is reached.
	// Enum options - PLACEMENT_ALGO_PACKED, PLACEMENT_ALGO_DISTRIBUTED.
	// Default value when not specified in API or module is interpreted by Avi Controller as PLACEMENT_ALGO_PACKED.

	algo?: string

	// Enable active health monitoring from the standby se for all placed virtual services.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	hm_on_standby?: bool

	// Iptables rules.

	iptables?: string

	// If placement mode is 'auto', virtual services are automatically placed on service engines.
	// Enum options - PLACEMENT_MODE_AUTO.
	// Default value when not specified in API or module is interpreted by Avi Controller as PLACEMENT_MODE_AUTO.

	placement_mode?: string

	// Duration to preserve unused service engine virtual machines before deleting them.
	// If traffic to a virtual service were to spike up abruptly, this se would still be available to be utilized again rather than creating a new se.
	// If this value is set to 0, controller will never delete any ses and administrator has to manually cleanup unused ses.
	// Allowed values are 0-525600.
	// Default value when not specified in API or module is interpreted by Avi Controller as 120.

	se_deprovision_delay?: string

	// Avi controller URL of the object.

	url?: string

	// Use standard sku azure load balancer.
	// By default cloud level flag is set.
	// If not set, it inherits/uses the use_standard_alb flag from the cloud.
	// Field introduced in 18.2.3.

	use_standard_alb?: bool

	// Override default hypervisor.
	// Enum options - DEFAULT, VMWARE_ESX, KVM, VMWARE_VSAN, XEN.

	hypervisor?: string

	// Ignore rtt samples if it is above threshold.
	// Field introduced in 17.1.6,17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5000.

	ignore_rtt_threshold?: string

	// Max bytes that can be allocated in a single mempool.
	// Field introduced in 18.1.5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 64.

	max_memory_per_mempool?: string

	// Minimum number of active service engines for the virtual service.
	// Allowed values are 1-64.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	min_scaleout_per_vs?: string

	// Boolean flag to set mem_reserve.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	mem_reserve?: bool

	// Indicates the percent of memory reserved for connections.
	// Allowed values are 0-100.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	minimum_connection_memory?: string

	// Vcenterclusters settings for serviceenginegroup.

	vcenter_clusters?: string

	// Advertise reach-ability of backend server networks via adc through bgp for default gateway feature.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	advertise_backend_networks?: bool

	// Frequency of rebalance, if 'auto rebalance' is enabled.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	auto_rebalance_interval?: string

	// Avi management network name.

	openstack_mgmt_network_name?: string

	// Udp port for se_dp ipc in docker bridge mode.
	// Field introduced in 17.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1500.

	se_ipc_udp_port?: string

	// List of vcenterdatastore.

	vcenter_datastores?: string

	// Field introduced in 17.1.1.

	openstack_availability_zones?: string

	// Enable routing via service engine datapath.
	// When disabled, routing is done by the linux kernel.
	// Ip routing needs to be enabled in service engine group for se routing to be effective.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	se_routing?: bool

	// Determines if dpdk library should be used or not   0  automatically determine based on hypervisor type 1  use dpdk if pcap is not enabled 2
	// don't use dpdk.
	// Allowed values are 0-2.
	// Field introduced in 18.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_use_dpdk?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Custom tag will be used to create the tags for se instance in aws.
	// Note this is not the same as the prefix for se name.

	custom_tag?: string

	// Maximum number of flow table entries that have not completed tcp three-way handshake yet.
	// Field introduced in 17.2.5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	flow_table_new_syn_max_entries?: string

	// Number of dispatcher cores (0,1,2,4,8 or 16).
	// If set to 0, then number of dispatcher cores is deduced automatically.
	// Allowed values are 0,1,2,4,8,16.
	// Field introduced in 17.2.12, 18.1.3, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	num_dispatcher_cores?: string

	// Sideband traffic will be handled by a dedicated core.
	// Field introduced in 16.5.2, 17.1.9, 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	se_sb_dedicated_core?: bool

	// Parameters to place virtual services on only a subset of the cores of an se.
	// Field introduced in 17.2.5.

	vss_placement?: string

	// Custom security groups to be associated with management vnic for se instances in openstack and aws clouds.
	// Field introduced in 17.1.3.

	custom_securitygroups_mgmt?: string

	// Program se security group ingress rules to allow vip data access from remote cidr type.
	// Enum options - SG_INGRESS_ACCESS_NONE, SG_INGRESS_ACCESS_ALL, SG_INGRESS_ACCESS_VPC.
	// Field introduced in 17.1.5.
	// Default value when not specified in API or module is interpreted by Avi Controller as SG_INGRESS_ACCESS_ALL.

	ingress_access_data?: string

	// Maximum number of virtual services that can be placed on a single service engine.
	// East west virtual services are excluded from this limit.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	max_vs_per_se?: string

	// Required available config memory to apply any configuration.
	// Allowed values are 0-90.
	// Field deprecated in 18.1.2.
	// Field introduced in 18.1.1.

	minimum_required_config_memory?: string

	// Threshold for input packet receive errors in pcap mode exceeding which a pcap reinit is triggered.
	// If not set, an unconditional reinit is performed.
	// This value is checked every pcap_reinit_frequency interval.
	// Field introduced in 17.2.13, 18.1.3, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_pcap_reinit_threshold?: string

	// Unique object identifier of the object.

	uuid?: string

	// If set, virtual services will be automatically migrated when load on an se is less than minimum or more than maximum thresholds.
	// Only alerts are generated when the auto_rebalance is not set.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	auto_rebalance?: bool

	// Boolean flag to set cpu_reserve.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	cpu_reserve?: bool

	// Specifies the license tier which would be used.
	// This field by default inherits the value from cloud.
	// Enum options - ENTERPRISE_16, ENTERPRISE_18.
	// Field introduced in 17.2.5.

	license_tier?: string

	// This setting limits the number of non-significant logs generated per second per core on this se.
	// Default is 100 logs per second.
	// Set it to zero (0) to disable throttling.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	non_significant_log_throttle?: string

	// Enable accelerated networking option for azure se.
	// Accelerated networking enables single root i/o virtualization (sr-iov) to a se vm.
	// This improves networking performance.
	// Field introduced in 17.2.14,18.1.5,18.2.1.

	accelerated_networking?: bool

	// Custom security groups to be associated with data vnics for se instances in openstack and aws clouds.
	// Field introduced in 17.1.3.

	custom_securitygroups_data?: string

	// Number of threads to use for log streaming.
	// Allowed values are 1-100.
	// Field introduced in 17.2.12, 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	n_log_streaming_threads?: string

	// Field deprecated in 17.1.1.

	openstack_availability_zone?: string

	// The state that should be applied on the entity.

	state?: string

	// Timeout in seconds for service engine to sendscaleout ready notification of a virtual service.
	// Allowed values are 0-60.
	// Field introduced in 18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 25.

	vs_se_scaleout_ready_timeout?: string

	// During se upgrade in a legacy active/standby segroup, time to wait for the new primary se to accept flows before marking the switchover done.
	// Field introduced in 17.2.13,18.1.4,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	vs_switchover_timeout?: string

	// Bgp peer state update interval.
	// Allowed values are 5-100.
	// Field introduced in 17.2.14,18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	bgp_state_update_interval?: string

	// Enable config debugs on all cores of se.
	// Field introduced in 17.2.13,18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	config_debugs_on_all_cores?: bool

	// Number of entries in the free list.
	// Field introduced in 17.2.10, 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1024.

	free_list_size?: string

	// Subnets assigned to the se group.
	// Required for vs group placement.
	// Field introduced in 17.1.1.

	service_ip_subnets?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// Amount of memory for each of the service engine virtual machines.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2048.

	memory_per_se?: string

	// Management network to use for avi service engines.
	// It is a reference to an object of type network.

	mgmt_network_ref?: string

	// Boolean flag to set vcenter_datastores_include.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	vcenter_datastores_include?: bool

	// Set of criteria for se auto rebalance.
	// Enum options - SE_AUTO_REBALANCE_CPU, SE_AUTO_REBALANCE_PPS, SE_AUTO_REBALANCE_MBPS, SE_AUTO_REBALANCE_OPEN_CONNS, SE_AUTO_REBALANCE_CPS.
	// Field introduced in 17.2.3.

	auto_rebalance_criteria?: string

	// Enable vip on all interfaces of se.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_vip_on_all_interfaces?: bool

	// Extra config memory to support large geo db configuration.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	extra_shared_config_memory?: string

	// Enable aggressive failover configuration for ha.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	aggressive_failure_detection?: bool

	// Redistribution of virtual services from the takeover se to the replacement se can cause momentary traffic loss.
	// If the auto-redistribute load option is left in its default off state, any desired rebalancing requires calls to rest api.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	auto_redistribute_active_standby_load?: bool

	// Multiplier for se threads based on vcpu.
	// Allowed values are 1-10.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	se_thread_multiplier?: string

	// This setting limits the number of significant logs generated per second per core on this se.
	// Default is 100 logs per second.
	// Set it to zero (0) to disable throttling.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	significant_log_throttle?: string

	// Subnet used to spin up the data nic for service engines, used only for azure cloud.
	// Overrides the cloud level setting for service engine subnet.
	// Field introduced in 18.2.3.

	data_network_id?: string

	// Minimum number of services engines in this group (relevant for se autorebalance only).
	// Allowed values are 0-1000.
	// Field introduced in 17.2.13,18.1.3,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	min_se?: string

	// Enables lookahead mode of packet receive in pcap mode.
	// Introduced to overcome an issue with hv_netvsc driver.
	// Lookahead mode attempts to ensure that application and kernel's view of the receive rings are consistent.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	se_pcap_lookahead?: bool

	// Indicates the percent of memory reserved for config updates.
	// Allowed values are 0-100.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 15.

	memory_for_config_update?: string

	// Enable or disable real time se metrics.

	realtime_se_metrics?: string

	// Frequency in seconds at which periodically a pcap reinit check is triggered.
	// May be used in conjunction with the configuration pcap_reinit_threshold.
	// (valid range   15 mins - 12 hours, 0 - disables).
	// Allowed values are 900-43200.
	// Special values are 0- 'disable'.
	// Field introduced in 17.2.13, 18.1.3, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_pcap_reinit_frequency?: string

	// Indicates the percent of config memory used for config updates.
	// Allowed values are 0-90.
	// Field deprecated in 18.1.2.
	// Field introduced in 18.1.1.

	additional_config_memory?: string

	// A percent value of total se memory reserved for application learning.
	// This is an se bootup property and requires se restart.
	// Allowed values are 0 - 10.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	app_learning_memory_percent?: string

	// Allocate all the cpu cores for the service engine virtual machines  on the same cpu socket.
	// Applicable only for vcenter cloud.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	cpu_socket_affinity?: bool

	// Amount of disk space for each of the service engine virtual machines.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	disk_per_se?: string

	// When cpu usage on an se falls below the minimum threshold, virtual services hosted on the se may be consolidated onto other underutilized ses.
	// After consolidation, unused service engines may then be eligible for deletion.
	// Allowed values are 20-60.
	// Default value when not specified in API or module is interpreted by Avi Controller as 30.

	min_cpu_usage?: string

	// Amount of extra memory to be reserved for use by the operating system on a service engine.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	os_reserved_memory?: string

	// Select the se bandwidth for the bandwidth license.
	// Enum options - SE_BANDWIDTH_UNLIMITED, SE_BANDWIDTH_25M, SE_BANDWIDTH_200M, SE_BANDWIDTH_1000M, SE_BANDWIDTH_10000M.
	// Field introduced in 17.2.5.

	se_bandwidth_type?: string

	// Maximum number of virtualservices for which heartbeat messages are aggregated in one packet.
	// Allowed values are 1-1024.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 256.

	se_vs_hb_max_vs_in_pkt?: string

	// A percent value of total se memory reserved for application caching.
	// This is an se bootup property and requires se restart.
	// Allowed values are 0 - 100.
	// Special values are 0- 'disable'.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	app_cache_percent?: string

	// Number of instructions before datascript times out.
	// Allowed values are 0-100000000.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1000000.

	datascript_timeout?: string

	// If set, disable the config memory check done in service engine.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_se_memory_check?: bool

	// Value of a (key, value) pair identifying a label for a set of nodes usually in container clouds.
	// Needs to be specified together with host_attribute_key.

	host_attribute_value?: string

	// Amount of memory reserved on se for waf learning.
	// Cannot exceed 5% of se memory.
	// Field deprecated in 18.2.3.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	waf_learning_memory?: string

	// (this is a beta feature).
	// Enable hsm key priming.
	// If enabled, key handles on the hsm will be synced to se before processing client connections.
	// Field introduced in 17.2.7, 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	enable_hsm_priming?: bool

	// Program se security group ingress rules to allow ssh/icmp management access from remote cidr type.
	// Enum options - SG_INGRESS_ACCESS_NONE, SG_INGRESS_ACCESS_ALL, SG_INGRESS_ACCESS_VPC.
	// Field introduced in 17.1.5.
	// Default value when not specified in API or module is interpreted by Avi Controller as SG_INGRESS_ACCESS_ALL.

	ingress_access_mgmt?: string

	// Time to wait for the scaled out se to become ready before marking the scaleout done.
	// Default value when not specified in API or module is interpreted by Avi Controller as 600.

	vs_scaleout_timeout?: string

	// It is a reference to an object of type hardwaresecuritymodulegroup.

	hardwaresecuritymodulegroup_ref?: string

	// Minimum required shared memory to apply any configuration.
	// Allowed values are 0-100.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	shm_minimum_config_memory?: string

	// Ensure primary and secondary service engines are deployed on different physical hosts.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	vs_host_redundancy?: bool

	// Time to wait for the scaled in se to drain existing flows before marking the scalein done.
	// Default value when not specified in API or module is interpreted by Avi Controller as 30.

	vs_scalein_timeout?: string

	// Key of a (key, value) pair identifying a label for a set of nodes usually in container clouds.
	// Needs to be specified together with host_attribute_value.
	// Ses can be configured differently including ha modes across different se groups.
	// May also be used for isolation between different classes of virtualservices.
	// Virtualservices' se group may be specified via annotations/labels.
	// A openshift/kubernetes namespace maybe annotated with a matching se group label as openshift.io/node-selector  apptype=prod.
	// When multiple se groups are used in a cloud with host attributes specified,just a single se group can exist as a match-all se group without a
	// host_attribute_key.

	host_attribute_key?: string

	// Name of the object.

	name: string

	// Maximum number of aggregated vs heartbeat packets to send in a batch.
	// Allowed values are 1-256.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 64.

	se_vs_hb_max_pkts_in_batch?: string

	// Ssl handshakes will be handled by dedicated ssl threads.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	async_ssl?: bool

	// Enable routing for this serviceenginegroup .
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	enable_routing?: bool

	// End local ephemeral port number for outbound connections.
	// Field introduced in 17.2.13, 18.1.5, 18.2.1.

	ephemeral_portrange_end?: string

	// Minimum required heap memory to apply any configuration.
	// Allowed values are 0-100.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 8.

	heap_minimum_config_memory?: string

	// Vcenterhosts settings for serviceenginegroup.

	vcenter_hosts?: string

	// Applicable to azure platform only.
	// Maximum number of public ips per azure lb.
	// Field introduced in 17.2.12, 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 30.

	max_public_ips_per_lb?: string

	// (beta) preprocess ssl client hello for sni hostname extension.if set to true, this will apply sni child's ssl protocol(s), if they are different
	// from sni parent's allowed ssl protocol(s).
	// Field introduced in 17.2.12, 18.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	ssl_preprocess_sni_hostname?: bool

	// Folder to place all the service engine virtual machines in vcenter.
	// Default value when not specified in API or module is interpreted by Avi Controller as AviSeFolder.

	vcenter_folder?: string

	// Excess service engine capacity provisioned for ha failover.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	buffer_se?: string

	// Maximum number of services engines in this group.
	// Allowed values are 0-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	max_se?: string

	// Timeout in milliseconds for flow probe entries.
	// Allowed values are 10-200.
	// Field introduced in 18.1.4, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	se_flow_probe_timer?: string

	// Determines if dsr from secondary se is active or not  0  automatically determine based on hypervisor type.
	// 1  disable dsr unconditionally.
	// 2  enable dsr unconditionally.
	// Allowed values are 0-2.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_tunnel_mode?: string

	// Multiplier for extra config to support large vs/pool config.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.0.

	extra_config_multiplier?: string

	// Management network uuid.

	openstack_mgmt_network_uuid?: string

	// Tcp port on se where echo service will be run.
	// Field introduced in 17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 7.

	se_probe_port?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Wait time for sending scaleout ready notification after virtual service is marked up.
	// In certain deployments, there may be an additional delay to accept traffic.
	// For example, for bgp, some time is needed for route advertisement.
	// Allowed values are 0-20.
	// Field introduced in 18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	vs_se_scaleout_additional_wait_time?: string

	// Start local ephemeral port number for outbound connections.
	// Field introduced in 17.2.13, 18.1.5, 18.2.1.

	ephemeral_portrange_start?: string

	// Enable the host gateway monitor when service engine is deployed as docker container.
	// Disabled by default.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	host_gateway_monitor?: bool

	// Select core with least load for new flow.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	least_load_core_selection?: bool

	// Flow probe retry count if no replies are received.
	// Allowed values are 0-5.
	// Field introduced in 18.1.4, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	se_flow_probe_retries?: string

	// Allow ses to be created using burst license.
	// Field introduced in 17.2.5.

	allow_burst?: bool

	// Number of async ssl threads per se_dp.
	// Allowed values are 1-16.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	async_ssl_threads?: string

	// User defined description for the object.

	description?: string

	// Disable generic receive offload (gro) in dpdk poll-mode driver packet receive path.
	// Gro is on by default on nics that do not support lro (large receive offload) or do not gain performance boost from lro.
	// Field introduced in 17.2.5, 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	disable_gro?: bool

	// Udp port for punted packets in docker bridge mode.
	// Field introduced in 17.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1501.

	se_remote_punt_udp_port?: string

	// Traceroute port range.
	// Field introduced in 17.2.8.

	se_tracert_port_range?: string

	// Determines if se-se ipc messages are encapsulated in a udp header  0  automatically determine based on hypervisor type.
	// 1  use udp encap unconditionally.
	// Allowed values are 0-1.
	// Field introduced in 17.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_udp_encap_ipc?: string

	// Udp port for tunneled packets from secondary to primary se in docker bridge mode.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1550.

	se_tunnel_udp_port?: string

	// Enable ses to elect a primary amongst themselves in the absence of a connectivity to controller.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	self_se_election?: bool

	// This setting limits the number of udf logs generated per second per core on this se.
	// Udf logs are generated due to the configured client log filters or the rules with logging enabled.
	// Default is 100 logs per second.
	// Set it to zero (0) to disable throttling.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	udf_log_throttle?: string

	// If set, virtual services will be placed on only a subset of the cores of an se.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	vss_placement_enabled?: bool

	// Stop using tcp/udp and ip checksum offload features of nics.
	// Field introduced in 17.1.14, 17.2.5, 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_csum_offloads?: bool

	// Use both the active and standby service engines for virtual service placement in the legacy active standby ha mode.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	distribute_load_active_standby?: bool

	// Determines if dpdk pool mode driver should be used or not   0  automatically determine based on hypervisor/nic type 1  unconditionally use dpdk
	// poll mode driver 2  don't use dpdk poll mode driver.
	// Allowed values are 0-2.
	// Field introduced in 18.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	se_dpdk_pmd?: string

	// Prefix to use for virtual machine name of service engines.
	// Default value when not specified in API or module is interpreted by Avi Controller as Avi.

	se_name_prefix?: string

	// High availability mode for all the virtual services using this service engine group.
	// Enum options - HA_MODE_SHARED_PAIR, HA_MODE_SHARED, HA_MODE_LEGACY_ACTIVE_STANDBY.
	// Default value when not specified in API or module is interpreted by Avi Controller as HA_MODE_SHARED.

	ha_mode?: string

	// Maximum disk capacity (in mb) to be allocated to an se.
	// This is exclusively used for debug and log data.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10000.

	log_disksz?: string

	// When cpu usage on an se exceeds this threshold, virtual services hosted on this se may be rebalanced to other ses to reduce load.
	// A new se may be created as part of this process.
	// Allowed values are 40-90.
	// Default value when not specified in API or module is interpreted by Avi Controller as 80.

	max_cpu_usage?: string

	// Dosthresholdprofile settings for serviceenginegroup.

	se_dos_profile?: string

	// Disable tcp segmentation offload (tso) in dpdk poll-mode driver packet transmit path.
	// Tso is on by default on nics that support it.
	// Field introduced in 17.2.5, 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	disable_tso?: bool

	// Distributes queue ownership among cores so multiple cores handle dispatcher duties.
	// Field introduced in 17.2.8.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	distribute_queues?: bool

	// Applicable only for azure cloud with basic sku lb.
	// If set, additional azure lbs will be automatically created if resources in existing lb are exhausted.
	// Field introduced in 17.2.10, 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	enable_multi_lb?: bool

	// If serviceenginegroup is configured for legacy 1+1 active standby ha mode, floating ip's will be advertised only by the active se in the pair.
	// Virtual services in this group must be disabled/enabled for any changes to the floating ip's to take effect.
	// Only active se hosting vs tagged with active standby se 2 tag will advertise this floating ip when manual load distribution is enabled.

	floating_intf_ip_se_2?: string

	// Frequency with which se publishes waf learning.
	// Allowed values are 1-43200.
	// Field deprecated in 18.2.3.
	// Field introduced in 18.1.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	waf_learning_interval?: string
}

avi_authprofile :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for the object.

	description?: string

	// Type of the auth profile.
	// Enum options - AUTH_PROFILE_LDAP, AUTH_PROFILE_TACACS_PLUS, AUTH_PROFILE_SAML, AUTH_PROFILE_PINGACCESS.

	type: string

	// Tacacs+ settings.

	tacacs_plus?: string

	// Avi controller URL of the object.

	url?: string

	// Http user authentication params.

	http?: string

	// Pingaccessagent uuid.
	// It is a reference to an object of type pingaccessagent.
	// Field introduced in 18.2.3.

	pa_agent_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Uuid of the auth profile.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Name of the auth profile.

	name: string

	// Saml settings.
	// Field introduced in 17.2.3.

	saml?: string

	// Ldap server and directory settings.

	ldap?: string
}

avi_cloud :: {

	// The state that should be applied on the entity.

	state?: string

	// Cloud type.
	// Enum options - CLOUD_NONE, CLOUD_VCENTER, CLOUD_OPENSTACK, CLOUD_AWS, CLOUD_VCA, CLOUD_APIC, CLOUD_MESOS, CLOUD_LINUXSERVER, CLOUD_DOCKER_UCP,
	// CLOUD_RANCHER, CLOUD_OSHIFT_K8S, CLOUD_AZURE, CLOUD_GCP.
	// Default value when not specified in API or module is interpreted by Avi Controller as CLOUD_NONE.

	vtype: string

	// Custom tags for all avi created resources in the cloud infrastructure.
	// Field introduced in 17.1.5.

	custom_tags?: string

	// Dockerconfiguration settings for cloud.

	docker_configuration?: string

	// Use static routes for vip side network resolution during virtualservice placement.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	enable_vip_static_routes?: bool

	// Specifies the default license tier which would be used by new se groups.
	// This field by default inherits the value from system configuration.
	// Enum options - ENTERPRISE_16, ENTERPRISE_18.
	// Field introduced in 17.2.5.

	license_tier?: string

	// Openstackconfiguration settings for cloud.

	openstack_configuration?: string

	// Dns records for vips are added/deleted based on the operational state of the vips.
	// Field introduced in 17.1.12.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	state_based_dns_registration?: bool

	// Field introduced in 17.2.1.

	azure_configuration?: string

	// Dns profile for east-west services.
	// It is a reference to an object of type ipamdnsproviderprofile.

	east_west_dns_provider_ref?: string

	// Google cloud platform configuration.
	// Field introduced in 18.2.1.

	gcp_configuration?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// If no license type is specified then default license enforcement for the cloud type is chosen.
	// The default mappings are container cloud is max ses, openstack and vmware is cores and linux it is sockets.
	// Enum options - LIC_BACKEND_SERVERS, LIC_SOCKETS, LIC_CORES, LIC_HOSTS, LIC_SE_BANDWIDTH, LIC_METERED_SE_BANDWIDTH.

	license_type?: string

	// Name of the object.

	name: string

	// Oshiftk8sconfiguration settings for cloud.

	oshiftk8s_configuration?: string

	// Cloudconnector polling interval for external autoscale groups.
	// Field introduced in 18.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	autoscale_polling_interval?: string

	// Dns profile for the cloud.
	// It is a reference to an object of type ipamdnsproviderprofile.

	dns_provider_ref?: string

	// Default prefix for all automatically created objects in this cloud.
	// This prefix can be overridden by the se-group template.

	obj_name_prefix?: string

	// Field deprecated in 18.2.2.

	mesos_configuration?: string

	// Unique object identifier of the object.

	uuid?: string

	// Boolean flag to set apic_mode.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	apic_mode?: bool

	// Ipam profile for east-west services.
	// Warning - please use virtual subnets in this ipam profile that do not conflict with the underlay networks or any overlay networks in the cluster.
	// For example in aws and gcp, 169.254.0.0/16 is used for storing instance metadata.
	// Hence, it should not be used in this profile.
	// It is a reference to an object of type ipamdnsproviderprofile.

	east_west_ipam_provider_ref?: string

	// Ipam profile for the cloud.
	// It is a reference to an object of type ipamdnsproviderprofile.

	ipam_provider_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Vcenterconfiguration settings for cloud.

	vcenter_configuration?: string

	// Select the ip address management scheme.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	dhcp_enabled?: bool

	// Prefer static routes over interface routes during virtualservice placement.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	prefer_static_routes?: bool

	// Rancherconfiguration settings for cloud.

	rancher_configuration?: string

	// Enable ipv6 auto configuration.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	ip6_autocfg_enabled?: bool

	// Linuxserverconfiguration settings for cloud.

	linuxserver_configuration?: string

	// Configuration parameters for nsx manager.
	// Field introduced in 17.1.1.

	nsx_configuration?: string

	// Proxyconfiguration settings for cloud.

	proxy_configuration?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Apicconfiguration settings for cloud.

	apic_configuration?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Cloudstackconfiguration settings for cloud.

	cloudstack_configuration?: string

	// Vcloudairconfiguration settings for cloud.

	vca_configuration?: string

	// Awsconfiguration settings for cloud.

	aws_configuration?: string

	// Mtu setting for the cloud.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1500.

	mtu?: string
}

avi_api_session :: {

	// HTTP body in YAML or JSON format.

	data?: string

	// Allowed HTTP methods for RESTful services and are supported by Avi Controller.

	http_method: string

	// Query parameters passed to the HTTP API.

	params?: string

	// Path for Avi API resource. For example, C(path: virtualservice) will translate to C(api/virtualserivce).

	path?: string

	// Timeout (in seconds) for Avi API calls.

	timeout?: string
}

avi_api_version :: {
}

avi_autoscalelaunchconfig :: {

	// Autoscalemesossettings settings for autoscalelaunchconfig.

	mesos?: string

	// Autoscaleopenstacksettings settings for autoscalelaunchconfig.

	openstack?: string

	// The state that should be applied on the entity.

	state?: string

	// If set to true, serverautoscalepolicy will use the autoscaling group (external_autoscaling_groups) from pool to perform scale up and scale down.
	// Pool should have single autoscaling group configured.
	// Field introduced in 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	use_external_asg?: bool

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for the object.

	description?: string

	// Unique id of the amazon machine image (ami)  or openstack vm id.

	image_id?: string

	// Name of the object.

	name: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string
}

avi_useraccountprofile :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// The time period after which credentials expire.
	// Default is 180 days.
	// Default value when not specified in API or module is interpreted by Avi Controller as 180.

	credentials_timeout_threshold?: string

	// Maximum number of passwords to be maintained in the password history.
	// Default is 4 passwords.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	max_password_history_count?: string

	// Name of the object.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Unique object identifier of the object.

	uuid?: string

	// Lock timeout period (in minutes).
	// Default is 30 minutes.
	// Default value when not specified in API or module is interpreted by Avi Controller as 30.

	account_lock_timeout?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Maximum number of concurrent sessions allowed.
	// There are unlimited sessions by default.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	max_concurrent_sessions?: string

	// Number of login attempts before lockout.
	// Default is 3 attempts.
	// Default value when not specified in API or module is interpreted by Avi Controller as 3.

	max_login_failure_count?: string

	// Avi controller URL of the object.

	url?: string
}

avi_role :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the object.

	name: string

	// List of permission.

	privileges?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string
}

avi_useraccount :: {

	// If specifically set to true then old password is tried first for controller and then the new password is tried. If not specified this flag then the new password is tried first.

	force_change?: string

	// Old password for update password or default password for bootstrap.

	old_password?: string
}

avi_applicationprofile :: {

	// User defined description for the object.

	description?: string

	// Specifies various dns service related controls for virtual service.

	dns_service_profile?: string

	// Specifies various security related controls for virtual service.

	dos_rl_profile?: string

	// Specifies if we need to preserve client port while preserving client ip for backend connections.
	// Field introduced in 17.2.7.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	preserve_client_port?: bool

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Checksum of application profiles.
	// Internally set by cloud connector.
	// Field introduced in 17.2.14, 18.1.5, 18.2.1.

	cloud_config_cksum?: string

	// Uuid of the application profile.

	uuid?: string

	// Avi controller URL of the object.

	url?: string

	// Specifies the http application proxy profile parameters.

	http_profile?: string

	// Specifies various sip service related controls for virtual service.
	// Field introduced in 17.2.8, 18.1.3, 18.2.1.

	sip_service_profile?: string

	// Specifies the tcp application proxy profile parameters.

	tcp_app_profile?: string

	// The state that should be applied on the entity.

	state?: string

	// Specifies which application layer proxy is enabled for the virtual service.
	// Enum options - APPLICATION_PROFILE_TYPE_L4, APPLICATION_PROFILE_TYPE_HTTP, APPLICATION_PROFILE_TYPE_SYSLOG, APPLICATION_PROFILE_TYPE_DNS,
	// APPLICATION_PROFILE_TYPE_SSL, APPLICATION_PROFILE_TYPE_SIP.

	type: string

	// Name of the application profile creator.
	// Field introduced in 17.2.14, 18.1.5, 18.2.1.

	created_by?: string

	// The name of the application profile.

	name: string

	// Specifies if client ip needs to be preserved for backend connection.
	// Not compatible with connection multiplexing.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	preserve_client_ip?: bool
}

avi_clusterclouddetails :: {

	// Azure info to configure cluster_vip on the controller.
	// Field introduced in 17.2.5.

	azure_info?: string

	// Field introduced in 17.2.5.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.2.5.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Field introduced in 17.2.5.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string
}

avi_controllerproperties :: {

	// Token used for uploading tech-support to portal.
	// Field introduced in 16.4.6,17.1.2.

	portal_token?: string

	// Period for process pki profile job.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1440.

	process_pki_profile_timeout_period?: string

	// Number of se_create_timeout.
	// Default value when not specified in API or module is interpreted by Avi Controller as 900.

	se_create_timeout?: string

	// Number of upgrade_lease_time.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	upgrade_lease_time?: string

	// Threshold to log request timing in portal_performance.log and server-timing response header.
	// Any stage taking longer than 1% of the threshold will be included in the server-timing header.
	// Field introduced in 18.1.4, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10000.

	api_perf_logging_threshold?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Period for sessions cleanup job.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	cleanup_sessions_timeout_period?: string

	// Period for refresh pool and gslb dns job.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	dns_refresh_period?: string

	// Unique object identifier of the object.

	uuid?: string

	// Maximum number of pcap files stored per tenant.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	max_pcap_per_tenant?: string

	// This setting decides whether se is to be deployed from the cloud marketplace or to be created by the controller.
	// The setting is applicable only when byol license is selected.
	// Enum options - MARKETPLACE, IMAGE.
	// Field introduced in 18.1.4, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as IMAGE.

	se_from_marketplace?: string

	// Time to wait before marking segroup upgrade as stuck.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	seupgrade_segroup_min_dead_timeout?: string

	// Number of vs_se_vnic_ip_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 120.

	vs_se_vnic_ip_fail?: string

	// Pool size used for all fabric commands during se upgrade.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	seupgrade_fabric_pool_size?: string

	// Number of days for ssl certificate expiry warning.

	ssl_certificate_expiry_warning_days?: string

	// Number of unresponsive_se_reboot.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	unresponsive_se_reboot?: string

	// Number of vs_se_bootup_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 480.

	vs_se_bootup_fail?: string

	// Allow unauthenticated access for special apis.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	allow_unauthenticated_apis?: bool

	// Boolean flag to set allow_unauthenticated_nodes.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	allow_unauthenticated_nodes?: bool

	// Number of attach_ip_retry_interval.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	attach_ip_retry_interval?: string

	// Number of secure_channel_controller_token_timeout.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	secure_channel_controller_token_timeout?: string

	// Number of vs_se_ping_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	vs_se_ping_fail?: string

	// Time to wait for the scaled out se to become ready before marking the scaleout done, applies to apic configuration only.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	vs_apic_scaleout_timeout?: string

	// Period for auth token cleanup job.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	cleanup_expired_authtoken_timeout_period?: string

	// Maximum number of consecutive attach ip failures that halts vs placement.
	// Field introduced in 17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 3.

	max_seq_attach_ip_failures?: string

	// Number of attach_ip_retry_limit.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	attach_ip_retry_limit?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Number of fatal_error_lease_time.
	// Default value when not specified in API or module is interpreted by Avi Controller as 120.

	fatal_error_lease_time?: string

	// Period for rotate vs keys job.
	// Allowed values are 1-1051200.
	// Special values are 0 - 'disabled'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	vs_key_rotate_period?: string

	// Number of max_dead_se_in_grp.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	max_dead_se_in_grp?: string

	// Period for secure channel cleanup job.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	secure_channel_cleanup_timeout?: string

	// The state that should be applied on the entity.

	state?: string

	// Number of vs_se_vnic_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	vs_se_vnic_fail?: string

	// Number of crashed_se_reboot.
	// Default value when not specified in API or module is interpreted by Avi Controller as 900.

	crashed_se_reboot?: string

	// Number of dummy.

	dummy?: string

	// Number of vnic_op_fail_time.
	// Default value when not specified in API or module is interpreted by Avi Controller as 180.

	vnic_op_fail_time?: string

	// Timeout for warmstart vs resync.
	// Field introduced in 18.1.4, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	warmstart_vs_resync_wait_time?: string

	// Period for rotate app persistence keys job.
	// Allowed values are 1-1051200.
	// Special values are 0 - 'disabled'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	persistence_key_rotate_period?: string

	// Number of query_host_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 180.

	query_host_fail?: string

	// Number of se_offline_del.
	// Default value when not specified in API or module is interpreted by Avi Controller as 172000.

	se_offline_del?: string

	// Number of secure_channel_se_token_timeout.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	secure_channel_se_token_timeout?: string

	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	allow_ip_forwarding?: bool

	// Use ansible for se creation in baremetal.
	// Field introduced in 17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	bm_use_ansible?: bool

	// Enable/disable memory balancer.
	// Field introduced in 17.2.8.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_memory_balancer?: bool

	// Number of max_seq_vnic_failures.
	// Default value when not specified in API or module is interpreted by Avi Controller as 3.

	max_seq_vnic_failures?: string

	// Interval between attempting failovers to an se.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	se_failover_attempt_interval?: string

	// Number of se_vnic_cooldown.
	// Default value when not specified in API or module is interpreted by Avi Controller as 120.

	se_vnic_cooldown?: string

	// Period for cluster ip gratuitous arp job.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	cluster_ip_gratuitous_arp_period?: string

	// Period for consistency check job.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	consistency_check_timeout_period?: string

	// Version of the safenet package installed on the controller.
	// Field introduced in 16.5.2,17.2.3.

	safenet_hsm_version?: string

	// Export configuration in appviewx compatibility mode.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	appviewx_compat_mode?: bool

	// Interval for checking scaleout_ready status while controller is waiting for scaleoutready rpc from the service engine.
	// Field introduced in 18.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	vs_scaleout_ready_check_interval?: string

	// Time to wait before marking attach ip operation on an se as failed.
	// Field introduced in 17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as 600.

	vs_se_attach_ip_fail?: string

	// Number of warmstart_se_reconnect_wait_time.
	// Default value when not specified in API or module is interpreted by Avi Controller as 480.

	warmstart_se_reconnect_wait_time?: string

	// This setting enables the controller leader to shard api requests to the followers (if any).
	// Field introduced in 18.1.5, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_api_sharding?: bool

	// Period for process locked user accounts job.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	process_locked_useraccounts_timeout_period?: string

	// Avi controller URL of the object.

	url?: string

	// Number of vs_awaiting_se_timeout.
	// Default value when not specified in API or module is interpreted by Avi Controller as 60.

	vs_awaiting_se_timeout?: string

	// Allowed values are 0-1440.
	// Default value when not specified in API or module is interpreted by Avi Controller as 15.

	api_idle_timeout?: string

	// Number of vs_se_create_fail.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1500.

	vs_se_create_fail?: string

	// Enable/disable periodic reconcile for all the clouds.
	// Field introduced in 17.2.14,18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	cloud_reconcile?: bool

	// Number of dead_se_detection_timer.
	// Default value when not specified in API or module is interpreted by Avi Controller as 360.

	dead_se_detection_timer?: string

	// Time to account for dns ttl during upgrade.
	// This is in addition to vs_scalein_timeout_for_upgrade in se_group.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.

	upgrade_dns_ttl?: string
}

avi_alertscriptconfig :: {

	// Unique object identifier of the object.

	uuid?: string

	// User defined alert action script.
	// Please refer to kb.avinetworks.com for more information.

	action_script?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// A user-friendly name of the script.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_errorpageprofile :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Fully qualified domain name for which the error page is generated.
	// Field deprecated in 18.1.1.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as Host Header.

	host_name?: string

	// Avi controller URL of the object.

	url?: string

	// Field introduced in 17.2.4.

	uuid?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.2.4.

	tenant_ref?: string

	// Name of the virtual service which generated the error page.
	// Field deprecated in 18.1.1.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as VS Name.

	app_name?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Name of the company to show in error page.
	// Field deprecated in 18.1.1.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as Avi Networks.

	company_name?: string

	// Defined error pages for http status codes.
	// Field introduced in 17.2.4.

	error_pages?: string

	// Field introduced in 17.2.4.

	name: string
}

avi_healthmonitor :: {

	// This field describes the object's replication scope.
	// If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.
	// If the field is set to true, then the object is replicated across the federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	is_federated?: bool

	// A user friendly name for this health monitor.

	name: string

	// Health monitor for sip.
	// Field introduced in 17.2.8, 18.1.3, 18.2.1.

	sip_monitor?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Healthmonitorudp settings for healthmonitor.

	udp_monitor?: string

	// Uuid of the health monitor.

	uuid?: string

	// Healthmonitorhttp settings for healthmonitor.

	http_monitor?: string

	// Healthmonitorhttp settings for healthmonitor.

	https_monitor?: string

	// Frequency, in seconds, that monitors are sent to a server.
	// Allowed values are 1-3600.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	send_interval?: string

	// Number of continuous successful health checks before server is marked up.
	// Allowed values are 1-50.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	successful_checks?: string

	// Type of the health monitor.
	// Enum options - HEALTH_MONITOR_PING, HEALTH_MONITOR_TCP, HEALTH_MONITOR_HTTP, HEALTH_MONITOR_HTTPS, HEALTH_MONITOR_EXTERNAL, HEALTH_MONITOR_UDP,
	// HEALTH_MONITOR_DNS, HEALTH_MONITOR_GSLB, HEALTH_MONITOR_SIP, HEALTH_MONITOR_RADIUS.

	type: string

	// Avi controller URL of the object.

	url?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Number of continuous failed health checks before the server is marked down.
	// Allowed values are 1-50.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	failed_checks?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Healthmonitordns settings for healthmonitor.

	dns_monitor?: string

	// Use this port instead of the port defined for the server in the pool.
	// If the monitor succeeds to this port, the load balanced traffic will still be sent to the port of the server defined within the pool.
	// Allowed values are 1-65535.
	// Special values are 0 - 'use server port'.

	monitor_port?: string

	// Health monitor for radius.
	// Field introduced in 18.2.3.

	radius_monitor?: string

	// A valid response from the server is expected within the receive timeout window.
	// This timeout must be less than the send interval.
	// If server status is regularly flapping up and down, consider increasing this value.
	// Allowed values are 1-2400.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.

	receive_timeout?: string

	// The state that should be applied on the entity.

	state?: string

	// Healthmonitortcp settings for healthmonitor.

	tcp_monitor?: string

	// User defined description for the object.

	description?: string

	// Healthmonitorexternal settings for healthmonitor.

	external_monitor?: string
}

avi_pkiprofile :: {

	// When enabled, avi will verify via crl checks that certificates in the trust chain have not been revoked.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	crl_check?: bool

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Creator name.

	created_by?: string

	// Certificate revocation lists.

	crls?: string

	// When enabled, avi will not trust intermediate and root certs presented by a client.
	// Instead, only the chain certs configured in the certificate authority section will be used to verify trust of the client's cert.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	ignore_peer_chain?: bool

	// The state that should be applied on the entity.

	state?: string

	// When enabled, avi will only validate the revocation status of the leaf certificate using crl.
	// To enable validation for the entire chain, disable this option and provide all the relevant crls.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	validate_only_leaf_crl?: bool

	// List of certificate authorities (root and intermediate) trusted that is used for certificate validation.

	ca_certs?: string

	// This field describes the object's replication scope.
	// If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.
	// If the field is set to true, then the object is replicated across the federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	is_federated?: bool

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the pki profile.

	name: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string
}

avi_vsvip :: {

	// Service discovery specific data including fully qualified domain name, type and time-to-live of the dns record.
	// Field introduced in 17.1.1.

	dns_info?: string

	// Uuid of the vsvip object.
	// Field introduced in 17.1.1.

	uuid?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string

	// It is a reference to an object of type cloud.
	// Field introduced in 17.1.1.

	cloud_ref?: string

	// Force placement on all service engines in the service engine group (container clouds only).
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	east_west_placement?: bool

	// Name for the vsvip object.
	// Field introduced in 17.1.1.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Checksum of cloud configuration for vsvip.
	// Internally set by cloud connector.
	// Field introduced in 17.2.9, 18.1.2.

	vsvip_cloud_config_cksum?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// List of virtual service ips and other shareable entities.
	// Field introduced in 17.1.1.

	vip?: string

	// Virtual routing context that the virtual service is bound to.
	// This is used to provide the isolation of the set of networks the application is attached to.
	// It is a reference to an object of type vrfcontext.
	// Field introduced in 17.1.1.

	vrf_context_ref?: string

	// Avi controller URL of the object.

	url?: string

	// This overrides the cloud level default and needs to match the se group value in which it will be used if the se group use_standard_alb value is
	// set.
	// This is only used when fip is used for vs on azure cloud.
	// Field introduced in 18.2.3.

	use_standard_alb?: bool
}

avi_errorpagebody :: {

	// Error page body sent to client when match.
	// Field introduced in 17.2.4.

	error_page_body?: string

	// Format of an error page body html or json.
	// Enum options - ERROR_PAGE_FORMAT_HTML, ERROR_PAGE_FORMAT_JSON.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as ERROR_PAGE_FORMAT_HTML.

	format?: string

	// The state that should be applied on the entity.

	state?: string

	// Field introduced in 17.2.4.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Field introduced in 17.2.4.

	name: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.2.4.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_ipamdnsproviderprofile :: {

	// Provider details if type is custom.
	// Field introduced in 17.1.1.

	custom_profile?: string

	// Provider details if type is avi.

	internal_profile?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// Provider type for the ipam/dns provider profile.
	// Enum options - IPAMDNS_TYPE_INFOBLOX, IPAMDNS_TYPE_AWS, IPAMDNS_TYPE_OPENSTACK, IPAMDNS_TYPE_GCP, IPAMDNS_TYPE_INFOBLOX_DNS, IPAMDNS_TYPE_CUSTOM,
	// IPAMDNS_TYPE_CUSTOM_DNS, IPAMDNS_TYPE_AZURE, IPAMDNS_TYPE_OCI, IPAMDNS_TYPE_TENCENT, IPAMDNS_TYPE_INTERNAL, IPAMDNS_TYPE_INTERNAL_DNS,
	// IPAMDNS_TYPE_AWS_DNS, IPAMDNS_TYPE_AZURE_DNS.

	type: string

	// Avi controller URL of the object.

	url?: string

	// Provider details if type is aws.

	aws_profile?: string

	// Provider details if type is microsoft azure.
	// Field introduced in 17.2.1.

	azure_profile?: string

	// Provider details if type is google cloud.

	gcp_profile?: string

	// Provider details if type is openstack.

	openstack_profile?: string

	// Provider details for oracle cloud.
	// Field introduced in 18.2.1,18.1.3.

	oci_profile?: string

	// Field introduced in 17.1.1.

	proxy_configuration?: string

	// If this flag is set, only allocate ip from networks in the virtual service vrf.
	// Applicable for avi vantage ipam only.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	allocate_ip_in_vrf?: bool

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Provider details if type is infoblox.

	infoblox_profile?: string

	// Name for the ipam/dns provider profile.

	name: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Provider details for tencent cloud.
	// Field introduced in 18.2.3.

	tencent_profile?: string

	// Uuid of the ipam/dns provider profile.

	uuid?: string
}

avi_networksecuritypolicy :: {

	// Checksum of cloud configuration for network sec policy.
	// Internally set by cloud connector.

	cloud_config_cksum?: string

	// Creator name.

	created_by?: string

	// User defined description for the object.

	description?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the object.

	name?: string

	// List of networksecurityrule.

	rules?: string
}

avi_seproperties :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Seagentproperties settings for seproperties.

	se_agent_properties?: string

	// Sebootupproperties settings for seproperties.

	se_bootup_properties?: string

	// Seruntimeproperties settings for seproperties.

	se_runtime_properties?: string

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.
	// Default value when not specified in API or module is interpreted by Avi Controller as default.

	uuid?: string
}

avi_gslbservice :: {

	// Name for the gslb service.

	name: string

	// Uuid of the gslb service.

	uuid?: string

	// The federated application persistence associated with gslbservice site persistence functionality.
	// It is a reference to an object of type applicationpersistenceprofile.
	// Field introduced in 17.2.1.

	application_persistence_profile_ref?: string

	// Gs member's overall health status is derived based on a combination of controller and datapath health-status inputs.
	// Note that the datapath status is determined by the association of health monitor profiles.
	// Only the controller provided status is determined through this configuration.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	controller_health_status_enabled?: bool

	// Creator name.
	// Field introduced in 17.1.2.

	created_by?: string

	// This field is an internal field and is used in se.
	// Field introduced in 18.2.2.

	hm_off?: bool

	// Fully qualified domain name of the gslb service.

	domain_names?: string

	// The minimum number of members to distribute traffic to.
	// Allowed values are 1-65535.
	// Special values are 0 - 'disable'.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	min_members?: string

	// Number of ip addresses of this gslb service to be returned by the dns service.
	// Enter 0 to return all ip addresses.
	// Allowed values are 1-20.
	// Special values are 0- 'return all ip addresses'.

	num_dns_ip?: string

	// The state that should be applied on the entity.

	state?: string

	// Select list of pools belonging to this gslb service.

	groups?: string

	// Verify vs health by applying one or more health monitors.
	// Active monitors generate synthetic traffic from dns service engine and to mark a vs up or down based on the response.
	// It is a reference to an object of type healthmonitor.

	health_monitor_refs?: string

	// Use the client ip subnet from the edns option as source ipaddress for client geo-location and consistent hash algorithm.
	// Default is true.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	use_edns_client_subnet?: bool

	// Enable or disable the gslb service.
	// If the gslb service is enabled, then the vips are sent in the dns responses based on reachability and configured algorithm.
	// If the gslb service is disabled, then the vips are no longer available in the dns response.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enabled?: bool

	// Health monitor probe can be executed for all the members or it can be executed only for third-party members.
	// This operational mode is useful to reduce the number of health monitor probes in case of a hybrid scenario.
	// In such a case, avi members can have controller derived status while non-avi members can be probed by via health monitor probes in dataplane.
	// Enum options - GSLB_SERVICE_HEALTH_MONITOR_ALL_MEMBERS, GSLB_SERVICE_HEALTH_MONITOR_ONLY_NON_AVI_MEMBERS.
	// Default value when not specified in API or module is interpreted by Avi Controller as GSLB_SERVICE_HEALTH_MONITOR_ALL_MEMBERS.

	health_monitor_scope?: string

	// This field indicates that this object is replicated across gslb federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	is_federated?: bool

	// The load balancing algorithm will pick a gslb pool within the gslb service list of available pools.
	// Enum options - GSLB_SERVICE_ALGORITHM_PRIORITY, GSLB_SERVICE_ALGORITHM_GEO.
	// Field introduced in 17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as GSLB_SERVICE_ALGORITHM_PRIORITY.

	pool_algorithm?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for the object.

	description?: string

	// Response to the client query when the gslb service is down.

	down_response?: string

	// Enable wild-card match of fqdn  if an exact match is not found in the dns table, the longest match is chosen by wild-carding the fqdn in the dns
	// request.
	// Default is false.
	// Field introduced in 17.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	wildcard_match?: bool

	// Enable site-persistence for the gslbservice.
	// Field introduced in 17.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	site_persistence_enabled?: bool

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Ttl value (in seconds) for records served for this gslb service by the dns service.
	// Allowed values are 0-86400.

	ttl?: string

	// Avi controller URL of the object.

	url?: string
}

avi_microservicegroup :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Name of the microservice group.

	name: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the microservice group.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Creator name.

	created_by?: string

	// User defined description for the object.

	description?: string

	// Configure microservice(es).
	// It is a reference to an object of type microservice.

	service_refs?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string
}

avi_tenant :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Boolean flag to set local.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	local?: bool

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Tenantconfiguration settings for tenant.

	config_settings?: string

	// Creator of this tenant.

	created_by?: string

	// User defined description for the object.

	description?: string

	// Name of the object.

	name: string

	// Unique object identifier of the object.

	uuid?: string
}

avi_vrfcontext :: {

	// The state that should be applied on the entity.

	state?: string

	// Bgp local and peer info.

	bgp_profile?: string

	// Configure debug flags for vrf.
	// Field introduced in 17.1.1.

	debugvrfcontext?: string

	// User defined description for the object.

	description?: string

	// Boolean flag to set system_default.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	system_default?: bool

	// Avi controller URL of the object.

	url?: string

	// Configure ping based heartbeat check for gateway in service engines of vrf.

	gateway_mon?: string

	// Configure ping based heartbeat check for all default gateways in service engines of vrf.
	// Field introduced in 17.1.1.

	internal_gateway_monitor?: string

	// List of staticroute.

	static_routes?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Unique object identifier of the object.

	uuid?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// Name of the object.

	name: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string
}

avi_certificatemanagementprofile :: {

	// List of customparams.

	script_params?: string

	// Script_path of certificatemanagementprofile.

	script_path: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the pki profile.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string
}

avi_snmptrapprofile :: {

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// The ip address or hostname of the snmp trap destination server.

	trap_servers?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the snmp trap profile object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// A user-friendly name of the snmp trap configuration.

	name: string
}

avi_user :: {

	// Access settings (write, read, or no access) for each type of resource within Vantage.

	access?: [..._]

	// Default tenant reference.
	// This can also be full URI same as it comes in response payload

	default_tenant_ref?: string

	// If the user will need to have the same privileges as the admin account, set it to true.

	is_superuser?: bool

	// Full name of the user.

	name: string

	// You may either enter a case-sensitive password in this field for the new or existing user.

	obj_password: string

	// Refer user profile.
	// This can also be full URI same as it comes in response payload

	user_profile_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Email address of the user. This field is used when a user loses their password and requests to have it reset. See Password Recovery.

	email?: string

	// Activates the current user account.

	is_active?: bool

	// Name that the user will supply when signing into Avi Vantage, such as jdoe or jdoe@avinetworks.com.

	obj_username: string

	// The state that should be applied on the entity.

	state?: string
}

avi_virtualservice :: {

	// Availability-zone to place the virtual service.
	// Field deprecated in 17.1.1.

	availability_zone?: string

	// Error page profile to be used for this virtualservice.this profile is used to send the custom error page to the client generated by the proxy.
	// It is a reference to an object of type errorpageprofile.
	// Field introduced in 17.2.4.

	error_page_profile_ref?: string

	// If auto_allocate_floating_ip is true and more than one floating-ip subnets exist, then the subnet for the floating ip address allocation.
	// This field is applicable only if the virtualservice belongs to an openstack or aws cloud.
	// In openstack or aws cloud it is required when auto_allocate_floating_ip is selected.
	// Field deprecated in 17.1.1.

	floating_subnet_uuid?: string

	// The service engine group to use for this virtual service.
	// Moving to a new se group is disruptive to existing connections for this vs.
	// It is a reference to an object of type serviceenginegroup.

	se_group_ref?: string

	// Uuid of the virtualservice.

	uuid?: string

	// Determines analytics settings for the application.

	analytics_policy?: string

	// Auto-allocate floating/elastic ip from the cloud infrastructure.
	// Field deprecated in 17.1.1.

	auto_allocate_floating_ip?: bool

	// Enable route health injection using the bgp config in the vrf context.

	enable_rhi?: bool

	// Floating ip to associate with this virtual service.
	// Field deprecated in 17.1.1.

	floating_ip?: string

	// Network security policies for the virtual service.
	// It is a reference to an object of type networksecuritypolicy.

	network_security_policy_ref?: string

	// Select ssl profile based on client ip address match.
	// Field introduced in 18.2.3.

	ssl_profile_selectors?: string

	// Knob to enable the virtual service traffic on its assigned service engines.
	// This setting is effective only when the enabled flag is set to true.
	// Field introduced in 17.2.8.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	traffic_enabled?: bool

	// Specify if this is a normal virtual service, or if it is the parent or child of an sni-enabled virtual hosted virtual service.
	// Enum options - VS_TYPE_NORMAL, VS_TYPE_VH_PARENT, VS_TYPE_VH_CHILD.
	// Default value when not specified in API or module is interpreted by Avi Controller as VS_TYPE_NORMAL.

	type?: string

	// Avi controller URL of the object.

	url?: string

	// The quality of service weight to assign to traffic transmitted from this virtual service.
	// A higher weight will prioritize traffic versus other virtual services sharing the same service engines.
	// Allowed values are 1-128.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	weight?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// (internal-use)applicable for azure only.
	// Azure availability set to which this vs is associated.
	// Internally set by the cloud connector.
	// Field introduced in 17.2.12, 18.1.2.

	azure_availability_set?: string

	// Checksum of cloud configuration for vs.
	// Internally set by cloud connector.

	cloud_config_cksum?: string

	// Select the algorithm for qos fairness.
	// This determines how multiple virtual services sharing the same service engines will prioritize traffic over a congested network.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	delay_fairness?: bool

	// Remove listening port if virtualservice is down.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	remove_listening_port_on_vs_down?: bool

	// Disable re-distribution of flows across service engines for a virtual service.
	// Enable if the network itself performs flow hashing with ecmp in environments such as gcp.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	scaleout_ecmp?: bool

	// Http authentication configuration for protected resources.

	client_auth?: string

	// Ip address of the virtual service.
	// Field deprecated in 17.1.1.

	ip_address?: string

	// Select pool based on destination port.

	service_pool_select?: string

	// Gslb pools used to manage site-persistence functionality.
	// Each site-persistence pool contains the virtualservices in all the other sites, that is auto-generated by the gslb manager.
	// This is a read-only field for the user.
	// It is a reference to an object of type pool.
	// Field introduced in 17.2.2.

	sp_pool_refs?: string

	// Specifies settings related to analytics.
	// It is a reference to an object of type analyticsprofile.

	analytics_profile_ref?: string

	// The name of the contract/graph associated with the virtual service.
	// Should be in the <contract name> <graph name> format.
	// This is applicable only for service integration mode with cisco apic controller.
	// Field introduced in 17.2.12,18.1.2.

	apic_contract_graph?: string

	// Rate limit the incoming connections to this virtual service.

	connections_rate_limit?: string

	// Creator name.

	created_by?: string

	// Translate the host name sent to the servers to this value.
	// Translate the host name sent from servers back to the value used by the client.

	host_name_xlate?: string

	// Limit potential dos attackers who exceed max_cps_per_client significantly to a fraction of max_cps_per_client for a while.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	limit_doser?: bool

	// (internal-use) network port assigned to the virtual service ip address.
	// Field deprecated in 17.1.1.

	port_uuid?: string

	// Metadata pertaining to the service provided by this virtual service.
	// In openshift/kubernetes environments, egress pod info is stored.
	// Any user input to this field will be overwritten by avi vantage.

	service_metadata?: string

	// The state that should be applied on the entity.

	state?: string

	// Server network or list of servers for cloning traffic.
	// It is a reference to an object of type trafficcloneprofile.
	// Field introduced in 17.1.1.

	traffic_clone_profile_ref?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// (internal-use) discovered subnets providing reachability for client facing virtual service ip.
	// This field is deprecated.
	// Field deprecated in 17.1.1.

	discovered_subnet?: string

	// Criteria for flow distribution among ses.
	// Enum options - LOAD_AWARE, CONSISTENT_HASH_SOURCE_IP_ADDRESS, CONSISTENT_HASH_SOURCE_IP_ADDRESS_AND_PORT.
	// Default value when not specified in API or module is interpreted by Avi Controller as LOAD_AWARE.

	flow_dist?: string

	// Minimum number of up pools to mark vs up.
	// Field introduced in 18.2.1, 17.2.12.

	min_pools_up?: string

	// A list of nsx service groups representing the clients which can access the virtual ip of the virtual service.
	// Field introduced in 17.1.1.

	nsx_securitygroup?: string

	// Topology policies applied on the dns traffic of the virtual service based ongslb topology algorithm.
	// Field introduced in 18.2.3.

	topology_policies?: string

	// Enum options - cloud_none, cloud_vcenter, cloud_openstack, cloud_aws, cloud_vca, cloud_apic, cloud_mesos, cloud_linuxserver, cloud_docker_ucp,
	// cloud_rancher, cloud_oshift_k8s, cloud_azure, cloud_gcp.
	// Default value when not specified in API or module is interpreted by Avi Controller as CLOUD_NONE.

	cloud_type?: string

	// (internal-use) discovered networks providing reachability for client facing virtual service ip.
	// This field is used internally by avi, not editable by the user.
	// Field deprecated in 17.1.1.

	discovered_networks?: string

	// Response traffic to clients will be sent back to the source mac address of the connection, rather than statically sent to a default gateway.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_autogw?: bool

	// Enable or disable the virtual service.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enabled?: bool

	// Application-specific saml config.
	// Field introduced in 18.2.3.

	saml_sp_config?: string

	// Select or create one or two certificates, ec and/or rsa, that will be presented to ssl/tls terminated connections.
	// It is a reference to an object of type sslkeyandcertificate.

	ssl_key_and_certificate_refs?: string

	// List of virtual service ips.
	// While creating a 'shared vs',please use vsvip_ref to point to the shared entities.
	// Field introduced in 17.1.1.

	vip?: string

	// This configuration only applies if the virtualservice is in legacy active standby ha mode and load distribution among active standby is enabled.
	// This field is used to tag the virtualservice so that virtualservices with the same tag will share the same active serviceengine.
	// Virtualservices with different tags will have different active serviceengines.
	// If one of the serviceengine's in the serviceenginegroup fails, all virtualservices will end up using the same active serviceengine.
	// Redistribution of the virtualservices can be either manual or automated when the failed serviceengine recovers.
	// Redistribution is based on the auto redistribute property of the serviceenginegroup.
	// Enum options - ACTIVE_STANDBY_SE_1, ACTIVE_STANDBY_SE_2.
	// Default value when not specified in API or module is interpreted by Avi Controller as ACTIVE_STANDBY_SE_1.

	active_standby_se_tag?: string

	// Criteria for flow labelling.
	// Enum options - NO_LABEL, APPLICATION_LABEL, SERVICE_LABEL.
	// Default value when not specified in API or module is interpreted by Avi Controller as NO_LABEL.

	flow_label_type?: string

	// Dns resolvable, fully qualified domain name of the virtualservice.
	// Only one of 'fqdn' and 'dns_info' configuration is allowed.

	fqdn?: string

	// L4 policies applied to the data traffic of the virtual service.
	// Field introduced in 17.2.7.

	l4_policies?: string

	// Manually override the network on which the virtual service is placed.
	// It is a reference to an object of type network.
	// Field deprecated in 17.1.1.

	network_ref?: string

	// The pool is an object that contains destination servers and related attributes such as load-balancing and persistence.
	// It is a reference to an object of type pool.

	pool_ref?: string

	// It represents subnet for the virtual service ip address allocation when auto_allocate_ip is true.it is only applicable in openstack or aws cloud.
	// This field is required if auto_allocate_ip is true.
	// Field deprecated in 17.1.1.

	subnet_uuid?: string

	// Specifies the virtual service acting as virtual hosting (sni) parent.

	vh_parent_vs_uuid?: string

	// (internal-use) vip allocated by avi in the cloud infrastructure.
	// Field deprecated in 17.1.1.

	avi_allocated_vip?: bool

	// Profile used to match and rewrite strings in request and/or response body.

	content_rewrite?: string

	// The pool group is an object that contains pools.
	// It is a reference to an object of type poolgroup.

	pool_group_ref?: string

	// Nat'ted floating source ip address(es) for upstream connection to servers.

	snat_ip?: string

	// Subnet providing reachability for client facing virtual service ip.
	// Field deprecated in 17.1.1.

	subnet?: string

	// Use bridge ip as vip on each host in mesos deployments.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	use_bridge_ip_as_vip?: bool

	// (internal-use) discovered networks providing reachability for client facing virtual service ip.
	// This field is deprecated.
	// It is a reference to an object of type network.
	// Field deprecated in 17.1.1.

	discovered_network_ref?: string

	// Maximum connections per second per client ip.
	// Allowed values are 10-1000.
	// Special values are 0- 'unlimited'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	max_cps_per_client?: string

	// Microservice representing the virtual service.
	// It is a reference to an object of type microservice.

	microservice_ref?: string

	// Sideband configuration to be used for this virtualservice.it can be used for sending traffic to sideband vips for external inspection etc.

	sideband_profile?: string

	// The sso policy attached to the virtualservice.
	// It is a reference to an object of type ssopolicy.
	// Field introduced in 18.2.3.

	sso_policy_ref?: string

	// List of static dns records applied to this virtual service.
	// These are static entries and no health monitoring is performed against the ip addresses.

	static_dns_records?: string

	// Virtual routing context that the virtual service is bound to.
	// This is used to provide the isolation of the set of networks the application is attached to.
	// It is a reference to an object of type vrfcontext.

	vrf_context_ref?: string

	// Waf policy for the virtual service.
	// It is a reference to an object of type wafpolicy.
	// Field introduced in 17.2.1.

	waf_policy_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Force placement on all se's in service group (mesos mode only).
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	east_west_placement?: bool

	// Http policies applied on the data traffic of the virtual service.

	http_policies?: string

	// The exact name requested from the client's sni-enabled tls hello domain name field.
	// If this is a match, the parent vs will forward the connection to this child vs.

	vh_domain_name?: string

	// Enable application layer specific features for the virtual service.
	// It is a reference to an object of type applicationprofile.

	application_profile_ref?: string

	// Determines network settings such as protocol, tcp or udp, and related options for the protocol.
	// It is a reference to an object of type networkprofile.

	network_profile_ref?: string

	// Optional settings that determine performance limits like max connections or bandwidth etc.

	performance_limits?: string

	// Determines the set of ssl versions and ciphers to accept for ssl/tls terminated connections.
	// It is a reference to an object of type sslprofile.

	ssl_profile_ref?: string

	// Client authentication and authorization policy for the virtualservice.
	// Field deprecated in 18.2.3.
	// Field introduced in 18.2.1.

	sso_policy?: string

	// Mostly used during the creation of shared vs, this field refers to entities that can be shared across virtual services.
	// It is a reference to an object of type vsvip.
	// Field introduced in 17.1.1.

	vsvip_ref?: string

	// Process request even if invalid client certificate is presented.
	// Datascript apis need to be used for processing of such requests.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	allow_invalid_client_cert?: bool

	// Dns policies applied on the dns traffic of the virtual service.
	// Field introduced in 17.1.1.

	dns_policies?: string

	// Rate limit the incoming requests to this virtual service.

	requests_rate_limit?: string

	// Checksum of cloud configuration for vsvip.
	// Internally set by cloud connector.
	// Field introduced in 17.2.9, 18.1.2.

	vsvip_cloud_config_cksum?: string

	// Auto-allocate vip from the provided subnet.
	// Field deprecated in 17.1.1.

	auto_allocate_ip?: bool

	// (this is a beta feature).
	// Sync key-value cache to the new ses when vs is scaled out.
	// For ex  ssl sessions are stored using vs's key-value cache.
	// When the vs is scaled out, the ssl session information is synced to the new se, allowing existing ssl sessions to be reused on the new se.
	// Field introduced in 17.2.7, 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	bulk_sync_kvcache?: bool

	// Ignore pool servers network reachability constraints for virtual service placement.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	ign_pool_net_reach?: bool

	// Subnet and/or network for allocating virtualservice ip by ipam provider module.
	// Field deprecated in 17.1.1.

	ipam_network_subnet?: string

	// Security policy applied on the traffic of the virtual service.
	// This policy is used to perform security actions such as distributed denial of service (ddos) attack mitigation, etc.
	// It is a reference to an object of type securitypolicy.
	// Field introduced in 18.2.1.

	security_policy_ref?: string

	// Determines the network settings profile for the server side of tcp proxied connections.
	// Leave blank to use the same settings as the client to vs side of the connection.
	// It is a reference to an object of type networkprofile.

	server_network_profile_ref?: string

	// Expected number of ssl session cache entries (may be exceeded).
	// Allowed values are 1024-16383.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1024.

	ssl_sess_cache_avg_size?: string

	// Close client connection on vs config update.
	// Field introduced in 17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	close_client_conn_on_config_update?: bool

	// Service discovery specific data including fully qualified domain name, type and time-to-live of the dns record.
	// Note that only one of fqdn and dns_info setting is allowed.

	dns_info?: string

	// Enable route health injection for source nat'ted floating ip address using the bgp config in the vrf context.

	enable_rhi_snat?: bool

	// List of services defined for this virtual service.

	services?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Datascripts applied on the data traffic of the virtual service.

	vs_datascripts?: string

	// (internal-use) fip allocated by avi in the cloud infrastructure.
	// Field deprecated in 17.1.1.

	avi_allocated_fip?: bool

	// User defined description for the object.

	description?: string

	// Name for the virtual service.

	name: string

	// Use the virtual ip as the snat ip for health monitoring and sending traffic to the backend servers instead of the service engine interface ip.
	// The caveat of enabling this option is that the virtualservice cannot be configued in an active-active ha mode.
	// Dns based multi vip solution has to be used for ha & non-disruptive upgrade purposes.
	// Field introduced in 17.1.9,17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	use_vip_as_snat?: bool
}

avi_cluster :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the object.

	name: string

	// List of clusternode.

	nodes?: string

	// Re-join cluster nodes automatically in the event one of the node is reset to factory.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	rejoin_nodes_automatically?: bool

	// Unique object identifier of the object.

	uuid?: string

	// A virtual ip address.
	// This ip address will be dynamically reconfigured so that it always is the ip of the cluster leader.

	virtual_ip?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_customipamdnsprofile :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Name of the custom ipam dns profile.
	// Field introduced in 17.1.1.

	name: string

	// Script uri of form controller //ipamdnsscripts/<file-name>.
	// Field introduced in 17.1.1.

	script_uri: string

	// Avi controller URL of the object.

	url?: string

	// Field introduced in 17.1.1.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Parameters that are always passed to the ipam/dns script.
	// Field introduced in 17.1.1.

	script_params?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string
}

avi_gslb :: {

	// This field disables the configuration operations on the leader for all federated objects.
	// Cud operations on gslb, gslbservice, gslbgeodbprofile and other federated objects will be rejected.
	// The rest-api disabling helps in upgrade scenarios where we don't want configuration sync operations to the gslb member when the member is being
	// upgraded.
	// This configuration programmatically blocks the leader from accepting new gslb configuration when member sites are undergoing upgrade.
	// Field introduced in 17.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	maintenance_mode?: bool

	// Name for the gslb object.

	name: string

	// Select avi site member belonging to this gslb.

	sites?: string

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the gslb object.

	uuid?: string

	// Frequency with which messages are propagated to vs mgr.
	// Value of 0 disables async behavior and rpc are sent inline.
	// Allowed values are 0-5.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	async_interval?: string

	// Max retries after which the remote site is treated as a fresh start.
	// In fresh start all the configs are downloaded.
	// Allowed values are 1-1024.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	clear_on_max_retries?: string

	// This field indicates that this object is replicated across gslb federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	is_federated?: bool

	// Mark this site as leader of gslb configuration.
	// This site is the one among the avi sites.

	leader_cluster_uuid: string

	// Frequency with which group members communicate.
	// Allowed values are 1-3600.
	// Default value when not specified in API or module is interpreted by Avi Controller as 15.

	send_interval?: string

	// The user can specify a send-interval while entering maintenance mode.
	// The validity of this 'maintenance send-interval' is only during maintenance mode.
	// When the user leaves maintenance mode, the original send-interval is reinstated.
	// This internal variable is used to store the original send-interval.
	// Field introduced in 18.2.3.

	send_interval_prior_to_maintenance_mode?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// The view-id is used in change-leader mode to differentiate partitioned groups while they have the same gslb namespace.
	// Each partitioned group will be able to operate independently by using the view-id.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	view_id?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Group to specify if the client ip addresses are public or private.
	// Field introduced in 17.1.2.

	client_ip_addr_group?: string

	// User defined description for the object.

	description?: string

	// Sub domain configuration for the gslb.
	// Gslb service's fqdn must be a match one of these subdomains.

	dns_configs?: string

	// Third party site member belonging to this gslb.
	// Field introduced in 17.1.1.

	third_party_sites?: string
}

avi_networkprofile :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// User defined description for the object.

	description?: string

	// Networkprofileunion settings for networkprofile.

	profile: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// When enabled, avi mirrors all tcp fastpath connections to standby.
	// Applicable only in legacy ha mode.
	// Field introduced in 18.1.3,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	connection_mirror?: bool

	// The name of the network profile.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Uuid of the network profile.

	uuid?: string
}

avi_poolgroup :: {

	// Name of the user who created the object.

	created_by?: string

	// Whether an implicit set of priority labels is generated.
	// Field introduced in 17.1.9,17.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	implicit_priority_labels?: bool

	// Avi controller URL of the object.

	url?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// Checksum of cloud configuration for poolgroup.
	// Internally set by cloud connector.

	cloud_config_cksum?: string

	// Description of pool group.

	description?: string

	// Enable an action - close connection, http redirect, or local http response - when a pool group failure happens.
	// By default, a connection will be closed, in case the pool group experiences a failure.

	fail_action?: string

	// List of pool group members object of type poolgroupmember.

	members?: string

	// Uuid of the pool group.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Uuid of the priority labels.
	// If not provided, pool group member priority label will be interpreted as a number with a larger number considered higher priority.
	// It is a reference to an object of type prioritylabels.

	priority_labels_ref?: string

	// Metadata pertaining to the service provided by this poolgroup.
	// In openshift/kubernetes environments, app metadata info is stored.
	// Any user input to this field will be overwritten by avi vantage.
	// Field introduced in 17.2.14,18.1.5,18.2.1.

	service_metadata?: string

	// When setup autoscale manager will automatically promote new pools into production when deployment goals are met.
	// It is a reference to an object of type poolgroupdeploymentpolicy.

	deployment_policy_ref?: string

	// The minimum number of servers to distribute traffic to.
	// Allowed values are 1-65535.
	// Special values are 0 - 'disable'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	min_servers?: string

	// The name of the pool group.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string
}

avi_sslkeyandcertificate :: {

	// Dynamic parameters needed for certificate management profile.

	dynamic_params?: string

	// Format of the key/certificate file.
	// Enum options - SSL_PEM, SSL_PKCS12.
	// Field introduced in 18.1.2, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as SSL_PEM.

	format?: string

	// Private key.

	key?: string

	// Sslkeyparams settings for sslkeyandcertificate.

	key_params?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// States if the certificate is base64 encoded.
	// Field introduced in 18.1.2, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	certificate_base64?: bool

	// It is a reference to an object of type certificatemanagementprofile.

	certificate_management_profile_ref?: string

	// Creator name.

	created_by?: string

	// Encrypted private key corresponding to the private key (e.g.
	// Those generated by an hsm such as thales nshield).

	enckey_base64?: string

	// Enum options - ssl_certificate_type_virtualservice, ssl_certificate_type_system, ssl_certificate_type_ca.

	type?: string

	// Unique object identifier of the object.

	uuid?: string

	// Ca certificates in certificate chain.

	ca_certs?: string

	// The state that should be applied on the entity.

	state?: string

	// Enum options - ssl_certificate_finished, ssl_certificate_pending.
	// Default value when not specified in API or module is interpreted by Avi Controller as SSL_CERTIFICATE_FINISHED.

	status?: string

	// Avi controller URL of the object.

	url?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Sslcertificate settings for sslkeyandcertificate.

	certificate: string

	// Name of the encrypted private key (e.g.
	// Those generated by an hsm such as thales nshield).

	enckey_name?: string

	// It is a reference to an object of type hardwaresecuritymodulegroup.

	hardwaresecuritymodulegroup_ref?: string

	// States if the private key is base64 encoded.
	// Field introduced in 18.1.2, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	key_base64?: bool

	// Passphrase used to encrypt the private key.
	// Field introduced in 18.1.2, 18.2.1.

	key_passphrase?: string

	// Name of the object.

	name: string
}

avi_dnspolicy :: {

	// Avi controller URL of the object.

	url?: string

	// Field introduced in 17.1.1.

	description?: string

	// Name of the dns policy.
	// Field introduced in 17.1.1.

	name: string

	// Dns rules.
	// Field introduced in 17.1.1.

	rule?: string

	// The state that should be applied on the entity.

	state?: string

	// Uuid of the dns policy.
	// Field introduced in 17.1.1.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Creator name.
	// Field introduced in 17.1.1.

	created_by?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string
}

avi_hardwaresecuritymodulegroup :: {

	// Avi controller URL of the object.

	url?: string

	// Uuid of the hsm group configuration object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Hardware security module configuration.

	hsm: string

	// Name of the hsm group configuration object.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string
}

avi_poolgroupdeploymentpolicy :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// The state that should be applied on the entity.

	state?: string

	// Ratio of the traffic that is sent to the pool under test.
	// Test ratio of 100 means blue green.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	test_traffic_ratio_rampup?: string

	// Webhook configured with url that avi controller will pass back information about pool group, old and new pool information and current deployment
	// rule results.
	// It is a reference to an object of type webhook.
	// Field introduced in 17.1.1.

	webhook_ref?: string

	// Target traffic ratio before pool is made production.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	target_test_traffic_ratio?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Uuid of the pool group deployment policy.

	uuid?: string

	// It will automatically disable old production pools once there is a new production candidate.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	auto_disable_old_prod_pools?: bool

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// User defined description for the object.

	description?: string

	// Duration of evaluation period for automatic deployment.
	// Allowed values are 60-86400.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	evaluation_duration?: string

	// List of pgdeploymentrule.

	rules?: string

	// Deployment scheme.
	// Enum options - BLUE_GREEN, CANARY.
	// Default value when not specified in API or module is interpreted by Avi Controller as BLUE_GREEN.

	scheme?: string

	// Avi controller URL of the object.

	url?: string

	// The name of the pool group deployment policy.

	name: string
}

avi_serviceengine :: {

	// It is a reference to an object of type vimgrhostruntime.

	host_ref?: string

	// Name of the object.
	// Default value when not specified in API or module is interpreted by Avi Controller as VM name unknown.

	name?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Boolean flag to set container_mode.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	container_mode?: bool

	// Enum options - container_type_bridge, container_type_host, container_type_host_dpdk.
	// Default value when not specified in API or module is interpreted by Avi Controller as CONTAINER_TYPE_HOST.

	container_type?: string

	// Boolean flag to set controller_created.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	controller_created?: bool

	// Inorder to disable se set this field appropriately.
	// Enum options - SE_STATE_ENABLED, SE_STATE_DISABLED_FOR_PLACEMENT, SE_STATE_DISABLED, SE_STATE_DISABLED_FORCE.
	// Default value when not specified in API or module is interpreted by Avi Controller as SE_STATE_ENABLED.

	enable_state?: string

	// The state that should be applied on the entity.

	state?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Controller_ip of serviceengine.

	controller_ip?: string

	// Flavor of serviceengine.

	flavor?: string

	// Seresources settings for serviceengine.

	resources?: string

	// Avi controller URL of the object.

	url?: string

	// Availability_zone of serviceengine.

	availability_zone?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// List of vnic.

	data_vnics?: string

	// Enum options - default, vmware_esx, kvm, vmware_vsan, xen.

	hypervisor?: string

	// Vnic settings for serviceengine.

	mgmt_vnic?: string

	// It is a reference to an object of type serviceenginegroup.

	se_group_ref?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string
}

avi_alertconfig :: {

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Uuid of the resource for which alert was raised.

	obj_uuid?: string

	// Only if the number of events is reached or exceeded within the time window will an alert be generated.
	// Allowed values are 1-31536000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 300.

	rolling_window?: string

	// Signifies system events or the type of client logsused in this alert configuration.
	// Enum options - CONN_LOGS, APP_LOGS, EVENT_LOGS, METRICS.

	source: string

	// The state that should be applied on the entity.

	state?: string

	// This alert config applies to auto scale alerts.

	autoscale_alert?: bool

	// A custom description field.

	description?: string

	// An alert is created only when the number of events meets or exceeds this number within the chosen time frame.
	// Allowed values are 1-65536.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	threshold?: string

	// Unique object identifier of the object.

	uuid?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Determines whether an alert is raised immediately when event occurs (realtime) or after specified number of events occurs within rolling time
	// window.
	// Enum options - REALTIME, ROLLINGWINDOW, WATERMARK.
	// Default value when not specified in API or module is interpreted by Avi Controller as REALTIME.

	category: string

	// Name of the alert configuration.

	name: string

	// The object type to which the alert config is associated with.
	// Valid object types are - virtual service, pool, service engine.
	// Enum options - VIRTUALSERVICE, POOL, HEALTHMONITOR, NETWORKPROFILE, APPLICATIONPROFILE, HTTPPOLICYSET, DNSPOLICY, SECURITYPOLICY, IPADDRGROUP,
	// STRINGGROUP, SSLPROFILE, SSLKEYANDCERTIFICATE, NETWORKSECURITYPOLICY, APPLICATIONPERSISTENCEPROFILE, ANALYTICSPROFILE, VSDATASCRIPTSET, TENANT,
	// PKIPROFILE, AUTHPROFILE, CLOUD, SERVERAUTOSCALEPOLICY, AUTOSCALELAUNCHCONFIG, MICROSERVICEGROUP, IPAMPROFILE, HARDWARESECURITYMODULEGROUP,
	// POOLGROUP, PRIORITYLABELS, POOLGROUPDEPLOYMENTPOLICY, GSLBSERVICE, GSLBSERVICERUNTIME, SCHEDULER, GSLBGEODBPROFILE,
	// GSLBAPPLICATIONPERSISTENCEPROFILE, TRAFFICCLONEPROFILE, VSVIP, WAFPOLICY, WAFPROFILE, ERRORPAGEPROFILE, ERRORPAGEBODY, L4POLICYSET,
	// GSLBSERVICERUNTIMEBATCH, WAFPOLICYPSMGROUP, PINGACCESSAGENT, SERVICEENGINEPOLICY, NATPOLICY, SSOPOLICY, PROTOCOLPARSER, SERVICEENGINE,
	// DEBUGSERVICEENGINE, DEBUGCONTROLLER, DEBUGVIRTUALSERVICE, SERVICEENGINEGROUP, SEPROPERTIES, NETWORK, CONTROLLERNODE, CONTROLLERPROPERTIES,
	// SYSTEMCONFIGURATION, VRFCONTEXT, USER, ALERTCONFIG, ALERTSYSLOGCONFIG, ALERTEMAILCONFIG, ALERTTYPECONFIG, APPLICATION, ROLE, CLOUDPROPERTIES,
	// SNMPTRAPPROFILE, ACTIONGROUPPROFILE, MICROSERVICE, ALERTPARAMS, ACTIONGROUPCONFIG, CLOUDCONNECTORUSER, GSLB, GSLBDNSUPDATE, GSLBSITEOPS,
	// GLBMGRWARMSTART, IPAMDNSRECORD, GSLBDNSGSSTATUS, GSLBDNSGEOFILEOPS, GSLBDNSGEOUPDATE, GSLBDNSGEOCLUSTEROPS, GSLBDNSCLEANUP, GSLBSITEOPSRESYNC,
	// IPAMDNSPROVIDERPROFILE, TCPSTATRUNTIME, UDPSTATRUNTIME, IPSTATRUNTIME, ARPSTATRUNTIME, MBSTATRUNTIME, IPSTKQSTATSRUNTIME, MALLOCSTATRUNTIME,
	// SHMALLOCSTATRUNTIME, CPUUSAGERUNTIME, L7GLOBALSTATSRUNTIME, L7VIRTUALSERVICESTATSRUNTIME, SEAGENTVNICDBRUNTIME, SEAGENTGRAPHDBRUNTIME,
	// SEAGENTSTATERUNTIME, INTERFACERUNTIME, ARPTABLERUNTIME, DISPATCHERSTATRUNTIME, DISPATCHERSTATCLEARRUNTIME, DISPATCHERTABLEDUMPRUNTIME,
	// DISPATCHERREMOTETIMERLISTDUMPRUNTIME, METRICSAGENTMESSAGE, HEALTHMONITORSTATRUNTIME, METRICSENTITYRUNTIME, PERSISTENCEINTERNAL,
	// HTTPPOLICYSETINTERNAL, DNSPOLICYINTERNAL, CONNECTIONDUMPRUNTIME, SHAREDDBSTATS, SHAREDDBSTATSCLEAR, ICMPSTATRUNTIME, ROUTETABLERUNTIME,
	// VIRTUALMACHINE, POOLSERVER, SEVSLIST, MEMINFORUNTIME, RTERINGSTATRUNTIME, ALGOSTATRUNTIME, HEALTHMONITORRUNTIME, CPUSTATRUNTIME, SEVM, HOST,
	// PORTGROUP, CLUSTER, DATACENTER, VCENTER, HTTPPOLICYSETSTATS, DNSPOLICYSTATS, METRICSSESTATS, RATELIMITERSTATRUNTIME, NETWORKSECURITYPOLICYSTATS,
	// TCPCONNRUNTIME, POOLSTATS, CONNPOOLINTERNAL, CONNPOOLSTATS, VSHASHSHOWRUNTIME, SELOGSTATSRUNTIME, NETWORKSECURITYPOLICYDETAIL, LICENSERUNTIME,
	// SERVERRUNTIME, METRICSRUNTIMESUMMARY, METRICSRUNTIMEDETAIL, DISPATCHERSEHMPROBETEMPDISABLERUNTIME, POOLDEBUG, VSLOGMGRMAP, SERUMINSERTIONSTATS,
	// HTTPCACHE, HTTPCACHESTATS, SEDOSSTATRUNTIME, VSDOSSTATRUNTIME, SERVERUPDATEREQ, VSSCALEOUTLIST, SEMEMDISTRUNTIME, TCPCONNRUNTIMEDETAIL,
	// SEUPGRADESTATUS, SEUPGRADEPREVIEW, SEFAULTINJECTEXHAUSTM, SEFAULTINJECTEXHAUSTMCL, SEFAULTINJECTEXHAUSTMCLSMALL, SEFAULTINJECTEXHAUSTCONN,
	// SEHEADLESSONLINEREQ, SEUPGRADE, SEUPGRADESTATUSDETAIL, SERESERVEDVS, SERESERVEDVSCLEAR, VSCANDIDATESEHOSTLIST, SEGROUPUPGRADE, REBALANCE,
	// SEGROUPREBALANCE, SEAUTHSTATSRUNTIME, AUTOSCALESTATE, VIRTUALSERVICEAUTHSTATS, NETWORKSECURITYPOLICYDOS, KEYVALINTERNAL, KEYVALSUMMARYINTERNAL,
	// SERVERSTATEUPDATEINFO, CLTRACKINTERNAL, CLTRACKSUMMARYINTERNAL, MICROSERVICERUNTIME, SEMICROSERVICE, VIRTUALSERVICEANALYSIS, CLIENTINTERNAL,
	// CLIENTSUMMARYINTERNAL, MICROSERVICEGROUPRUNTIME, BGPRUNTIME, REQUESTQUEUERUNTIME, MIGRATEALL, MIGRATEALLSTATUSSUMMARY, MIGRATEALLSTATUSDETAIL,
	// INTERFACESUMMARYRUNTIME, INTERFACELACPRUNTIME, DNSTABLE, GSLBSERVICEDETAIL, GSLBSERVICEINTERNAL, GSLBSERVICEHMONSTAT, SETROLESREQUEST,
	// TRAFFICCLONERUNTIME, GEOLOCATIONINFO, SEVSHBSTATRUNTIME, GEODBINTERNAL, GSLBSITEINTERNAL, WAFSTATS, USERDEFINEDDATASCRIPTCOUNTERS, LLDPRUNTIME,
	// VSESSHARINGPOOL, NDTABLERUNTIME, IP6STATRUNTIME, ICMP6STATRUNTIME, SEVSSPLACEMENT, L4POLICYSETSTATS, L4POLICYSETINTERNAL, BGPDEBUGINFO, SHARD,
	// CPUSTATRUNTIMEDETAIL, SEASSERTSTATRUNTIME, SEFAULTINJECTINFRA, SEAGENTASSERTSTATRUNTIME, SEDATASTORESTATUS, DIFFQUEUESTATUS, IP6ROUTETABLERUNTIME,
	// SECURITYMGRSTATE, VIRTUALSERVICESESCALEOUTSTATUS, SHARDSERVERSTATUS, SEAGENTSHARDCLIENTRESOURCEMAP, SEAGENTCONSISTENTHASH, SEAGENTVNICDBHISTORY,
	// SEAGENTSHARDCLIENTAPPMAP, SEAGENTSHARDCLIENTEVENTHISTORY, SENATSTATRUNTIME, SENATFLOWRUNTIME, SERESOURCEPROTO, SECONSUMERPROTO,
	// SECREATEPENDINGPROTO, PLACEMENTSTATS, SEVIPPROTO, RMVRFPROTO, VCENTERMAP, VIMGRVCENTERRUNTIME, INTERESTEDVMS, INTERESTEDHOSTS,
	// VCENTERSUPPORTEDCOUNTERS, ENTITYCOUNTERS, TRANSACTIONSTATS, SEVMCREATEPROGRESS, PLACEMENTSTATUS, VISUBFOLDERS, VIDATASTORE, VIHOSTRESOURCES,
	// CLOUDCONNECTOR, VINETWORKSUBNETVMS, VIDATASTORECONTENTS, VIMGRVCENTERCLOUDRUNTIME, VIVCENTERPORTGROUPS, VIVCENTERDATACENTERS, VIMGRHOSTRUNTIME,
	// PLACEMENTGLOBALS, APICCONFIGURATION, CIFTABLE, APICTRANSACTION, VIRTUALSERVICESTATEDBCACHESUMMARY, POOLSTATEDBCACHESUMMARY,
	// SERVERSTATEDBCACHESUMMARY, APICAGENTINTERNAL, APICTRANSACTIONFLAP, APICGRAPHINSTANCES, APICEPGS, APICEPGEPS, APICDEVICEPKGVER, APICTENANTS,
	// APICVMMDOMAINS, NSXCONFIGURATION, NSXSGTABLE, NSXAGENTINTERNAL, NSXSGINFO, NSXSGIPS, NSXAGENTINTERNALCLI, MAXOBJECTS.

	object_type?: string

	// Summary of reason why alert is generated.

	summary?: string

	// The alert config will trigger the selected alert action, which can send notifications and execute a controlscript.
	// It is a reference to an object of type actiongroupconfig.

	action_group_ref?: string

	// Enable or disable this alert config from generating new alerts.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enabled?: bool

	// An alert is expired and deleted after the expiry time has elapsed.
	// The original event triggering the alert remains in the event's log.
	// Allowed values are 1-31536000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 86400.

	expiry_time?: string

	// Recommendation of alertconfig.

	recommendation?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Alerts are suppressed (throttled) for this duration of time since the last alert was raised for this alert config.
	// Allowed values are 0-31536000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 600.

	throttle?: string

	// Avi controller URL of the object.

	url?: string

	// List of filters matching on events or client logs used for triggering alerts.

	alert_rule: string
}

avi_alertsyslogconfig :: {

	// A user-friendly name of the syslog notification.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// The list of syslog servers.

	syslog_servers?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// User defined description for alert syslog config.

	description?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_cloudproperties :: {

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Cloud types supported by cloudconnector.
	// Enum options - CLOUD_NONE, CLOUD_VCENTER, CLOUD_OPENSTACK, CLOUD_AWS, CLOUD_VCA, CLOUD_APIC, CLOUD_MESOS, CLOUD_LINUXSERVER, CLOUD_DOCKER_UCP,
	// CLOUD_RANCHER, CLOUD_OSHIFT_K8S, CLOUD_AZURE, CLOUD_GCP.

	cc_vtypes?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Cloudconnector properties.

	cc_props?: string

	// Hypervisor properties.

	hyp_props?: string

	// Properties specific to a cloud type.

	info?: string

	// The state that should be applied on the entity.

	state?: string
}

avi_gslbservice_patch_member :: {

	// HTTP body of GSLB Service Member in YAML or JSON format.

	data?: string

	// Name of the GSLB Service

	name: string

	// Query parameters passed to the HTTP API.

	params?: string

	// The state that should be applied to the member. Member is
	// identified using field member.ip.addr.

	state?: string
}

avi_pool :: {

	// Synchronize cisco apic epg members with pool servers.

	apic_epg_name?: string

	// Indicates whether existing ips are disabled(false) or deleted(true) on dns hostname refreshdetail -- on a dns refresh, some ips set on pool may
	// no longer be returned by the resolver.
	// These ips are deleted from the pool when this knob is set to true.
	// They are disabled, if the knob is set to false.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	delete_server_on_dns_refresh?: bool

	// Fully qualified dns hostname which will be used in the tls sni extension in server connections if sni is enabled.
	// If no value is specified, avi will use the incoming host header instead.

	server_name?: string

	// The passive monitor will monitor client to server connections and requests and adjust traffic load to servers based on successful responses.
	// This may alter the expected behavior of the lb method, such as round robin.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	inline_health_monitor?: bool

	// Rate limit connections to each server.

	max_conn_rate_per_server?: string

	// Enable request queue when pool is full.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	request_queue_enabled?: bool

	// Server autoscale.
	// Not used anymore.
	// Field deprecated in 18.1.2.

	server_auto_scale?: bool

	// Specifies settings related to analytics.
	// It is a reference to an object of type analyticsprofile.
	// Field introduced in 18.1.4,18.2.1.

	analytics_profile_ref?: string

	// Persistence will ensure the same user sticks to the same server for a desired duration of time.
	// It is a reference to an object of type applicationpersistenceprofile.

	application_persistence_profile_ref?: string

	// Duration for which new connections will be gradually ramped up to a server recently brought online.
	// Useful for lb algorithms that are least connection based.
	// Allowed values are 1-300.
	// Special values are 0 - 'immediate'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	connection_ramp_duration?: string

	// Used to gracefully disable a server.
	// Virtual service waits for the specified time before terminating the existing connections  to the servers that are disabled.
	// Allowed values are 1-7200.
	// Special values are 0 - 'immediate', -1 - 'infinite'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.

	graceful_disable_timeout?: string

	// The maximum time-to-first-byte of a server.
	// Allowed values are 1-5000.
	// Special values are 0 - 'automatic'.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	capacity_estimation_ttfb_thresh?: string

	// Inherited config from virtualservice.

	east_west?: bool

	// Manually select the networks and subnets used to provide reachability to the pool's servers.
	// Specify the subnet using the following syntax  10-1-1-0/24.
	// Use static routes in vrf configuration when pool servers are not directly connected butroutable from the service engine.

	placement_networks?: string

	// Checksum of cloud configuration for pool.
	// Internally set by cloud connector.

	cloud_config_cksum?: string

	// The maximum number of concurrent connections allowed to each server within the pool.
	// Note  applied value will be no less than the number of service engines that the pool is placed on.
	// If set to 0, no limit is applied.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	max_concurrent_connections_per_server?: string

	// Metadata pertaining to the service provided by this pool.
	// In openshift/kubernetes environments, app metadata info is stored.
	// Any user input to this field will be overwritten by avi vantage.
	// Field introduced in 17.2.14,18.1.5,18.2.1.

	service_metadata?: string

	// Service engines will present a client ssl certificate to the server.
	// It is a reference to an object of type sslkeyandcertificate.

	ssl_key_and_certificate_ref?: string

	// Determines analytics settings for the pool.
	// Field introduced in 18.1.5, 18.2.1.

	analytics_policy?: string

	// Enable or disable the pool.
	// Disabling will terminate all open connections and pause health monitors.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enabled?: bool

	// Rewrite incoming host header to server name of the server to which the request is proxied.
	// Enabling this feature rewrites host header for requests to all servers in the pool.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	rewrite_host_header_to_server_name?: bool

	// The state that should be applied on the entity.

	state?: string

	// Verify server health by applying one or more health monitors.
	// Active monitors generate synthetic traffic from each service engine and mark a server up or down based on the response.
	// The passive monitor listens only to client to server communication.
	// It raises or lowers the ratio of traffic destined to a server based on successful responses.
	// It is a reference to an object of type healthmonitor.

	health_monitor_refs?: string

	// Minimum number of requests to be queued when pool is full.
	// Default value when not specified in API or module is interpreted by Avi Controller as 128.

	request_queue_depth?: string

	// If sni server name is specified, rewrite incoming host header to the sni server name.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	rewrite_host_header_to_sni?: bool

	// Server timeout value specifies the time within which a server connection needs to be established and a request-response exchange completes
	// between avi and the server.
	// Value of 0 results in using default timeout of 60 minutes.
	// Allowed values are 0-3600000.
	// Field introduced in 18.1.5,18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	server_timeout?: string

	// Enable tls sni for server connections.
	// If disabled, avi will not send the sni extension as part of the handshake.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	sni_enabled?: bool

	// When enabled, avi re-encrypts traffic to the backend servers.
	// The specific ssl profile defines which ciphers and ssl versions will be supported.
	// It is a reference to an object of type sslprofile.

	ssl_profile_ref?: string

	// Virtual routing context that the pool is bound to.
	// This is used to provide the isolation of the set of networks the pool is attached to.
	// The pool inherits the virtual routing context of the virtual service, and this field is used only internally, and is set by pb-transform.
	// It is a reference to an object of type vrfcontext.

	vrf_ref?: string

	// A/b pool configuration.
	// Field deprecated in 18.1.2.

	ab_pool?: string

	// Degree of non-affinity for core affinity based server selection.
	// Allowed values are 1-65535.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	lb_algorithm_core_nonaffinity?: string

	// Minimum number of servers in up state for marking the pool up.
	// Field introduced in 18.2.1, 17.2.12.

	min_servers_up?: string

	// The name of the pool.

	name: string

	// Avi will validate the ssl certificate present by a server against the selected pki profile.
	// It is a reference to an object of type pkiprofile.

	pki_profile_ref?: string

	// Network ids for the launch configuration.

	autoscale_networks?: string

	// Inline estimation of capacity of servers.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	capacity_estimation?: bool

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// Enable common name check for server certificate.
	// If enabled and no explicit domain name is specified, avi will use the incoming host header to do the match.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	host_check_enabled?: bool

	// Priority of this pool in a a-b pool pair.
	// Internally used.
	// Field deprecated in 18.1.2.

	ab_priority?: string

	// Creator name.

	created_by?: string

	// Traffic sent to servers will use this destination server port unless overridden by the server's specific port attribute.
	// The ssl checkbox enables avi to server encryption.
	// Allowed values are 1-65535.
	// Default value when not specified in API or module is interpreted by Avi Controller as 80.

	default_server_port?: string

	// Allow server lookup by name.
	// Field introduced in 17.1.11,17.2.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	lookup_server_by_name?: bool

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// The pool directs load balanced traffic to this list of destination servers.
	// The servers can be configured by ip address, name, network or via ip address group.

	servers?: string

	// The load balancing algorithm will pick a server within the pool's list of available servers.
	// Enum options - LB_ALGORITHM_LEAST_CONNECTIONS, LB_ALGORITHM_ROUND_ROBIN, LB_ALGORITHM_FASTEST_RESPONSE, LB_ALGORITHM_CONSISTENT_HASH,
	// LB_ALGORITHM_LEAST_LOAD, LB_ALGORITHM_FEWEST_SERVERS, LB_ALGORITHM_RANDOM, LB_ALGORITHM_FEWEST_TASKS, LB_ALGORITHM_NEAREST_SERVER,
	// LB_ALGORITHM_CORE_AFFINITY, LB_ALGORITHM_TOPOLOGY.
	// Default value when not specified in API or module is interpreted by Avi Controller as LB_ALGORITHM_LEAST_CONNECTIONS.

	lb_algorithm?: string

	// (internal-use) networks designated as containing servers for this pool.
	// The servers may be further narrowed down by a filter.
	// This field is used internally by avi, not editable by the user.

	networks?: string

	// Server reselect configuration for http requests.

	server_reselect?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Comma separated list of domain names which will be used to verify the common names or subject alternative names presented by server certificates.
	// It is performed only when common name check host_check_enabled is enabled.

	domain_name?: string

	// Names of external auto-scale groups for pool servers.
	// Currently available only for aws and azure.
	// Field introduced in 17.1.2.

	external_autoscale_groups?: string

	// Enable an action - close connection, http redirect or local http response - when a pool failure happens.
	// By default, a connection will be closed, in case the pool experiences a failure.

	fail_action?: string

	// Http header name to be used for the hash key.

	lb_algorithm_consistent_hash_hdr?: string

	// A list of nsx service groups where the servers for the pool are created.
	// Field introduced in 17.1.1.

	nsx_securitygroup?: string

	// Avi controller URL of the object.

	url?: string

	// Reference to server autoscale policy.
	// It is a reference to an object of type serverautoscalepolicy.

	autoscale_policy_ref?: string

	// Connection pool properties.
	// Field introduced in 18.2.1.

	conn_pool_properties?: string

	// If configured then avi will trigger orchestration of pool server creation and deletion.
	// It is only supported for container clouds like mesos, openshift, kubernetes, docker, etc.
	// It is a reference to an object of type autoscalelaunchconfig.

	autoscale_launch_config_ref?: string

	// Indicates if the pool is a site-persistence pool.
	// Field introduced in 17.2.1.

	gslb_sp_enabled?: bool

	// Field deprecated in 18.2.1.

	server_count?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// A description of the pool.

	description?: string

	// Periodicity of feedback for fewest tasks server selection algorithm.
	// Allowed values are 1-300.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	fewest_tasks_feedback_delay?: string

	// Criteria used as a key for determining the hash between the client and  server.
	// Enum options - LB_ALGORITHM_CONSISTENT_HASH_SOURCE_IP_ADDRESS, LB_ALGORITHM_CONSISTENT_HASH_SOURCE_IP_ADDRESS_AND_PORT,
	// LB_ALGORITHM_CONSISTENT_HASH_URI, LB_ALGORITHM_CONSISTENT_HASH_CUSTOM_HEADER, LB_ALGORITHM_CONSISTENT_HASH_CUSTOM_STRING,
	// LB_ALGORITHM_CONSISTENT_HASH_CALLID.
	// Default value when not specified in API or module is interpreted by Avi Controller as LB_ALGORITHM_CONSISTENT_HASH_SOURCE_IP_ADDRESS.

	lb_algorithm_hash?: string

	// Minimum number of health monitors in up state to mark server up.
	// Field introduced in 18.2.1, 17.2.12.

	min_health_monitors_up?: string

	// Uuid of the pool.

	uuid?: string

	// Name of container cloud application that constitutes a pool in a a-b pool configuration, if different from vs app.
	// Field deprecated in 18.1.2.

	a_pool?: string

	// Use list of servers from ip address group.
	// It is a reference to an object of type ipaddrgroup.

	ipaddrgroup_ref?: string

	// Header name for custom header persistence.
	// Field deprecated in 18.1.2.

	prst_hdr_name?: string

	// Do not translate the client's destination port when sending the connection to the server.
	// The pool or servers specified service port will still be used for health monitoring.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	use_service_port?: bool
}

avi_prioritylabels :: {

	// The state that should be applied on the entity.

	state?: string

	// Avi controller URL of the object.

	url?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// It is a reference to an object of type cloud.

	cloud_ref?: string

	// A description of the priority labels.

	description?: string

	// The name of the priority labels.

	name: string

	// Equivalent priority labels in descending order.

	equivalent_labels?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Uuid of the priority labels.

	uuid?: string
}

avi_sslprofile :: {

	// Ciphers suites represented as defined by U(http://www.openssl.org/docs/apps/ciphers.html).
	// Default value when not specified in API or module is interpreted by Avi Controller as AES:3DES:RC4.

	accepted_ciphers?: string

	// Enum options - tls_ecdhe_ecdsa_with_aes_128_gcm_sha256, tls_ecdhe_ecdsa_with_aes_256_gcm_sha384, tls_ecdhe_rsa_with_aes_128_gcm_sha256,
	// tls_ecdhe_rsa_with_aes_256_gcm_sha384, tls_ecdhe_ecdsa_with_aes_128_cbc_sha256, tls_ecdhe_ecdsa_with_aes_256_cbc_sha384,
	// tls_ecdhe_rsa_with_aes_128_cbc_sha256, tls_ecdhe_rsa_with_aes_256_cbc_sha384, tls_rsa_with_aes_128_gcm_sha256, tls_rsa_with_aes_256_gcm_sha384,
	// tls_rsa_with_aes_128_cbc_sha256, tls_rsa_with_aes_256_cbc_sha256, tls_ecdhe_ecdsa_with_aes_128_cbc_sha, tls_ecdhe_ecdsa_with_aes_256_cbc_sha,
	// tls_ecdhe_rsa_with_aes_128_cbc_sha, tls_ecdhe_rsa_with_aes_256_cbc_sha, tls_rsa_with_aes_128_cbc_sha, tls_rsa_with_aes_256_cbc_sha,
	// tls_rsa_with_3des_ede_cbc_sha, tls_rsa_with_rc4_128_sha.

	cipher_enums?: string

	// Sslrating settings for sslprofile.

	ssl_rating?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string

	// Set of versions accepted by the server.

	accepted_versions?: string

	// Name of the object.

	name: string

	// Prefer the ssl cipher ordering presented by the client during the ssl handshake over the one specified in the ssl profile.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	prefer_client_cipher_ordering?: bool

	// The amount of time in seconds before an ssl session expires.
	// Default value when not specified in API or module is interpreted by Avi Controller as 86400.

	ssl_session_timeout?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Send 'close notify' alert message for a clean shutdown of the ssl connection.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	send_close_notify?: bool

	// The state that should be applied on the entity.

	state?: string

	// Unique object identifier of the object.

	uuid?: string

	// List of tag.

	tags?: string

	// Ssl profile type.
	// Enum options - SSL_PROFILE_TYPE_APPLICATION, SSL_PROFILE_TYPE_SYSTEM.
	// Field introduced in 17.2.8.
	// Default value when not specified in API or module is interpreted by Avi Controller as SSL_PROFILE_TYPE_APPLICATION.

	type?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// User defined description for the object.

	description?: string

	// Dh parameters used in ssl.
	// At this time, it is not configurable and is set to 2048 bits.

	dhparam?: string

	// Enable ssl session re-use.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_ssl_session_reuse?: bool
}

avi_webhook :: {

	// Uuid of the webhook profile.
	// Field introduced in 17.1.1.

	uuid?: string

	// Verification token sent back with the callback asquery parameters.
	// Field introduced in 17.1.1.

	verification_token?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Callback url for the webhook.
	// Field introduced in 17.1.1.

	callback_url?: string

	// The name of the webhook profile.
	// Field introduced in 17.1.1.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// Field introduced in 17.1.1.

	description?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string

	// Avi controller URL of the object.

	url?: string
}

avi_systemconfiguration :: {

	// Tenantconfiguration settings for systemconfiguration.

	global_tenant_config?: string

	// Configure ip access control for controller to restrict open access.

	mgmt_ip_access_control?: string

	// Portalconfiguration settings for systemconfiguration.

	portal_configuration?: string

	// Avi controller URL of the object.

	url?: string

	// Unique object identifier of the object.

	uuid?: string

	// Adminauthconfiguration settings for systemconfiguration.

	admin_auth_configuration?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Dns virtualservices hosting fqdn records for applications across avi vantage.
	// If no virtualservices are provided, avi vantage will provide dns services for configured applications.
	// Switching back to avi vantage from dns virtualservices is not allowed.
	// It is a reference to an object of type virtualservice.

	dns_virtualservice_refs?: string

	// Emailconfiguration settings for systemconfiguration.

	email_configuration?: string

	// Configure secure channel properties.
	// Field introduced in 18.1.4, 18.2.1.

	secure_channel_configuration?: string

	// Snmpconfiguration settings for systemconfiguration.

	snmp_configuration?: string

	// Allowed hmac list for ssh to the management interface on the controller and service engines.
	// If this is not specified, all the default hmacs are allowed.

	ssh_hmacs?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Specifies the default license tier which would be used by new clouds.
	// Enum options - ENTERPRISE_16, ENTERPRISE_18.
	// Field introduced in 17.2.5.
	// Default value when not specified in API or module is interpreted by Avi Controller as ENTERPRISE_18.

	default_license_tier?: string

	// Dnsconfiguration settings for systemconfiguration.

	dns_configuration?: string

	// Boolean flag to set docker_mode.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	docker_mode?: bool

	// Ntpconfiguration settings for systemconfiguration.

	ntp_configuration?: string

	// Proxyconfiguration settings for systemconfiguration.

	proxy_configuration?: string

	// The state that should be applied on the entity.

	state?: string

	// Linuxconfiguration settings for systemconfiguration.

	linux_configuration?: string

	// Allowed ciphers list for ssh to the management interface on the controller and service engines.
	// If this is not specified, all the default ciphers are allowed.

	ssh_ciphers?: string

	// This flag is set once the initial controller setup workflow is complete.
	// Field introduced in 18.2.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	welcome_workflow_complete?: bool
}

avi_analyticsprofile :: {

	// Score assigned when supporting ssl3.0 encryption protocol.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 3.5.

	hs_security_ssl30_score?: string

	// Avi controller URL of the object.

	url?: string

	// Exclude queries to gslb services that are operationally down from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_gs_down_as_error?: bool

	// Maximum penalty that may be deducted from health score for anomalies.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.

	hs_max_anomaly_penalty?: string

	// Threshold number of connections in 5min, below which apdexr, apdexc, rum_apdex, and other network quality metrics are not computed.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.0.

	hs_pscore_traffic_threshold_l4_server?: string

	// Penalty for allowing non-pfs handshakes.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.0.

	hs_security_nonpfs_penalty?: string

	// Dos connection rate below which the dos security assessment will not kick in.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1000.

	hs_min_dos_rate?: string

	// Penalty for allowing weak signature algorithm(s).
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.0.

	hs_security_weak_signature_algo_penalty?: string

	// Maximum number of sip messages added in logs for a sip transaction.
	// By default, this value is 20.
	// Allowed values are 1-1000.
	// Field introduced in 17.2.13, 18.1.5, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	sip_log_depth?: string

	// If a client receives an http response in less than the satisfactory latency threshold, the request is considered satisfied.
	// It is considered tolerated if it is not satisfied and less than tolerated latency factor multiplied by the satisfactory latency threshold.
	// Greater than this number and the client's request is considered frustrated.
	// Allowed values are 1-30000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 500.

	apdex_response_threshold?: string

	// Virtual service threshold factor for tolerated page load time (plt) as multiple of apdex_rum_threshold.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	apdex_rum_tolerated_factor?: string

	// User defined description for the object.

	description?: string

	// Exclude tcp resets by client from the list of potential errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_tcp_reset_as_error?: bool

	// Score assigned when the certificate expires in more than 30 days.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.0.

	hs_security_certscore_gt30d?: string

	// Rules applied to the http application log for filtering sensitive information.
	// Field introduced in 17.2.10, 18.1.2.

	sensitive_log_profile?: string

	// Tolerated client to avi round trip time(rtt) factor.
	// It is a multiple of apdex_rtt_tolerated_factor.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	apdex_rtt_tolerated_factor?: string

	// If a client is able to load a page in less than the satisfactory latency threshold, the pageload is considered satisfied.
	// It is considered tolerated if it is greater than satisfied but less than the tolerated latency multiplied by satisfied latency.
	// Greater than this number and the client's request is considered frustrated.
	// A pageload includes the time for dns lookup, download of all http objects, and page render time.
	// Allowed values are 1-30000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5000.

	apdex_rum_threshold?: string

	// Exclude dns queries to domains outside the domains configured in the dns application profile from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_invalid_dns_domain_as_error?: bool

	// Score assigned when the certificate has expired.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.0.

	hs_security_certscore_expired?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Exclude server dns error response from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_server_dns_error_as_error?: bool

	// Adds free performance score credits to health score.
	// It can be used for compensating health score for known slow applications.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.

	hs_performance_boost?: string

	// Score assigned when the certificate expires in less than or equal to 7 days.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.0.

	hs_security_certscore_le07d?: string

	// Score assigned when no algorithm is used for encryption.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.0.

	hs_security_encalgo_score_none?: string

	// Block of http response codes to be excluded from being classified as an error.
	// Enum options - AP_HTTP_RSP_4XX, AP_HTTP_RSP_5XX.

	resp_code_block?: string

	// A server connection is considered lossy when percentage of times a packet could not be transmitted due to tcp zero window is above this threshold.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	conn_server_lossy_zero_win_size_event_threshold?: string

	// Disable analytics on backend servers.
	// This may be desired in container environment when there are large number of ephemeral servers.
	// Additionally, no healthscore of servers is computed when server analytics is disabled.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_server_analytics?: bool

	// Exclude dns policy drops from the list of errors.
	// Field introduced in 17.2.2.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_dns_policy_drop_as_significant?: bool

	// Skips health score computation of pool servers when number of servers in a pool is more than this setting.
	// Allowed values are 0-5000.
	// Special values are 0- 'server health score is disabled'.
	// Field introduced in 17.2.13, 18.1.4.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	healthscore_max_server_limit?: string

	// Tolerated client to avi round trip time(rtt) factor.
	// It is a multiple of apdex_rtt_tolerated_factor.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	apdex_server_rtt_tolerated_factor?: string

	// Exclude persistence server changed while load balancing' from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_persistence_change_as_error?: bool

	// Exclude client closed connection before an http request could be completed from being classified as an error.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_client_close_before_request_as_error?: bool

	// Maximum penalty that may be deducted from health score based on security assessment.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 100.

	hs_max_security_penalty?: string

	// Score assigned when the minimum cipher strength is less than 128 bits.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 3.5.

	hs_security_cipherscore_lt128b?: string

	// Deprecated.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.0.

	hs_security_selfsignedcert_penalty?: string

	// A connection between avi and server is considered lossy when more than this percentage of out of order packets are received.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 50.

	conn_server_lossy_ooo_threshold?: string

	// Exclude unsupported dns queries from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_unsupported_dns_query_as_error?: bool

	// This flag sets the time duration of no live data traffic after which virtual service metrics processing is suspended.
	// It is applicable only when disable_ondemand_metrics is set to false.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1800.

	ondemand_metrics_idle_timeout?: string

	// List of http status code ranges to be excluded from being classified as an error.

	ranges?: string

	// Client tolerated response latency factor.
	// Client must receive a response within this factor times the satisfactory threshold (apdex_response_threshold) to be considered tolerated.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	apdex_response_tolerated_factor?: string

	// A server http response is considered satisfied if latency is less than the satisfactory latency threshold.
	// The response is considered tolerated when it is greater than satisfied but less than the tolerated latency factor * s_latency.
	// Greater than this number and the server response is considered frustrated.
	// Allowed values are 1-30000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 400.

	apdex_server_response_threshold?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// A connection between client and avi is considered lossy when more than this percentage of packets are retransmitted due to timeout.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	conn_lossy_timeo_rexmt_threshold?: string

	// Penalty for allowing certificates with invalid chain.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.0.

	hs_security_chain_invalidity_penalty?: string

	// Score assigned when rc4 algorithm is used for encryption.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.5.

	hs_security_encalgo_score_rc4?: string

	// Penalty for not enabling hsts.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1.0.

	hs_security_hsts_penalty?: string

	// Uuid of the analytics profile.

	uuid?: string

	// Score assigned when the minimum cipher strength is 0 bits.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 0.0.

	hs_security_cipherscore_eq000b?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Virtual service (vs) metrics are processed only when there is live data traffic on the vs.
	// In case, vs is idle for a period of time as specified by ondemand_metrics_idle_timeout then metrics processing is suspended for that vs.
	// Field introduced in 18.1.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_ondemand_metrics?: bool

	// Disable node (service engine) level analytics forvs metrics.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_se_analytics?: bool

	// Time window (in secs) within which only unique health change events should occur.
	// Default value when not specified in API or module is interpreted by Avi Controller as 1209600.

	hs_event_throttle_window?: string

	// Score assigned when the certificate expires in less than or equal to 30 days.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	hs_security_certscore_le30d?: string

	// Exclude queries to gslb services that have no available members from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_no_valid_gs_member_as_error?: bool

	// Score assigned when supporting tls1.0 encryption protocol.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.0.

	hs_security_tls10_score?: string

	// The state that should be applied on the entity.

	state?: string

	// Satisfactory client to avi round trip time(rtt).
	// Allowed values are 1-2000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 125.

	apdex_server_rtt_threshold?: string

	// A connection between avi and server is considered lossy when more than this percentage of packets are retransmitted due to timeout.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 20.

	conn_server_lossy_timeo_rexmt_threshold?: string

	// A connection between avi and server is considered lossy when more than this percentage of packets are retransmitted.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 50.

	conn_server_lossy_total_rexmt_threshold?: string

	// Enables advanced analytics features like anomaly detection.
	// If set to false, anomaly computation (and associated rules/events) for vs, pool and server metrics will be disabled.
	// However, setting it to false reduces cpu and memory requirements for analytics subsystem.
	// Field introduced in 17.2.13, 18.1.5, 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enable_advanced_analytics?: bool

	// Score assigned when supporting tls1.1 encryption protocol.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.0.

	hs_security_tls11_score?: string

	// Satisfactory client to avi round trip time(rtt).
	// Allowed values are 1-2000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 250.

	apdex_rtt_threshold?: string

	// A client connection is considered lossy when percentage of times a packet could not be transmitted due to tcp zero window is above this threshold.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 2.

	conn_lossy_zero_win_size_event_threshold?: string

	// Disable virtualservice (frontend) analytics.
	// This flag disables metrics and healthscore for virtualservice.
	// Field introduced in 18.2.1.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	disable_vs_analytics?: bool

	// Exclude 'server unanswered syns' from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_syn_retransmit_as_error?: bool

	// Maximum penalty that may be deducted from health score for high resource utilization.
	// Allowed values are 0-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 25.

	hs_max_resources_penalty?: string

	// Score assigned when supporting tls1.2 encryption protocol.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.0.

	hs_security_tls12_score?: string

	// Configure to stream logs to an external server.
	// Field introduced in 17.1.1.

	client_log_streaming_config?: string

	// A connection between client and avi is considered lossy when more than this percentage of out of order packets are received.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 50.

	conn_lossy_ooo_threshold?: string

	// Exclude queries to domains that did not have configured services/records from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_no_dns_record_as_error?: bool

	// Exclude server tcp reset from errors.
	// It is common for applications like ms exchange.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_server_tcp_reset_as_error?: bool

	// List of sip status codes to be excluded from being classified as an error.
	// Field introduced in 17.2.13, 18.1.5, 18.2.1.

	exclude_sip_error_codes?: string

	// Score assigned when the minimum cipher strength is greater than equal to 128 bits.
	// Allowed values are 0-5.
	// Default value when not specified in API or module is interpreted by Avi Controller as 5.0.

	hs_security_cipherscore_ge128b?: string

	// Server tolerated response latency factor.
	// Servermust response within this factor times the satisfactory threshold (apdex_server_response_threshold) to be considered tolerated.
	// Allowed values are 1-1000.
	// Default value when not specified in API or module is interpreted by Avi Controller as 4.0.

	apdex_server_response_tolerated_factor?: string

	// Configure which logs are sent to the avi controller from ses and how they are processed.

	client_log_config?: string

	// A connection between client and avi is considered lossy when more than this percentage of packets are retransmitted.
	// Allowed values are 1-100.
	// Default value when not specified in API or module is interpreted by Avi Controller as 50.

	conn_lossy_total_rexmt_threshold?: string

	// Exclude invalid dns queries from the list of errors.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	exclude_invalid_dns_query_as_error?: bool

	// List of http status codes to be excluded from being classified as an error.
	// Error connections or responses impacts health score, are included as significant logs, and may be classified as part of a dos attack.

	exclude_http_error_codes?: string

	// Threshold number of connections in 5min, below which apdexr, apdexc, rum_apdex, and other network quality metrics are not computed.
	// Default value when not specified in API or module is interpreted by Avi Controller as 10.0.

	hs_pscore_traffic_threshold_l4_client?: string

	// The name of the analytics profile.

	name: string
}

avi_applicationpersistenceprofile :: {

	// A user-friendly name for the persistence profile.

	name: string

	// Method used to persist clients to the same server for a duration of time or a session.
	// Enum options - PERSISTENCE_TYPE_CLIENT_IP_ADDRESS, PERSISTENCE_TYPE_HTTP_COOKIE, PERSISTENCE_TYPE_TLS, PERSISTENCE_TYPE_CLIENT_IPV6_ADDRESS,
	// PERSISTENCE_TYPE_CUSTOM_HTTP_HEADER, PERSISTENCE_TYPE_APP_COOKIE, PERSISTENCE_TYPE_GSLB_SITE.
	// Default value when not specified in API or module is interpreted by Avi Controller as PERSISTENCE_TYPE_CLIENT_IP_ADDRESS.

	persistence_type: string

	// Specifies behavior when a persistent server has been marked down by a health monitor.
	// Enum options - HM_DOWN_PICK_NEW_SERVER, HM_DOWN_ABORT_CONNECTION, HM_DOWN_CONTINUE_PERSISTENT_SERVER.
	// Default value when not specified in API or module is interpreted by Avi Controller as HM_DOWN_PICK_NEW_SERVER.

	server_hm_down_recovery?: string

	// The state that should be applied on the entity.

	state?: string

	// Specifies the client ip persistence profile parameters.

	ip_persistence_profile?: string

	// Specifies the http cookie persistence profile parameters.

	http_cookie_persistence_profile?: string

	// Uuid of the persistence profile.

	uuid?: string

	// User defined description for the object.

	description?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Specifies the custom http header persistence profile parameters.

	hdr_persistence_profile?: string

	// This field describes the object's replication scope.
	// If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.
	// If the field is set to true, then the object is replicated across the federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	is_federated?: bool

	// Specifies the application cookie persistence profile parameters.

	app_cookie_persistence_profile?: string

	// Avi controller URL of the object.

	url?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string
}

avi_gslbgeodbprofile :: {

	// Field introduced in 17.1.1.

	description?: string

	// This field indicates that this object is replicated across gslb federation.
	// Field introduced in 17.1.3.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	is_federated?: bool

	// A user-friendly name for the geodb profile.
	// Field introduced in 17.1.1.

	name: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.1.1.

	tenant_ref?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Uuid of the geodb profile.
	// Field introduced in 17.1.1.

	uuid?: string

	// List of geodb entries.
	// An entry can either be a geodb file or an ip address group with geo properties.
	// Field introduced in 17.1.1.

	entries?: string

	// Avi controller URL of the object.

	url?: string
}

avi_httppolicyset :: {

	// Checksum of cloud configuration for pool.
	// Internally set by cloud connector.

	cloud_config_cksum?: string

	// Http request policy for the virtual service.

	http_request_policy?: string

	// Http response policy for the virtual service.

	http_response_policy?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Boolean flag to set is_internal_policy.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	is_internal_policy?: bool

	// Name of the http policy set.

	name: string

	// Avi controller URL of the object.

	url?: string

	// Http security policy for the virtual service.

	http_security_policy?: string

	// Uuid of the http policy set.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Creator name.

	created_by?: string

	// User defined description for the object.

	description?: string
}

avi_l4policyset :: {

	// Field introduced in 17.2.7.
	// Default value when not specified in API or module is interpreted by Avi Controller as False.

	is_internal_policy?: bool

	// Policy to apply when a new transport connection is setup.
	// Field introduced in 17.2.7.

	l4_connection_policy?: string

	// The state that should be applied on the entity.

	state?: string

	// It is a reference to an object of type tenant.
	// Field introduced in 17.2.7.

	tenant_ref?: string

	// Id of the l4 policy set.
	// Field introduced in 17.2.7.

	uuid?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Creator name.
	// Field introduced in 17.2.7.

	created_by?: string

	// Field introduced in 17.2.7.

	description?: string

	// Name of the l4 policy set.
	// Field introduced in 17.2.7.

	name: string

	// Avi controller URL of the object.

	url?: string
}

avi_scheduler :: {

	// Backup configuration to be executed by this scheduler.
	// It is a reference to an object of type backupconfiguration.

	backup_config_ref?: string

	// Boolean flag to set enabled.
	// Default value when not specified in API or module is interpreted by Avi Controller as True.

	enabled?: bool

	// Unit at which custom scheduler will run.
	// Enum options - SCHEDULER_FREQUENCY_UNIT_MIN, SCHEDULER_FREQUENCY_UNIT_HOUR, SCHEDULER_FREQUENCY_UNIT_DAY, SCHEDULER_FREQUENCY_UNIT_WEEK,
	// SCHEDULER_FREQUENCY_UNIT_MONTH.

	frequency_unit?: string

	// Avi controller URL of the object.

	url?: string

	// Patch operation to use when using avi_api_update_method as patch.

	avi_api_patch_op?: string

	// Default method for object update is HTTP PUT.
	// Setting to patch will override that behavior to use HTTP PATCH.

	avi_api_update_method?: string

	// Define scheduler action.
	// Enum options - SCHEDULER_ACTION_RUN_A_SCRIPT, SCHEDULER_ACTION_BACKUP.
	// Default value when not specified in API or module is interpreted by Avi Controller as SCHEDULER_ACTION_BACKUP.

	scheduler_action?: string

	// It is a reference to an object of type tenant.

	tenant_ref?: string

	// Unique object identifier of the object.

	uuid?: string

	// Frequency at which custom scheduler will run.
	// Allowed values are 0-60.

	frequency?: string

	// Scheduler run mode.
	// Enum options - RUN_MODE_PERIODIC, RUN_MODE_AT, RUN_MODE_NOW.

	run_mode?: string

	// Control script to be executed by this scheduler.
	// It is a reference to an object of type alertscriptconfig.

	run_script_ref?: string

	// Scheduler start date and time.

	start_date_time?: string

	// Scheduler end date and time.

	end_date_time?: string

	// Name of scheduler.

	name: string

	// The state that should be applied on the entity.

	state?: string
}
