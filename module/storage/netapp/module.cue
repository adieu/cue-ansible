package netapp

na_cdot_license :: {

	// List of licenses to add or remove.
	// Please note that trying to remove a non-existent license will throw an error.

	licenses?: string

	// Remove licenses that have expired in the cluster.

	remove_expired?: bool

	// Remove licenses that have no controller affiliation in the cluster.

	remove_unused?: bool

	// Serial number of the node associated with the license.
	// This parameter is used primarily when removing license for a specific service.
	// If this parameter is not provided, the cluster serial number is used by default.

	serial_number?: string
}

na_ontap_flexcache :: {

	// Use this parameter to automatically select existing aggregates for volume provisioning.Eg flexgroup
	// Note that the fastest aggregate type with at least one aggregate on each node of the cluster will be selected.

	auto_provision_as?: string

	// Junction path of the cache volume.

	junction_path?: string

	// Name of the origin cluster for the FlexCache.
	// Defaults to cluster associated with target vserver if absent.
	// Not used for creation.

	origin_cluster?: string

	// Name of the target volume for the FlexCache.

	volume: string

	// Name of the origin volume for the FlexCache.
	// Required for creation.

	origin_volume?: string

	// Name of the origin vserver for the FlexCache.
	// Required for creation.

	origin_vserver?: string

	// Aggregate list repeat count.

	aggr_list_multiplier?: string

	// The unit used to interpret the size parameter.

	size_unit?: string

	// time to wait for flexcache creation or deletion in seconds
	// if 0, the request is asynchronous
	// default is set to 3 minutes

	time_out?: string

	// Name of the target vserver for the FlexCache.
	// Note that hostname, username, password are intended for the target vserver.

	vserver: string

	// List of aggregates to host target FlexCache volume.

	aggr_list?: string

	// Offline FlexCache volume before deleting the FlexCache relationship.
	// The volume will be destroyed and data can be lost.

	force_offline?: bool

	// Unmount FlexCache volume. Delete the junction path at which the volume is mounted before deleting the FlexCache relationship.

	force_unmount?: bool

	// Size of cache volume.

	size?: string

	// Whether the specified relationship should exist or not.

	state?: string
}

sf_volume_access_group_manager :: {

	// The ID of the VLAN Virtual Network Tag to associate the volume access group with.

	virtual_network_tags?: string

	// The ID of the volume access group to modify or delete.

	volume_access_group_id?: string

	// List of volumes to initially include in the volume access group. If unspecified, the access group will start without any volumes.

	volumes?: string

	// List of Name/Value pairs in JSON object format.

	attributes?: string

	// List of initiators to include in the volume access group. If unspecified, the access group will start out without configured initiators.

	initiators?: string

	// Name of the volume access group. It is not required to be unique, but recommended.

	name: string

	// Whether the specified volume access group should exist or not.

	state: string

	// The ID of the SolidFire Virtual Network ID to associate the volume access group with.

	virtual_network_id?: string
}

na_ontap_net_port :: {

	// Specifies the port's associated IPspace name.
	// The 'Cluster' ipspace is reserved for cluster ports.

	ipspace?: string

	// Specifies the name of port(s).

	ports: string

	// Specifies the user preferred duplex setting of the port.
	// Valid values auto, half, full

	duplex_admin?: string

	// Specifies the user preferred flow control setting of the port.

	flowcontrol_admin?: string

	// Specifies the name of node.

	node: string

	// Specifies the user preferred speed setting of the port.

	speed_admin?: string

	// Whether the specified net port should exist or not.

	state?: string

	// Enables or disables Ethernet auto-negotiation of speed, duplex and flow control.

	autonegotiate_admin?: string

	// Specifies the maximum transmission unit (MTU) reported by the port.

	mtu?: string
}

na_ontap_ports :: {

	// Specify the required ipspace for the broadcast domain.
	// A domain ipspace can not be modified after the domain has been created.

	ipspace?: string

	// List of ports.

	names: [..._]

	// Protocols accepted for portset.

	portset_type?: string

	// name of the portset or broadcast domain.

	resource_name: string

	// type of the resource to add a port to or remove a port from.

	resource_type: string

	// Whether the specified port should be added or removed.

	state?: string

	// Name of the SVM.
	// Specify this option when operating on portset.

	vserver?: string
}

na_ontap_user_role :: {

	// The name of the vserver to use.

	vserver: string

	// The name of the role to manage.

	access_level?: string

	// The command or command directory to which the role has an access.

	command_directory_name: string

	// The name of the role to manage.

	name: string

	// A query for the role. The query must apply to the specified command or directory name.
	// Use double quotes "" for modifying a existing query to none.

	query?: string

	// Whether the specified user should exist or not.

	state?: string
}

na_cdot_qtree :: {

	// The name of the vserver to use.

	vserver: string

	// The name of the FlexVol the Qtree should exist on. Required when C(state=present).

	flexvol_name?: string

	// The name of the Qtree to manage.

	name: string

	// Whether the specified Qtree should exist or not.

	state: string
}

na_ontap_cifs_server :: {

	// Specifies the cifs server admin password.

	admin_password?: string

	// Specifies the cifs server admin username.

	admin_user_name?: string

	// The Fully Qualified Domain Name of the Windows Active Directory this CIFS server belongs to.

	domain?: string

	// CIFS Server Administrative Status.

	service_state?: string

	// The NetBIOS name of the domain or workgroup this CIFS server belongs to.

	workgroup?: string

	// If this is set and a machine account with the same name as specified in 'name' exists in the Active Directory, it will be overwritten and reused.

	force?: bool

	// Specifies the cifs_server name.

	name: string

	// The Organizational Unit (OU) within the Windows Active Directory this CIFS server belongs to.

	ou?: string

	// Whether the specified cifs_server should exist or not.

	state?: string

	// The name of the vserver to use.

	vserver: string
}

na_ontap_motd :: {

	// MOTD Text message, required when C(state=present).

	message?: string

	// Set to I(false) if Cluster-level Message of the Day should not be shown

	show_cluster_motd?: bool

	// If C(state=present) sets MOTD given in I(message) C(state=absent) removes it.

	state?: string

	// The name of the SVM motd should be set for.

	vserver: string
}

netapp_e_volume :: {

	// Required only when requested I(state=='present').
	// Name of the storage pool wherein the volume should reside.

	storage_pool_name?: string

	// Indicates whether caching should be used without battery backup.
	// Warning, M(cache_without_batteries==true) and the storage system looses power and there is no battery backup, data will be lost!

	cache_without_batteries?: bool

	// Duration in seconds before the wait_for_initialization operation will terminate.
	// M(wait_for_initialization==True) to have any effect on module's operations.

	initialization_timeout?: int

	// Dictionary containing meta data for the use, user, location, etc of the volume (dictionary is arbitrarily defined for whatever the user deems useful)
	// When I(workload_name) exists on the storage array but the metadata is different then the workload definition will be updated. (Changes will update all associated volumes!)
	// I(workload_name) must be specified when I(metadata) are defined.

	metadata?: {...}

	// The name of the volume to manage.

	name: string

	// Indicates whether read caching should be enabled for the volume.

	read_cache_enable?: bool

	// Whether the specified volume should exist

	state: string

	// Whether the volume should be thin provisioned.
	// Thin volumes can only be created when I(raid_level=="raidDiskPool").
	// Generally, use of thin-provisioning is not recommended due to performance impacts.

	thin_provision?: bool

	// This is the thin provision repository utilization threshold (in percent).
	// When the percentage of used storage of the maximum repository size exceeds this value then a alert will be issued and the I(thin_volume_expansion_policy) will be executed.
	// Values must be between or equal to 10 and 99.

	thin_volume_growth_alert_threshold?: string

	// Determines whether data assurance (DA) should be enabled for the volume
	// Only available when creating a new volume and on a storage pool with drives supporting the DA capability.

	data_assurance_enabled?: bool

	// Segment size of the volume
	// All values are in kibibytes.
	// Some common choices include '8', '16', '32', '64', '128', '256', and '512' but options are system dependent.
	// Retrieve the definitive system list from M(netapp_e_facts) under segment_sizes.
	// When the storage pool is a raidDiskPool then the segment size must be 128kb.
	// Segment size migrations are not allowed in this module

	segment_size_kb?: string

	// The unit used to interpret the size parameter

	size_unit?: string

	// Whether an existing SSD cache should be enabled on the volume (fails if no SSD cache defined)
	// The default value is to ignore existing SSD cache setting.

	ssd_cache_enabled?: bool

	// This value (in size_unit) sets the allocated space for the thin provisioned repository.
	// Initial value must between or equal to 4gb and 256gb in increments of 4gb.
	// During expansion operations the increase must be between or equal to 4gb and 256gb in increments of 4gb.
	// This option has no effect during expansion if I(thin_volume_expansion_policy=="automatic").
	// Generally speaking you should almost always use I(thin_volume_expansion_policy=="automatic).

	thin_volume_repo_size?: string

	// Specifies which controller will be the primary owner of the volume
	// Not specifying will allow the controller to choose ownership.

	owning_controller?: string

	// Required only when I(state=='present').
	// Size of the volume in I(size_unit).
	// Size of the virtual volume in the case of a thin volume in I(size_unit).
	// Maximum virtual volume size of a thin provisioned volume is 256tb; however other OS-level restrictions may exist.

	size: string

	// This is the thin volume expansion policy.
	// When I(thin_volume_expansion_policy=="automatic") and I(thin_volume_growth_alert_threshold) is exceed the I(thin_volume_max_repo_size) will be automatically expanded.
	// When I(thin_volume_expansion_policy=="manual") and I(thin_volume_growth_alert_threshold) is exceeded the storage system will wait for manual intervention.
	// The thin volume_expansion policy can not be modified on existing thin volumes in this module.
	// Generally speaking you should almost always use I(thin_volume_expansion_policy=="automatic).

	thin_volume_expansion_policy?: string

	// This is the maximum amount the thin volume repository will be allowed to grow.
	// Only has significance when I(thin_volume_expansion_policy=="automatic").
	// When the percentage I(thin_volume_repo_size) of I(thin_volume_max_repo_size) exceeds I(thin_volume_growth_alert_threshold) then a warning will be issued and the storage array will execute the I(thin_volume_expansion_policy) policy.
	// Expansion operations when I(thin_volume_expansion_policy=="automatic") will increase the maximum repository size.

	thin_volume_max_repo_size?: string

	// Forces the module to wait for expansion operations to complete before continuing.

	wait_for_initialization?: bool

	// Label for the workload defined by the metadata.
	// When I(workload_name) and I(metadata) are specified then the defined workload will be added to the storage array.
	// When I(workload_name) exists on the storage array but the metadata is different then the workload definition will be updated. (Changes will update all associated volumes!)
	// Existing workloads can be retrieved using M(netapp_e_facts).

	workload_name?: string

	// Indicates whether write-back caching should be enabled for the volume.

	write_cache_enable?: bool

	// Indicates whether or not automatic cache read-ahead is enabled.
	// This option has no effect on thinly provisioned volumes since the architecture for thin volumes cannot benefit from read ahead caching.

	read_ahead_enable?: bool
}

sf_volume_manager :: {

	// Initial quality of service settings for this volume. Configure as dict in playbooks.

	qos?: string

	// The size of the volume in (size_unit).
	// Required when C(state = present).

	size?: string

	// Whether the specified volume should exist or not.

	state: string

	// Should the volume provide 512-byte sector emulation?
	// Required when C(state=present)

	512emulation?: string

	// Access allowed for the volume.
	// readOnly: Only read operations are allowed.
	// readWrite: Reads and writes are allowed.
	// locked: No reads or writes are allowed.
	// replicationTarget: Identify a volume as the target volume for a paired set of volumes. If the volume is not paired, the access status is locked.
	// If unspecified, the access settings of the clone will be the same as the source.

	access?: string

	// The name of the volume to manage.

	name: string

	// The ID of the volume to manage or update.
	// In order to create multiple volumes with the same name, but different volume_ids, please declare the I(volume_id) parameter with an arbitrary value. However, the specified volume_id will not be assigned to the newly created volume (since it's an auto-generated property).

	volume_id?: string

	// Account ID for the owner of this volume.

	account_id: string

	// A YAML dictionary of attributes that you would like to apply on this volume.

	attributes?: string

	// The unit used to interpret the size parameter.

	size_unit?: string
}

na_cdot_aggregate :: {

	// Number of disks to place into the aggregate, including parity disks.
	// The disks in this newly-created aggregate come from the spare disk pool.
	// The smallest disks in this pool join the aggregate first, unless the C(disk-size) argument is provided.
	// Either C(disk-count) or C(disks) must be supplied. Range [0..2^31-1].
	// Required when C(state=present).

	disk_count?: string

	// The name of the aggregate to manage.

	name: string

	// Whether the specified aggregate should exist or not.

	state: string
}

na_cdot_user_role :: {

	// The name of the vserver to use.

	vserver: string

	// The name of the role to manage.

	access_level?: string

	// The command or command directory to which the role has an access.

	command_directory_name: string

	// The name of the role to manage.

	name: string

	// Whether the specified user should exist or not.

	state: string
}

na_ontap_qos_adaptive_policy_group :: {

	// Absolute minimum IOPS defined by this policy.

	absolute_min_iops?: string

	// Minimum expected IOPS defined by this policy.

	expected_iops?: string

	// The name of the policy group to manage.

	name: string

	// Whether the specified policy group should exist or not.

	state?: string

	// Setting to 'true' forces the deletion of the workloads associated with the policy group along with the policy group.

	force?: bool

	// Name of the existing policy group to be renamed to name.

	from_name?: string

	// Maximum possible IOPS per allocated or used TB|GB.

	peak_iops?: string

	// Whether peak_iops is specified by allocated or used space.

	peak_iops_allocation?: string

	// Name of the vserver to use.

	vserver: string
}

na_ontap_unix_group :: {

	// Specifies an identification number for the UNIX group.
	// Group ID is unique for each UNIX group.
	// Required for create, modifiable.

	id?: string

	// Specifies UNIX group's name, unique for each group.
	// Non-modifiable.

	name: string

	// Specifies if group name validation is skipped.

	skip_name_validation?: bool

	// Whether the specified group should exist or not.

	state?: string

	// Specifies the users associated with this group. Should be comma separated.
	// It represents the expected state of a list of users at any time.
	// Add a user into group if it is specified in expected state but not in current state.
	// Delete a user from group if it is specified in current state but not in expected state.
	// To delete all current users, use '' as value.

	users?: [..._]

	// Specifies the Vserver for the UNIX group.
	// Non-modifiable.

	vserver: string
}

na_ontap_gather_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include "aggregate_info", "cluster_node_info", "igroup_info", "lun_info", "net_dns_info", "net_ifgrp_info", "net_interface_info", "net_port_info", "nvme_info", "nvme_interface_info", "nvme_namespace_info", "nvme_subsystem_info", "ontap_version", "qos_adaptive_policy_info", "qos_policy_info", "security_key_manager_key_info", "security_login_account_info", "storage_failover_info", "volume_info", "vserver_info", "vserver_login_banner_info", "vserver_motd_info", "vserver_nfs_info" Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
	// nvme is supported with ONTAP 9.4 onwards.
	// use "help" to get a list of supported facts for your system.

	gather_subset?: string

	// Returns "info"

	state?: string
}

na_ontap_igroup :: {

	// List of initiators to be mapped to the igroup.
	// WWPN, WWPN Alias, or iSCSI name of Initiator to add or remove.
	// For a modify operation, this list replaces the existing initiators
	// This module does not add or remove specific initiator(s) in an igroup

	initiators?: string

	// The name of the igroup to manage.

	name: string

	// Name of a current portset to bind to the newly created igroup.

	bind_portset?: string

	// Forcibly remove the initiator even if there are existing LUNs mapped to this initiator group.

	force_remove_initiator?: bool

	// OS type of the initiators within the group.

	ostype?: string

	// Whether the specified Igroup should exist or not.

	state?: string

	// The name of the vserver to use.

	vserver: string

	// Name of igroup to rename to name.

	from_name?: string

	// Type of the initiator group.
	// Required when C(state=present).

	initiator_group_type?: string
}

na_ontap_igroup_initiator :: {

	// Name of the initiator group to which the initiator belongs.

	initiator_group: string

	// List of initiators to manage.

	names: string

	// Whether the specified initiator should exist or not in an igroup.

	state?: string

	// The name of the vserver to use.

	vserver: string
}

netapp_e_snapshot_images :: {

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// The name of the snapshot group in which you want to create a snapshot image.

	snapshot_group: string

	// Whether a new snapshot image should be created or oldest be deleted.

	state: string

	// Should https certificates be validated?

	validate_certs?: string
}

sf_snapshot_schedule_manager :: {

	// Pause / Resume a schedule.

	paused?: string

	// Should the schedule recur?

	recurring?: string

	// Retention period for the snapshot.
	// Format is 'HH:mm:ss'.

	retention?: string

	// The schedule ID for the schedule that you want to update or delete.

	schedule_id?: string

	// Name for the created snapshots.

	snapshot_name?: string

	// Starting date for the schedule.
	// Required when C(state=present).
	// Please use two '-' in the above format, or you may see an error- TypeError, is not JSON serializable description.
	// Format: C(2016--12--01T00:00:00Z)

	starting_date?: string

	// Time interval in hours.

	time_interval_hours?: string

	// Name for the snapshot schedule.

	name: string

	// Whether the specified schedule should exist or not.

	state: string

	// Time interval in days.

	time_interval_days?: string

	// Time interval in minutes.

	time_interval_minutes?: string

	// Volume IDs that you want to set the snapshot schedule for.
	// At least 1 volume ID is required for creating a new schedule.
	// required when C(state=present)

	volumes?: string
}

na_elementsw_ldap :: {

	// Identifies which user authentication method to use.

	authType?: string

	// The base DN of the tree to start the group search (will do a subtree search from here)

	groupSearchBaseDn?: string

	// Controls the default group search filter used

	groupSearchType?: string

	// A dully qualified DN to log in with to perform an LDAp search for the user (needs read access to the LDAP directory).

	searchBindDN?: string

	// The password for the searchBindDN account used for searching

	searchBindPassword?: string

	// A string that is used form a fully qualified user DN.

	userDNTemplate?: string

	// For use with the CustomFilter Search type

	groupSearchCustomFilter?: string

	// A comma-separated list of LDAP server URIs

	serverURIs?: string

	// Whether the specified volume should exist or not.

	state: string

	// The base DN of the tree to start the search (will do a subtree search from here)

	userSearchBaseDN?: string

	// the LDAP Filter to use

	userSearchFilter?: string
}

na_ontap_aggregate :: {

	// Number of disks to place into the aggregate, including parity disks.
	// The disks in this newly-created aggregate come from the spare disk pool.
	// The smallest disks in this pool join the aggregate first, unless the C(disk-size) argument is provided.
	// Either C(disk-count) or C(disks) must be supplied. Range [0..2^31-1].
	// Required when C(state=present).

	disk_count?: string

	// Specific list of disks to use for the new aggregate.
	// To create a "mirrored" aggregate with a specific list of disks, both 'disks' and 'mirror_disks' options must be supplied. Additionally, the same number of disks must be supplied in both lists.

	disks?: [..._]

	// List of mirror disks to use. It must contain the same number of disks specified in 'disks'.

	mirror_disks?: [..._]

	// Name of the aggregate to be renamed.

	from_name?: string

	// The name of the aggregate to manage.

	name: string

	// Node(s) for the aggregate to be created on.  If no node specified, mgmt lif home will be used.
	// If multiple nodes specified an aggr stripe will be made.

	nodes?: string

	// Specifies the type of RAID groups to use in the new aggregate.

	raid_type?: string

	// Whether the specified aggregate should exist or not.

	state?: string

	// Specifies that the new aggregate be mirrored (have two plexes).
	// If set to true, then the indicated disks will be split across the two plexes. By default, the new aggregate will not be mirrored.
	// This option cannot be used when a specific list of disks is supplied with either the 'disks' or 'mirror_disks' options.

	is_mirrored?: bool

	// time to wait for aggregate creation in seconds
	// default is set to 100 seconds

	time_out?: string

	// If set to "TRUE", this option specifies that all of the volumes hosted by the given aggregate are to be unmounted
	// before the offline operation is executed.
	// By default, the system will reject any attempt to offline an aggregate that hosts one or more online volumes.

	unmount_volumes?: bool

	// Set this parameter to 'true' for synchronous execution during create (wait until aggregate status is online)
	// Set this parameter to 'false' for asynchronous execution
	// For asynchronous, execution exits as soon as the request is sent, without checking aggregate status

	wait_for_online?: bool

	// Disk size to use in 4K block size.  Disks within 10% of specified size will be used.

	disk_size?: string

	// Type of disk to use to build aggregate

	disk_type?: string

	// Sets the maximum number of drives per raid group.

	raid_size?: string

	// Whether the specified aggregate should be enabled or disabled. Creates aggregate if doesnt exist.

	service_state?: string

	// Specifies the spare pool from which to select spare disks to use in creation of a new aggregate.

	spare_pool?: string
}

na_ontap_nvme_namespace :: {

	// Name of the vserver to use.

	vserver: string

	// Specifies the ostype for initiators

	ostype?: string

	// Namespace path.

	path?: string

	// Size in bytes. Range is [0..2^63-1].

	size?: int

	// Whether the specified namespace should exist or not.

	state?: string
}

netapp_e_hostgroup :: {

	// Whether the specified host group should exist or not.

	state: string

	// List of host names/labels to add to the group

	hosts?: string

	// Host reference identifier for the host group to manage.
	// This option is mutually exclusive with I(name).

	id?: string

	// Name of the host group to manage
	// This option is mutually exclusive with I(id).

	name?: string

	// Specify this when you need to update the name of a host group

	new_name?: string
}

netapp_e_auditlog :: {

	// This is the memory full percent threshold that audit-log will start issuing warning messages.
	// Percent range must be between and including 60 and 90.

	threshold?: string

	// Forces the audit-log configuration to delete log history when log messages fullness cause immediate warning or full condition.
	// Warning! This will cause any existing audit-log messages to be deleted.
	// This is only applicable for I(full_policy=preventSystemAccess).

	force?: bool

	// Specifies what audit-log should do once the number of entries approach the record limit.

	full_policy?: string

	// Filters the log messages according to the specified log level selection.

	log_level?: string

	// A local path to a file to be used for debug logging.

	log_path?: string

	// The maximum number log messages audit-log will retain.
	// Max records must be between and including 100 and 50000.

	max_records?: string
}

netapp_e_auth :: {

	// The password used to authenticate against the API
	// This can optionally be set via an environment variable, API_PASSWORD

	api_password?: string

	// The username used to authenticate against the API
	// This can optionally be set via an environment variable, API_USERNAME

	api_username?: string

	// The name of the storage array. Note that if more than one storage array with this name is detected, the task will fail and you'll have to use the ID instead.

	name?: string

	// The password you would like to set. Cannot be more than 30 characters.

	new_password: string

	// the identifier of the storage array in the Web Services Proxy.

	ssid?: string

	// The full API url.
	// Example: http://ENDPOINT:8080/devmgr/v2
	// This can optionally be set via an environment variable, API_URL

	api_url?: string

	// The current admin password. This is not required if the password hasn't been set before.

	current_password?: string

	// Boolean value on whether to update the admin password. If set to false then the RO account is updated.

	set_admin?: bool

	// Should https certificates be validated?

	validate_certs?: bool
}

na_elementsw_cluster_config :: {

	// enable or disable the Advanced Encryption Standard (AES) 256-bit encryption at rest on the cluster

	encryption_at_rest?: string

	// The capacity level at which the cluster generates an event
	// Requires a stage3_block_threshold_percent or
	// max_metadata_over_provision_factor or
	// stage2_aware_threshold

	modify_cluster_full_threshold?: string

	// configure NTP on cluster node
	// Requires a list of one or more ntp_servers

	set_ntp_info?: string

	// Enable the NetApp SolidFire VVols cluster feature

	enable_virtual_volumes?: bool
}

na_elementsw_volume_clone :: {

	// The id of the src volume to clone. id may be a numeric identifier or a volume name.

	src_volume_id: string

	// Access allowed for the volume.
	// If unspecified, the access settings of the clone will be the same as the source.
	// readOnly - Only read operations are allowed.
	// readWrite - Reads and writes are allowed.
	// locked - No reads or writes are allowed.
	// replicationTarget - Identify a volume as the target volume for a paired set of volumes. If the volume is not paired, the access status is locked.

	access?: string

	// Account ID for the owner of this cloned volume. id may be a numeric identifier or an account name.

	account_id: string

	// A YAML dictionary of attributes that you would like to apply on this cloned volume.

	attributes?: string

	// The name of the clone.

	name: string

	// The size of the cloned volume in (size_unit).

	size?: string

	// The unit used to interpret the size parameter.

	size_unit?: string

	// The id of the snapshot to clone. id may be a numeric identifier or a snapshot name.

	src_snapshot_id?: string
}

na_ontap_autosupport :: {

	// specify an HTTP or HTTPS proxy if the 'transport' parameter is set to HTTP or HTTPS and your organization uses a proxy.
	// If authentication is required, use the format "username:password@host:port".

	proxy_url?: string

	// Specifies whether AutoSupport notification to technical support is enabled.

	support?: bool

	// The URL used to deliver AutoSupport messages via HTTP POST

	post_url?: string

	// Specify whether the hostname of the node is included in the subject line of the AutoSupport message.

	hostname_in_subject?: bool

	// List of mail server(s) used to deliver AutoSupport messages via SMTP.
	// Both host names and IP addresses may be used as valid input.

	mail_hosts?: string

	// The name of the filer that owns the AutoSupport Configuration.

	node_name: string

	// Specifies up to five recipients of short AutoSupport e-mail messages.

	noteto?: string

	// Specifies up to five partner vendor recipients of full AutoSupport e-mail messages.

	partner_addresses?: string

	// Specifies whether the AutoSupport daemon is present or absent.
	// When this setting is absent, delivery of all AutoSupport messages is turned off.

	state?: string

	// Specifies up to five recipients of full AutoSupport e-mail messages.

	to_addresses?: string

	// specify the e-mail address from which the node sends AutoSupport messages

	from_address?: string

	// The name of the transport protocol used to deliver AutoSupport messages

	transport?: string
}

na_ontap_cifs_acl :: {

	// -"The access rights that the user or group has on the defined CIFS share."

	permission?: string

	// The name of the cifs-share-access-control to manage.

	share_name: string

	// Whether the specified CIFS share acl should exist or not.

	state?: string

	// The user or group name for which the permissions are listed.

	user_or_group: string

	// Name of the vserver to use.

	vserver: string
}

na_ontap_quotas :: {

	// Whether the specified quota should exist or not.

	state?: string

	// Name of the vserver to use.

	vserver: string

	// Name of the qtree for the quota.
	// For user or group rules, it can be the qtree name or "" if no qtree.
	// For tree type rules, this field must be "".

	qtree?: string

	// The quota target of the type specified.

	quota_target: string

	// Name of the quota policy from which the quota rule should be obtained.

	policy?: string

	// Whether the specified volume should have quota status on or off.

	set_quota_status?: bool

	// The amount of disk space the target would have to exceed before a message is logged.

	threshold?: string

	// The type of quota rule

	type: string

	// The name of the volume that the quota resides on.

	volume: string

	// The amount of disk space that is reserved for the target.

	disk_limit?: string

	// The number of files that the target can have.

	file_limit?: string
}

na_ontap_ucadapter :: {

	// Whether the specified adapter should exist.

	state?: string

	// Specifies the fc4 type of the adapter.

	type?: string

	// Specifies the adapter name.

	adapter_name: string

	// Specifies the mode of the adapter.

	mode?: string

	// Specifies the adapter home node.

	node_name: string
}

na_ontap_volume :: {

	// This is an advanced option, the default is True.
	// If false, prevent the update of inode access times when a file is read.
	// This value is useful for volumes with extremely high read traffic, since it prevents writes to the inode file for the volume from contending with reads from other files.
	// This field should be used carefully.
	// That is, use this field when you know in advance that the correct access time for inodes will not be needed for files on that volume.

	atime_update?: bool

	// Whether or not to enable Volume Encryption.

	encrypt?: bool

	// The number of times to iterate over the aggregates listed with the aggr_list parameter when creating a FlexGroup.

	aggr_list_multiplier?: int

	// The volume type, either read-write (RW) or data-protection (DP).

	type?: string

	// Whether the specified volume should exist or not.

	state?: string

	// Allows a storage efficiency policy to be set on volume creation.

	efficiency_policy?: string

	// Name of the existing volume to be renamed to name.

	from_name?: string

	// Language to use for Volume
	// Default uses SVM language
	// Possible values   Language
	// c                 POSIX
	// ar                Arabic
	// cs                Czech
	// da                Danish
	// de                German
	// en                English
	// en_us             English (US)
	// es                Spanish
	// fi                Finnish
	// fr                French
	// he                Hebrew
	// hr                Croatian
	// hu                Hungarian
	// it                Italian
	// ja                Japanese euc-j
	// ja_v1             Japanese euc-j
	// ja_jp.pck         Japanese PCK (sjis)
	// ja_jp.932         Japanese cp932
	// ja_jp.pck_v2      Japanese PCK (sjis)
	// ko                Korean
	// no                Norwegian
	// nl                Dutch
	// pl                Polish
	// pt                Portuguese
	// ro                Romanian
	// ru                Russian
	// sk                Slovak
	// sl                Slovenian
	// sv                Swedish
	// tr                Turkish
	// zh                Simplified Chinese
	// zh.gbk            Simplified Chinese (GBK)
	// zh_tw             Traditional Chinese euc-tw
	// zh_tw.big5        Traditional Chinese Big 5
	// To use UTF-8 as the NFS character set, append '.UTF-8' to the language code

	language?: string

	// Amount of space reserved for snapshot copies of the volume.

	percent_snapshot_space?: int

	// This is an advanced option, the default is False.
	// Enable the visible '.snapshot' directory that is normally present at system internal mount points.
	// This value also turns on access to all other '.snapshot' directories in the volume.

	snapdir_access?: bool

	// Specifies the space SLO type for the volume. The space SLO type is the Service Level Objective for space management for the volume.
	// The space SLO value is used to enforce existing volume settings so that sufficient space is set aside on the aggregate to meet the space SLO.
	// This parameter is not supported on Infinite Volumes.

	space_slo?: string

	// The security style associated with this volume.

	volume_security_style?: string

	// The name of the aggregate the flexvol should exist on.
	// Required when C(state=present).

	aggregate_name?: string

	// Name of the vserver to use.

	vserver: string

	// The name of the volume to manage.

	name: string

	// The size of the volume in (size_unit). Required when C(state=present).

	size?: int

	// Space guarantee style for the volume.

	space_guarantee?: string

	// time to wait for flexGroup creation, modification, or deletion in seconds.
	// Error out if task is not completed in defined time.
	// if 0, the request is asynchronous.
	// default is set to 3 minutes.

	time_out?: int

	// Junction path of the volume.
	// To unmount, use junction path C('').

	junction_path?: string

	// Specifies a QoS adaptive policy group to be set on volume.

	qos_adaptive_policy_group?: string

	// The unit used to interpret the size parameter.

	size_unit?: string

	// Unix permission bits in octal or symbolic format.
	// For example, 0 is equivalent to ------------, 777 is equivalent to ---rwxrwxrwx,both formats are accepted.
	// The valid octal value ranges between 0 and 777 inclusive.

	unix_permissions?: string

	// Set this parameter to 'true' for synchronous execution during create (wait until volume status is online)
	// Set this parameter to 'false' for asynchronous execution
	// For asynchronous, execution exits as soon as the request is sent, without checking volume status

	wait_for_completion?: bool

	// Set True if the volume is an Infinite Volume. Deleting an infinite volume is asynchronous.

	is_infinite?: bool

	// If true, the controller performs additional work at boot and takeover times if it finds that there has been any potential data loss in the volume's constituents due to an NVRAM failure.
	// The volume's constituents would be put in a special state called 'in-nvfailed-state' such that protocol access is blocked.
	// This will cause the client applications to crash and thus prevent access to stale data.
	// To get out of this situation, the admin needs to manually clear the 'in-nvfailed-state' on the volume's constituents.

	nvfail_enabled?: bool

	// The tiering policy that is to be associated with the volume.
	// This policy decides whether the blocks of a volume will be tiered to the capacity tier.
	// snapshot-only policy allows tiering of only the volume snapshot copies not associated with the active file system.
	// auto policy allows tiering of both snapshot and active file system user data to the capacity tier.
	// backup policy on DP volumes allows all transferred user data blocks to start in the capacity tier.
	// When set to none, the Volume blocks will not be tiered to the capacity tier.
	// If no value specified, the volume is assigned snapshot only by default.

	tiering_policy?: string

	// Automatically provision a FlexGroup volume.

	auto_provision_as?: string

	// Specifies a QoS policy group to be set on volume.

	qos_policy_group?: string

	// Whether the specified volume is online, or not.

	is_online?: bool

	// Sets a comment associated with the volume.

	comment?: string

	// Name of the export policy.

	policy?: string

	// The name of the snapshot policy.
	// the default policy name is 'default'.

	snapshot_policy?: string

	// Specifies the protection type for the volume in a Vserver DR setup.

	vserver_dr_protection?: string

	// an array of names of aggregates to be used for FlexGroup constituents.

	aggr_list?: [..._]
}

na_elementsw_network_interfaces :: {

	// Bond mode for 1GbE configuration.

	bond_mode_1g?: string

	// Router network address to send packets out of the local network.

	gateway_address_1g: string

	// IP address for the 10G network.

	ip_address_10g: string

	// Maximum Transmission Unit for 10GbE, Largest packet size that a network protocol can transmit.
	// Must be greater than or equal to 1500 bytes.

	mtu_10g?: string

	// Type of Method used to configure the interface.
	// method depends on other settings such as the use of a static IP address, which will change the method to static.
	// loopback - Used to define the IPv4 loopback interface.
	// manual - Used to define interfaces for which no configuration is done by default.
	// dhcp - May be used to obtain an IP address via DHCP.
	// static - Used to define Ethernet interfaces with statically allocated IPv4 addresses.

	method: string

	// This is the primary network tag. All nodes in a cluster have the same VLAN tag.

	virtual_network_tag?: string

	// List of addresses for domain name servers.

	dns_nameservers?: string

	// List of DNS search domains.

	dns_search_domains?: string

	// Link Aggregation Control Protocol useful only if LACP is selected as the Bond Mode.
	// Slow - Packets are transmitted at 30 second intervals.
	// Fast - Packets are transmitted in 1 second intervals.

	lacp_10g?: string

	// Link Aggregation Control Protocol useful only if LACP is selected as the Bond Mode.
	// Slow - Packets are transmitted at 30 second intervals.
	// Fast - Packets are transmitted in 1 second intervals.

	lacp_1g?: string

	// 1GbE Subnet Mask.

	subnet_1g: string

	// Bond mode for 10GbE configuration.

	bond_mode_10g?: string

	// Router network address to send packets out of the local network.

	gateway_address_10g: string

	// IP address for the 1G network.

	ip_address_1g: string

	// Maximum Transmission Unit for 1GbE, Largest packet size that a network protocol can transmit.
	// Must be greater than or equal to 1500 bytes.

	mtu_1g?: string

	// 10GbE Subnet Mask.

	subnet_10g: string
}

na_elementsw_node :: {

	// Element Software Storage Node operation state.
	// present - To add pending node to participate in cluster data storage.
	// absent  - To remove node from active cluster.  A node cannot be removed if active drives are present.

	state?: string

	// List of IDs or Names or IP Address of nodes from cluster used for operation.

	node_id: string
}

na_ontap_broadcast_domain_ports :: {

	// Specify the broadcast_domain name

	broadcast_domain: string

	// Specify the ipspace for the broadcast domain

	ipspace?: string

	// Specify the list of ports to add to or remove from this broadcast domain.

	ports?: string

	// Whether the specified broadcast domain should exist or not.

	state?: string
}

na_ontap_node :: {

	// The name of the node to be renamed.  If I(name) already exists, no action will be performed.

	from_name: string

	// The new name for the node

	name: string
}

na_elementsw_account :: {

	// Whether the specified account should exist or not.

	state: string

	// Status of the account.

	status?: string

	// CHAP secret to use for the target (mutual CHAP authentication).
	// Should be 12-16 characters long and impenetrable.
	// The CHAP target secrets must be unique and cannot be the same as the initiator CHAP secret.
	// If not specified, a random secret is created.

	target_secret?: string

	// List of Name/Value pairs in JSON object format.

	attributes?: string

	// Unique username for this account. (May be 1 to 64 characters in length).

	element_username: string

	// ID or Name of the account to rename.
	// Required to create an account called 'element_username' by renaming 'from_name'.

	from_name?: string

	// CHAP secret to use for the initiator. Should be 12-16 characters long and impenetrable.
	// The CHAP initiator secrets must be unique and cannot be the same as the target CHAP secret.
	// If not specified, a random secret is created.

	initiator_secret?: string
}

na_ontap_security_key_manager :: {

	// The TCP port on which the key management server listens for incoming connections.

	tcp_port?: string

	// The IP address of the key management server.

	ip_address: string

	// The node which key management server runs on.

	node?: string

	// Whether the specified key manager should exist or not.

	state?: string
}

na_ontap_ldap :: {

	// vserver/svm configured to use LDAP

	vserver: string

	// The name of LDAP client configuration

	name: string

	// Skip LDAP validation

	skip_config_validation?: string

	// Whether the LDAP is present or not.

	state?: string
}

na_ontap_nvme :: {

	// Whether the specified NVMe should exist or not.

	state?: string

	// Whether the status of NVMe should be up or down

	status_admin?: bool

	// Name of the vserver to use.

	vserver: string
}

netapp_e_lun_mapping :: {

	// The LUN value you wish to give the mapping.
	// If the supplied I(volume_name) is associated with a different LUN, it will be updated to what is supplied here.
	// LUN value will be determine by the storage-system when not specified.

	lun?: string

	// Present will ensure the mapping exists, absent will remove the mapping.

	state: string

	// The name of host or hostgroup you wish to assign to the mapping
	// If omitted, the default hostgroup is used.
	// If the supplied I(volume_name) is associated with a different target, it will be updated to what is supplied here.

	target?: string

	// This option specifies the whether the target should be a host or a group of hosts
	// Only necessary when the target name is used for both a host and a group of hosts

	target_type?: string

	// The name of the volume you wish to include in the mapping.

	volume_name: string
}

netapp_e_snapshot_group :: {

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The name of the base volume or thin volume to use as the base for the new snapshot group.
	// If a snapshot group with an identical C(name) already exists but with a different base volume an error will be returned.

	base_volume_name: string

	// The automatic deletion indicator.
	// If non-zero, the oldest snapshot image will be automatically deleted when creating a new snapshot image to keep the total number of snapshot images limited to the number specified.
	// This value is overridden by the consistency group setting if this snapshot group is associated with a consistency group.

	delete_limit?: string

	// The size of the repository in relation to the size of the base volume

	repo_pct?: string

	// Whether to ensure the group is present or absent.

	state: string

	// The repository utilization warning threshold, as a percentage of the repository volume capacity.

	warning_threshold?: string

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// The behavior on when the data repository becomes full.
	// This value is overridden by consistency group setting if this snapshot group is associated with a consistency group

	full_policy?: string

	// The name to give the snapshot group

	name: string

	// The importance of the rollback operation.
	// This value is overridden by consistency group setting if this snapshot group is associated with a consistency group

	rollback_priority?: string

	// The name of the storage pool on which to allocate the repository volume.

	storage_pool_name: string

	// Should https certificates be validated?

	validate_certs?: bool
}

na_cdot_svm :: {

	// The name of the SVM to manage.

	name: string

	// Root volume of the SVM. Required when C(state=present).

	root_volume?: string

	// The aggregate on which the root volume will be created.
	// Required when C(state=present).

	root_volume_aggregate?: string

	// Security Style of the root volume.
	// When specified as part of the vserver-create, this field represents the security style for the Vserver root volume.
	// When specified as part of vserver-get-iter call, this will return the list of matching Vservers.
	// Possible values are 'unix', 'ntfs', 'mixed'.
	// The 'unified' security style, which applies only to Infinite Volumes, cannot be applied to a Vserver's root volume.
	// Valid options are "unix" for NFS, "ntfs" for CIFS, "mixed" for Mixed, "unified" for Unified.
	// Required when C(state=present)

	root_volume_security_style?: string

	// Whether the specified SVM should exist or not.

	state: string
}

na_elementsw_access_group :: {

	// List of volumes to initially include in the volume access group. If unspecified, the access group will start without any volumes.
	// It accepts either volume_name or volume_id

	volumes?: string

	// Account ID for the owner of this volume.
	// It accepts either account_name or account_id
	// if account_id is digit, it will consider as account_id
	// If account_id is string, it will consider as account_name

	account_id?: string

	// ID or Name of the access group to rename.
	// Required to create a new access group called 'name' by renaming 'from_name'.

	from_name?: string

	// List of initiators to include in the access group. If unspecified, the access group will start out without configured initiators.

	initiators?: string

	// Name for the access group for create, modify and delete operations.

	name: string

	// The ID of the Element SW Software Cluster Virtual Network ID to associate the access group with.

	virtual_network_id?: string

	// List of Name/Value pairs in JSON object format.

	attributes?: string

	// Whether the specified access group should exist or not.

	state: string

	// The ID of the VLAN Virtual Network Tag to associate the access group with.

	virtual_network_tags?: string
}

na_elementsw_snapshot :: {

	// Element OS access account password

	password?: string

	// Label used by SnapMirror software to specify snapshot retention policy on SnapMirror endpoint.

	snap_mirror_label?: string

	// Whether the specified snapshot should exist or not.

	state?: string

	// Account ID or Name of Parent/Source Volume.

	account_id: string

	// The date and time (format ISO 8601 date string) at which this snapshot will expire.

	expiration_time?: string

	// Name of new snapshot create.
	// If unspecified, date and time when the snapshot was taken is used.

	name?: string

	// Retention period for the snapshot.
	// Format is 'HH:mm:ss'.

	retention?: string

	// ID or Name of an existing snapshot.
	// Required when C(state=present), to modify snapshot properties.
	// Required when C(state=present), to create snapshot from another snapshot in the volume.
	// Required when C(state=absent), to delete snapshot.

	src_snapshot_id?: string

	// ID or Name of active volume.

	src_volume_id: string

	// Element OS access account user-name

	username?: string

	// Flag, whether to replicate the snapshot created to a remote replication cluster.
	// To enable specify 'true' value.

	enable_remote_replication?: bool
}

na_ontap_firewall_policy :: {

	// Whether to set up a firewall policy or not

	state?: string

	// The Vserver to apply the policy to.

	vserver?: string

	// A list of IPs and masks to use.
	// The host bits of the IP addresses used in this list must be set to 0.

	allow_list?: string

	// enable firewall on a node

	enable?: string

	// enable logging for firewall on a node

	logging?: string

	// The node to run the firewall configuration on

	node?: string

	// A policy name for the firewall policy

	policy?: string

	// The service to apply the policy to

	service?: string
}

na_elementsw_backup :: {

	// password for the backup destination cluster
	// will be set equal to password if not specified

	dest_password?: string

	// username for the backup destination cluster
	// will be set equal to username if not specified

	dest_username?: string

	// ID of the backup destination volume

	dest_volume_id: string

	// Backup format to use

	format?: string

	// the backup script to be executed

	script?: string

	// the backup script parameters

	script_parameters?: string

	// ID of the backup source volume.

	src_volume_id: string

	// hostname for the backup source cluster
	// will be set equal to hostname if not specified

	dest_hostname?: string
}

na_ontap_broadcast_domain :: {

	// Specify the required mtu for the broadcast domain.

	mtu?: string

	// Specify the broadcast domain name.

	name: string

	// Specify the ports associated with this broadcast domain. Should be comma separated.
	// It represents the expected state of a list of ports at any time.
	// Add a port if it is specified in expected state but not in current state.
	// Delete a port if it is specified in current state but not in expected state.
	// For split action, it represents the ports to be split from current broadcast domain and added to the new broadcast domain.
	// if all ports are removed or split from a broadcast domain, the broadcast domain will be deleted automatically.

	ports?: string

	// Whether the specified broadcast domain should exist or not.

	state?: string

	// Specify the  broadcast domain name to be split into new broadcast domain.

	from_name?: string

	// Specify the required ipspace for the broadcast domain.
	// A domain ipspace can not be modified after the domain has been created.

	ipspace?: string
}

na_ontap_net_routes :: {

	// Specify the route metric that should be changed.

	from_metric?: string

	// Specify the route gateway.
	// Example 10.7.125.1, fd20:13::1.

	gateway: string

	// Specify the route metric.
	// If this field is not provided the default will be set to 20.

	metric?: string

	// Whether you want to create or delete a network route.

	state?: string

	// The name of the vserver.

	vserver: string

	// Specify the route destination.
	// Example 10.7.125.5/20, fd20:13::/64.

	destination: string

	// Specify the route destination that should be changed.
	// new_destination was removed to fix idempotency issues. To rename destination the original goes to from_destination and the new goes to destination.

	from_destination?: string

	// Specify the route gateway that should be changed.

	from_gateway?: string
}

netapp_e_asup :: {

	// Enable active/proactive monitoring for ASUP. When a problem is detected by our monitoring systems, it's possible that the bundle did not contain all of the required information at the time of the event. Enabling this option allows NetApp support personnel to manually request transmission or re-transmission of support data in order ot resolve the problem.
	// Only applicable if I(state=enabled).

	active?: bool

	// A list of days of the week that ASUP bundles will be sent. A larger, weekly bundle will be sent on one of the provided days.

	days?: string

	// An end hour may be specified in a range from 1 to 24 hours.
	// ASUP bundles will be sent daily between the provided start and end time (UTC).
	// I(start) must be less than I(end).

	end?: string

	// A local path to a file to be used for debug logging

	log_path?: string

	// A start hour may be specified in a range from 0 to 23 hours.
	// ASUP bundles will be sent daily between the provided start and end time (UTC).
	// I(start) must be less than I(end).

	start?: string

	// Enable/disable the E-Series auto-support configuration.
	// When this option is enabled, configuration, logs, and other support-related information will be relayed to NetApp to help better support your system. No personally identifiable information, passwords, etc, will be collected.

	state?: string

	// Provide the full ASUP configuration in the return.

	verbose?: bool
}

na_ontap_ipspace :: {

	// The name of the ipspace to manage

	name: string

	// Whether the specified ipspace should exist or not

	state?: string

	// Name of the existing ipspace to be renamed to name

	from_name?: string
}

netapp_e_amg :: {

	// Recovery point warning threshold

	repoUtilizationWarnThreshold?: string

	// The ID of the secondary array to be used in mirroring process

	secondaryArrayId: string

	// The synchronization interval in minutes

	syncIntervalMinutes?: string

	// The threshold (in minutes) for notifying the user that periodic synchronization has taken too long to complete.

	syncWarnThresholdMinutes?: string

	// Recovery point warning threshold (minutes). The user will be warned when the age of the last good failures point exceeds this value

	recoveryWarnThresholdMinutes?: string

	// Setting this to true will cause other synchronization values to be ignored

	manualSync?: bool

	// The name of the async array you wish to target, or create.
	// If C(state) is present and the name isn't found, it will attempt to create.

	name: string

	// A C(state) of present will either create or update the async mirror group.
	// A C(state) of absent will remove the async mirror group.

	state: string

	// The intended protocol to use if both Fibre and iSCSI are available.

	interfaceType?: string
}

netapp_e_ldap :: {

	// A local path to a file to be used for debug logging

	log_path?: string

	// The domain name[s] that will be utilized when authenticating to identify which domain to utilize.
	// Default to use the DNS name of the I(server).
	// The only requirement is that the name[s] be resolvable.
	// Example: user@example.com

	name?: string

	// This is the password for the bind user account.

	password: string

	// This is where you specify which groups should have access to what permissions for the storage-system.
	// For example, all users in group A will be assigned all 4 available roles, which will allow access to all the management functionality of the system (super-user). Those in group B only have the storage.monitor role, which will allow only read-only access.
	// This is specified as a mapping of regular expressions to a list of roles. See the examples.
	// The roles that will be assigned to to the group/groups matching the provided regex.
	// storage.admin allows users full read/write access to storage objects and operations.
	// storage.monitor allows users read-only access to storage objects and operations.
	// support.admin allows users access to hardware, diagnostic information, the Major Event Log, and other critical support-related functionality, but not the storage configuration.
	// security.admin allows users access to authentication/authorization configuration, as well as the audit log configuration, and certification management.

	role_mappings: string

	// Enable/disable LDAP support on the system. Disabling will clear out any existing defined domains.

	state?: string

	// The user attributes that should be considered for the group to role mapping.
	// Typically this is used with something like 'memberOf', and a user's access is tested against group membership or lack thereof.

	attributes?: string

	// This is a unique identifier for the configuration (for cases where there are multiple domains configured).
	// If this is not specified, but I(state=present), we will utilize a default value of 'default'.

	identifier?: string

	// The search base is used to find group memberships of the user.
	// Example: ou=users,dc=example,dc=com

	search_base: string

	// This is the LDAP server url.
	// The connection string should be specified as using the ldap or ldaps protocol along with the port information.

	server: string

	// This is the attribute we will use to match the provided username when a user attempts to authenticate.

	user_attribute?: string

	// This is the user account that will be used for querying the LDAP server.
	// Example: CN=MyBindAcct,OU=ServiceAccounts,DC=example,DC=com

	username: string
}

netapp_e_storagepool :: {

	// The minimum size of the storage pool (in size_unit).
	// When I(state=="present") then I(criteria_drive_count) or I(criteria_min_usable_capacity) must be specified.
	// The pool will be expanded if this value exceeds its current size. (See expansion note below)

	criteria_min_usable_capacity?: float

	// The unit used to interpret size parameters

	criteria_size_unit?: string

	// The interface type to use when selecting drives for the storage pool
	// If not provided then all interface types will be considered.

	criteria_drive_interface_type?: string

	// Ensures the storage pool will be created with only data assurance (DA) capable drives.
	// Only available for new storage pools; existing storage pools cannot be converted.

	criteria_drive_require_da?: bool

	// The RAID level of the storage pool to be created.
	// Required only when I(state=="present").
	// When I(raid_level=="raidDiskPool") then I(criteria_drive_count >= 10 or criteria_drive_count >= 11) is required depending on the storage array specifications.
	// When I(raid_level=="raid0") then I(1<=criteria_drive_count) is required.
	// When I(raid_level=="raid1") then I(2<=criteria_drive_count) is required.
	// When I(raid_level=="raid3") then I(3<=criteria_drive_count<=30) is required.
	// When I(raid_level=="raid5") then I(3<=criteria_drive_count<=30) is required.
	// When I(raid_level=="raid6") then I(5<=criteria_drive_count<=30) is required.
	// Note that raidAll will be treated as raidDiskPool and raid3 as raid5.

	raid_level?: string

	// Prior to removing a storage pool, delete all volumes in the pool.

	remove_volumes?: string

	// Enables security at rest feature on the storage pool.
	// Will only work if all drives in the pool are security capable (FDE, FIPS, or mix)
	// Warning, once security is enabled it is impossible to disable without erasing the drives.

	secure_pool?: bool

	// Whether the specified storage pool should exist or not.
	// Note that removing a storage pool currently requires the removal of all defined volumes first.

	state: string

	// The number of disks to use for building the storage pool.
	// When I(state=="present") then I(criteria_drive_count) or I(criteria_min_usable_capacity) must be specified.
	// The pool will be expanded if this number exceeds the number of disks already in place (See expansion note below)

	criteria_drive_count?: int

	// The type of disk (hdd or ssd) to use when searching for candidates to use.
	// When not specified each drive type will be evaluated until successful drive candidates are found starting with the most prevalent drive type.

	criteria_drive_type?: string

	// If I(state=="absent") then all storage pool drives will be erase
	// If I(state=="present") then delete all available storage array drives that have security enabled.

	erase_secured_drives?: bool

	// The name of the storage pool to manage

	name: string

	// Set the number of drives reserved by the storage pool for reconstruction operations.
	// Only valid on raid disk pools.

	reserve_drive_count?: string

	// The minimum individual drive size (in size_unit) to consider when choosing drives for the storage pool.

	criteria_drive_min_size?: string

	// Whether full disk encryption ability is required for drives to be added to the storage pool

	criteria_drive_require_fde?: bool
}

na_ontap_job_schedule :: {

	// The day(s) in the week when the job should be run. Job Manager cron scheduling day of week. Zero represents Sunday. -1 represents all days of a week and is only supported for cron schedule create and modify. Range is [-1..6]

	job_days_of_week?: [..._]

	// The hour(s) of the day when the job should be run. Job Manager cron scheduling hour. -1 represents all hours and is only supported for cron schedule create and modify. Range is [-1..23]

	job_hours?: [..._]

	// The minute(s) of each hour when the job should be run. Job Manager cron scheduling minute. -1 represents all minutes and is only supported for cron schedule create and modify. Range is [-1..59]

	job_minutes?: [..._]

	// The month(s) when the job should be run. Job Manager cron scheduling month. -1 represents all months and is only supported for cron schedule create and modify. Range is [-1..11]

	job_months?: [..._]

	// The name of the job-schedule to manage.

	name: string

	// Whether the specified job schedule should exist or not.

	state?: string

	// The day(s) of the month when the job should be run. Job Manager cron scheduling day of month. -1 represents all days of a month from 1 to 31, and is only supported for cron schedule create and modify. Range is [-1..31]

	job_days_of_month?: [..._]
}

na_ontap_volume_autosize :: {

	// Specify the flexible volume's increment size using the following format < number > [k|m|g|t]
	// The amount is the absolute size to set.
	// The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).

	increment_size?: string

	// The name of the flexible volume for which we want to set autosize.

	volume: string

	// Name of the vserver to use.

	vserver: string

	// Specifies the percentage of the flexible volume's capacity at which autogrow is initiated.
	// The default grow threshold varies from 85% to 98%, depending on the volume size.
	// It is an error for the grow threshold to be less than or equal to the shrink threshold.
	// Range between 0 and 100

	grow_threshold_percent?: int

	// Specify the flexible volume's minimum allowed size using the following format < number > [k|m|g|t] The amount is the absolute size to set.
	// The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).
	// The default value is the size of the volume at the time the 'grow_shrink' mode was enabled.
	// It is an error for the minimum size to be greater than or equal to the maximum size.

	minimum_size?: string

	// Specify the flexible volume's autosize mode of operation.

	mode?: string

	// Sets the values of maximum_size, increment_size, minimum_size, grow_threshold_percent, shrink_threshold_percent and mode to their defaults

	reset?: bool

	// Specifies the percentage of the flexible volume's capacity at which autoshrink is initiated.
	// The default shrink threshold is 50%. It is an error for the shrink threshold to be greater than or equal to the grow threshold.
	// Range between 0 and 100

	shrink_threshold_percent?: int

	// Specify the flexible volume's maximum allowed size using the following format < number > [k|m|g|t]
	// The amount is the absolute size to set.
	// The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).
	// The default value is 20% greater than the volume size at the time autosize was enabled.
	// It is an error for the maximum volume size to be less than the current volume size.
	// It is also an error for the maximum size to be less than or equal to the minimum size.

	maximum_size?: string
}

na_ontap_vserver_peer :: {

	// Specifies name of the source Vserver in the relationship.

	vserver?: string

	// List of applications which can make use of the peering relationship.
	// FlexCache supported from ONTAP 9.5 onwards.

	applications?: string

	// Destination hostname or IP address.
	// Required for creating the vserver peer relationship with a remote cluster

	dest_hostname?: string

	// Destination password.
	// Optional if this is same as source password.

	dest_password?: string

	// Destination username.
	// Optional if this is same as source username.

	dest_username?: string

	// Specifies name of the peer Cluster.
	// Required for creating the vserver peer relationship with a remote cluster

	peer_cluster?: string

	// Specifies name of the peer Vserver in the relationship.

	peer_vserver?: string

	// Whether the specified vserver peer should exist or not.

	state?: string
}

netapp_e_drive_firmware :: {

	// This flag will cause module to wait for any upgrade actions to complete.

	wait_for_completion?: bool

	// list of drive firmware file paths.
	// NetApp E-Series drives require special firmware which can be downloaded from https://mysupport.netapp.com/NOW/download/tools/diskfw_eseries/

	firmware: [..._]

	// This flag will determine whether drive firmware upgrade should fail if any affected drives are inaccessible.

	ignore_inaccessible_drives?: bool

	// This flag will determine whether drive firmware can be upgrade while drives are accepting I/O.
	// When I(upgrade_drives_online==False) stop all I/O before running task.

	upgrade_drives_online?: bool
}

na_ontap_snapshot :: {

	// The Vserver name

	vserver: string

	// A human readable comment attached with the snapshot. The size of the comment can be at most 255 characters.

	comment?: string

	// Name of the existing snapshot to be renamed to.

	from_name?: string

	// A human readable SnapMirror Label attached with the snapshot. Size of the label can be at most 31 characters.

	snapmirror_label?: string

	// The 128 bit unique snapshot identifier expressed in the form of UUID.

	snapshot_instance_uuid?: string

	// Name of the volume on which the snapshot is to be created.

	volume: string

	// If true, the snapshot is to be created asynchronously.

	async_bool?: bool

	// if this field is true, snapshot will be deleted even if some other processes are accessing it.

	ignore_owners?: bool

	// Name of the snapshot to be managed. The maximum string length is 256 characters.

	snapshot: string

	// If you want to create/modify a snapshot, or delete it.

	state?: string
}

na_ontap_fcp :: {

	// Whether the FCP should be enabled or not.

	state?: string

	// Whether the FCP should be up or down

	status?: string

	// The name of the vserver to use.

	vserver: string
}

na_ontap_info :: {

	// When supplied, this argument will restrict the information collected to a given subset.  Possible values for this argument include "aggregate_info", "cluster_node_info", "igroup_info", "lun_info", "net_dns_info", "net_ifgrp_info", "net_interface_info", "net_port_info", "nvme_info", "nvme_interface_info", "nvme_namespace_info", "nvme_subsystem_info", "ontap_version", "qos_adaptive_policy_info", "qos_policy_info", "security_key_manager_key_info", "security_login_account_info", "storage_failover_info", "volume_info", "vserver_info", "vserver_login_banner_info", "vserver_motd_info", "vserver_nfs_info" Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
	// nvme is supported with ONTAP 9.4 onwards.
	// use "help" to get a list of supported information for your system.

	gather_subset?: [..._]

	// Returns "info"

	state?: string
}

na_ontap_nfs :: {

	// status for NFS v4.1 referrals.

	nfsv41_referrals?: string

	// status for NFS v4.1 write delegation feature.

	nfsv41_write_delegation?: string

	// Enable TCP (support from ONTAP 9.3 onward).

	tcp?: string

	// TCP Maximum Transfer Size (bytes). The default value is 65536.

	tcp_max_xfer_size?: int

	// status of vstorage_state.

	vstorage_state?: string

	// status of NFS v4.0 ACL feature

	nfsv40_acl?: string

	// status of NFS v4.1 ACL feature

	nfsv41_acl?: string

	// status of NFSv41.

	nfsv41?: string

	// status of NFSv41 pNFS.

	nfsv41_pnfs?: string

	// Whether NFS should exist or not.

	state?: string

	// Enable UDP (support from ONTAP 9.3 onward).

	udp?: string

	// Name of the vserver to use.

	vserver: string

	// status of if NFSv3 clients see change in FSID as they traverse filesystems.

	nfsv3_fsid_change?: string

	// Name of the nfsv4_id_domain to use.

	nfsv4_id_domain?: string

	// status for NFS v4.0 referrals.

	nfsv40_referrals?: string

	// status for NFS v4.0 write delegation feature.

	nfsv40_write_delegation?: string

	// Whether the specified NFS should be enabled or disabled. Creates NFS service if does not exist.

	service_state?: string

	// Whether SVM allows showmount

	showmount?: string

	// status of NFSv3.

	nfsv3?: string

	// status for NFS v4.0 read delegation feature.

	nfsv40_read_delegation?: string

	// status of NFSv4 numeric ID's.

	nfsv4_numeric_ids?: string

	// status for NFS v4.1 read delegation feature.

	nfsv41_read_delegation?: string

	// status of NFSv4.

	nfsv4?: string

	// status of if NFSv4 clients see change in FSID as they traverse filesystems.

	nfsv4_fsid_change?: string
}

na_ontap_nvme_subsystem :: {

	// Specifies the ostype for initiators

	ostype?: string

	// List of Namespace paths to be associated with the subsystem.

	paths?: [..._]

	// Skip host check
	// Required to delete an NVMe Subsystem with attached NVMe namespaces

	skip_host_check?: bool

	// Skip mapped namespace check
	// Required to delete an NVMe Subsystem with attached NVMe namespaces

	skip_mapped_check?: bool

	// Whether the specified subsystem should exist or not.

	state?: string

	// Specifies the subsystem

	subsystem: string

	// Name of the vserver to use.

	vserver: string

	// List of host NQNs (NVMe Qualification Name) associated to the controller.

	hosts?: [..._]
}

netapp_e_storage_system :: {

	// The ID of the array to manage. This value must be unique for each array.

	ssid: string

	// Whether the specified array should be configured on the Web Services Proxy or not.

	state: string

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The management password of the array to manage, if set.

	array_password?: string

	// The WWN of the array to manage. Only necessary if in-band managing multiple arrays on the same agent host.  Mutually exclusive of controller_addresses parameter.

	array_wwn?: string

	// Enable trace logging for SYMbol calls to the storage system.

	enable_trace?: bool

	// Optional meta tags to associate to this storage system

	meta_tags?: string

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// The list addresses for the out-of-band management adapter or the agent host. Mutually exclusive of array_wwn parameter.

	controller_addresses: string

	// Should https certificates be validated?

	validate_certs?: bool
}

na_elementsw_snapshot_restore :: {

	// Account ID or Name of Parent/Source Volume.

	account_id: string

	// New Name of destination for restoring the snapshot

	dest_volume_name: string

	// ID or Name of an existing snapshot.

	src_snapshot_id: string

	// ID or Name of source active volume.

	src_volume_id: string
}

na_ontap_iscsi :: {

	// Whether the specified service should running .

	service_state?: string

	// Whether the service should be present or deleted.

	state?: string

	// The name of the vserver to use.

	vserver: string
}

na_ontap_ndmp :: {

	// Authentication type.

	authtype?: [..._]

	// Enable backup log.

	backup_log_enable?: bool

	// Data port range.

	data_port_range?: string

	// Enable debug.

	debug_enable?: bool

	// FH throttle value for dir.

	fh_dir_retry_interval?: int

	// TCP window size.

	tcpwinsize?: int

	// Enable abort on disk error.

	abort_on_disk_error?: bool

	// Enable logging of VM stats for dump.

	dump_detailed_stats?: bool

	// Enable per qtree exclusion.

	per_qtree_exclude_enable?: bool

	// Preferred interface role.

	preferred_interface_role?: [..._]

	// Enable TCP nodelay.

	tcpnodelay?: bool

	// Name of the vserver.

	vserver: string

	// Debug filter.

	debug_filter?: string

	// Enable logical find for dump.

	dump_logical_find?: string

	// FH throttle value for node.

	fh_node_retry_interval?: int

	// Enable NDMP on vserver.

	enable?: bool

	// Ignore ctime.

	ignore_ctime_enabled?: bool

	// Is secure control connection enabled.

	is_secure_control_connection_enabled?: bool

	// Enable offset map.

	offset_map_enable?: bool

	// Restore VM file cache size.

	restore_vm_cache_size?: int

	// Secondary debug filter.

	secondary_debug_filter?: string
}

na_ontap_vscan_scanner_pool :: {

	// List of hostnames of Vscan servers which are allowed to connect to Data ONTAP

	hostnames?: string

	// List of privileged usernames. Username must be in the form "domain-name\user-name"

	privileged_users?: string

	// The name of the Virus scanner Policy

	scanner_policy?: string

	// the name of the virus scanner pool

	scanner_pool: string

	// Whether a Vscan Scanner pool is present or not

	state?: string

	// the name of the data vserver to use.

	vserver: string
}

na_elementsw_vlan :: {

	// User defined name for the new VLAN
	// Name of the vlan is unique
	// Required for create

	name?: string

	// Enable or disable namespaces

	namespace?: bool

	// Whether the specified vlan should exist or not.

	state?: string

	// Storage virtual IP which is unique
	// Required for create

	svip?: string

	// Virtual Network Tag

	vlan_tag: string

	// List of address blocks for the VLAN
	// Each address block contains the starting IP address and size for the block
	// Required for create

	address_blocks?: string

	// Dictionary of attributes with name and value for each attribute

	attributes?: string

	// Gateway for the VLAN

	gateway?: string

	// Netmask for the VLAN
	// Required for create

	netmask?: string
}

na_ontap_firmware_upgrade :: {

	// Type of firmware update to be performed. Options include serial_full, serial_differential, network_full.

	update_type?: string

	// Install the version packaged with ONTAP if this parameter is set to true. Otherwise, package must be used to specify the package to install.

	install_baseline_image?: bool

	// Whether the specified ONTAP firmware should  be upgraded or not.

	state?: string

	// Type of firmware to be upgraded. Options include shelf, ACP, service-processor, and disk.
	// For shelf firmware upgrade the operation is asynchronous, and therefore returns no errors that might occur during the download process.
	// Shelf firmware upgrade is idempotent if shelf_module_fw is provided .
	// disk firmware upgrade is idempotent if disk_fw is provided .
	// With check mode, SP, ACP, disk, and shelf firmware upgrade is not idempotent.
	// This operation will only update firmware on shelves/disk that do not have the latest firmware-revision.

	firmware_type?: string

	// Node on which the device is located.

	node: string

	// Name of the package file containing the firmware to be installed. Not required when -baseline is true.

	package?: string

	// Shelf module firmware to be updated to.

	shelf_module_fw?: string

	// Clear logs on the device after update. Default value is true

	clear_logs?: bool

	// disk firmware to be updated to.

	disk_fw?: string
}

na_ontap_portset :: {

	// Name of the port set to create.

	name: string

	// Specify the ports associated with this portset. Should be comma separated.
	// It represents the expected state of a list of ports at any time, and replaces the current value of ports.
	// Adds a port if it is specified in expected state but not in current state.
	// Deletes a port if it is in current state but not in expected state.

	ports?: string

	// If you want to create a portset.

	state?: string

	// Required for create.
	// Protocols accepted for this portset.

	type?: string

	// Name of the SVM.

	vserver: string

	// If 'false' or not specified, the request will fail if there are any igroups bound to this portset.
	// If 'true', forcibly destroy the portset, even if there are existing igroup bindings.

	force?: bool
}

na_ontap_unix_user :: {

	// Whether the specified user should exist or not.

	state?: string

	// Specifies the Vserver for the UNIX user.
	// Non-modifiable.

	vserver: string

	// Specifies the full name of the UNIX user
	// Optional for create, modifiable.

	full_name?: string

	// Specifies the primary group identification number for the UNIX user
	// Required for create, modifiable.

	group_id?: string

	// Specifies an identification number for the UNIX user.
	// Required for create, modifiable.

	id?: string

	// Specifies user's UNIX account name.
	// Non-modifiable.

	name: string
}

netapp_e_amg_role :: {

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// Whether to force the role reversal regardless of the online-state of the primary

	force?: bool

	// Whether to avoid synchronization prior to role reversal

	noSync?: bool

	// Whether the array should be the primary or secondary array for the AMG

	role: string

	// The ID of the primary storage array for the async mirror action

	ssid: string

	// Should https certificates be validated?

	validate_certs?: bool
}

sf_account_manager :: {

	// CHAP secret to use for the target (mutual CHAP authentication).
	// Should be 12-16 characters long and impenetrable.
	// The CHAP target secrets must be unique and cannot be the same as the initiator CHAP secret.
	// If not specified, a random secret is created.

	target_secret?: string

	// The ID of the account to manage or update.

	account_id?: string

	// List of Name/Value pairs in JSON object format.

	attributes?: string

	// CHAP secret to use for the initiator. Should be 12-16 characters long and impenetrable.
	// The CHAP initiator secrets must be unique and cannot be the same as the target CHAP secret.
	// If not specified, a random secret is created.

	initiator_secret?: string

	// Unique username for this account. (May be 1 to 64 characters in length).

	name: string

	// New name for the user account.

	new_name?: string

	// Whether the specified account should exist or not.

	state: string

	// Status of the account.

	status?: string
}

na_elementsw_check_connections :: {

	// Optionally, use to test connection of a different MVIP.
	// This is not needed to test the connection to the target cluster.

	mvip?: string

	// Skip checking connection to SVIP or MVIP.

	skip?: string

	// Optionally, use to test connection of a different SVIP.
	// This is not needed to test the connection to the target cluster.

	svip?: string
}

na_elementsw_drive :: {

	// Drive ID or Serial Name of Node drive.
	// If not specified, add and remove action will be performed on all drives of node_id

	drive_id?: string

	// Flag to force during a bin sync operation.

	force_during_bin_sync?: bool

	// Flag to force drive operation during upgrade.

	force_during_upgrade?: bool

	// ID or Name of cluster node.

	node_id: string

	// Element SW Storage Drive operation state.
	// present - To add drive of node to participate in cluster data storage.
	// absent  - To remove the drive from being part of active cluster.
	// clean   - Clean-up any residual data persistent on a *removed* drive in a secured method.

	state?: string
}

na_ontap_volume_clone :: {

	// The space_reserve setting which should be used for the volume clone.

	space_reserve?: string

	// The UNIX group ID for the clone volume.

	gid?: int

	// Junction path of the volume.

	junction_path?: string

	// The name of the volume clone being created.

	name: string

	// Parent snapshot in which volume clone is created off.

	parent_snapshot?: string

	// The parent volume of the volume clone being created.

	parent_volume: string

	// Vserver of parent volume in which clone is created off.

	parent_vserver?: string

	// The qos-policy-group-name which should be set for volume clone.

	qos_policy_group_name?: string

	// Whether volume clone should be created.

	state?: string

	// The volume-type setting which should be used for the volume clone.

	volume_type?: string

	// The UNIX user ID for the clone volume.

	uid?: int

	// Vserver in which the volume clone should be created.

	vserver: string
}

na_ontap_vscan_on_access_policy :: {

	// Specifies whether access to a file is allowed if there are no external virus-scanning servers available for virus scanning. It is true if not provided at the time of creating a policy.

	is_scan_mandatory?: bool

	// Specifies whether files without any extension are considered for scanning or not.

	scan_files_with_no_ext?: string

	// Whether a Vscan on Access policy is present or not

	state?: string

	// File extensions for which On-Access scanning must not be performed.

	file_ext_to_exclude?: string

	// A list of filters which can be used to define the scope of the On-Access policy more precisely. The filters can be added in any order. Possible values
	// scan_ro_volume  Enable scans for read-only volume,
	// scan_execute_access  Scan only files opened with execute-access (CIFS only)

	filters?: string

	// File paths for which On-Access scanning must not be performed.

	paths_to_exclude?: string

	// The name of the policy

	policy_name: string

	// the name of the data vserver to use.

	vserver: string

	// File extensions for which On-Access scanning is considered. The default value is '*', which means that all files are considered for scanning except
	// those which are excluded from scanning.

	file_ext_to_include?: string

	// Max file-size (in bytes) allowed for scanning. The default value of 2147483648 (2GB) is taken if not provided at the time of creating a policy.

	max_file_size?: string
}

na_ontap_cifs :: {

	// The list of properties for the CIFS share

	share_properties?: string

	// Whether the specified CIFS share should exist or not.

	state?: string

	// The list of symlink properties for this CIFS share

	symlink_properties?: string

	// Profile_set of file_ops to which vscan on access scanning is applicable.

	vscan_fileop_profile?: string

	// Vserver containing the CIFS share.

	vserver: string

	// The file system path that is shared through this CIFS share. The path is the full, user visible path relative to the vserver root, and it might be crossing junction mount points. The path is in UTF8 and uses forward slash as directory separator

	path?: string

	// The name of the CIFS share. The CIFS share name is a UTF-8 string with the following characters being illegal; control characters from 0x00 to 0x1F, both inclusive, 0x22 (double quotes)

	share_name: string
}

na_ontap_export_policy :: {

	// Name of the vserver to use.

	vserver?: string

	// The name of the export-policy to be renamed.

	from_name?: string

	// The name of the export-policy to manage.

	name: string

	// Whether the specified export policy should exist or not.

	state?: string
}

netapp_e_global :: {

	// A local path to a file to be used for debug logging

	log_path?: string

	// Set the name of the E-Series storage-system
	// This label/name doesn't have to be unique.
	// May be up to 30 characters in length.

	name?: string
}

na_ontap_snmp :: {

	// Access control for the community. The only supported value is 'ro' (read-only)

	access_control: string

	// The name of the SNMP community to manage.

	community_name: string

	// Whether the specified SNMP community should exist or not.

	state?: string
}

na_ontap_user :: {

	// List of application to grant access to.

	applications: [..._]

	// Authentication method for the application.
	// Not all authentication methods are valid for an application.
	// Valid authentication methods for each application are as denoted in I(authentication_choices_description).
	// Password for console application
	// Password, domain, nsswitch, cert for http application.
	// Password, domain, nsswitch, cert for ontapi application.
	// Community for snmp application (when creating SNMPv1 and SNMPv2 users).
	// The usm and community for snmp application (when creating SNMPv3 users).
	// Password for sp application.
	// Password for rsh application.
	// Password for telnet application.
	// Password, publickey, domain, nsswitch for ssh application.

	authentication_method: string

	// Whether the specified user account is locked.

	lock_user?: bool

	// The name of the user to manage.

	name: string

	// The name of the role. Required when C(state=present)

	role_name?: string

	// Password for the user account.
	// It is ignored for creating snmp users, but is required for creating non-snmp users.
	// For an existing user, this value will be used as the new password.

	set_password?: string

	// Whether the specified user should exist or not.

	state?: string

	// The name of the vserver to use.

	vserver: string
}

na_ontap_vserver_cifs_security :: {

	// Determine if SMB version 1 is used for connections to domain controllers.

	smb1_enabled_for_dc_connections?: string

	// name of the vserver.

	vserver: string

	// Determine if SMB version 2 is used for connections to domain controllers.

	smb2_enabled_for_dc_connections?: string

	// Determine whether signing is required for incoming CIFS traffic.

	is_signing_required?: bool

	// Determine whether SMB encryption is required for incoming CIFS traffic.

	is_smb_encryption_required?: bool

	// Determine the level of security required for LDAP communications.

	session_security_for_ad_ldap?: string

	// Determine the maximum amount of time in hours that a user's ticket may be used for the purpose of Kerberos authentication.

	kerberos_ticket_age?: int

	// Determine whether to use start_tls for AD LDAP connections.

	use_start_tls_for_ad_ldap?: bool

	// Determine the timeout value in seconds for KDC connections.

	kerberos_kdc_timeout?: int

	// Determine the maximum amount of time in days for which a ticket can be renewed.

	kerberos_renew_age?: int

	// Determine the LM compatibility level.

	lm_compatibility_level?: string

	// Determine whether LDAP referral chasing is enabled or not for AD LDAP connections.

	referral_enabled_for_ad_ldap?: bool

	// Determine whether AES-128 and AES-256 encryption mechanisms are enabled for Kerberos-related CIFS communication.

	is_aes_encryption_enabled?: bool

	// Determine whether password complexity is required for local users.

	is_password_complexity_required?: bool

	// The clock skew in minutes is the tolerance for accepting tickets with time stamps that do not exactly match the host's system clock.

	kerberos_clock_skew?: int
}

netapp_e_iscsi_target :: {

	// Enable Challenge-Handshake Authentication Protocol (CHAP), utilizing this value as the password.
	// When this value is specified, we will always trigger an update (changed=True). We have no way of verifying whether or not the password has changed.
	// The chap secret may only use ascii characters with values between 32 and 126 decimal.
	// The chap secret must be no less than 12 characters, but no greater than 57 characters in length.
	// The chap secret is cleared when not specified or an empty string.

	chap_secret?: string

	// A local path (on the Ansible controller), to a file to be used for debug logging.

	log_path?: string

	// The name/alias to assign to the iSCSI target.
	// This alias is often used by the initiator software in order to make an iSCSI target easier to identify.

	name?: string

	// Enable ICMP ping responses from the configured iSCSI ports.

	ping?: bool

	// When an initiator initiates a discovery session to an initiator port, it is considered an unnamed discovery session if the iSCSI target iqn is not specified in the request.
	// This option may be disabled to increase security if desired.

	unnamed_discovery?: bool
}

na_elementsw_cluster_snmp :: {

	// List of networks and what type of access they have to the SNMP servers running on the cluster nodes.
	// This parameter is required if SNMP v3 is disabled.

	networks?: string

	// Which version of SNMP has to be enabled.

	snmp_v3_enabled?: bool

	// This module enables you to enable SNMP on cluster nodes. When you enable SNMP,           the action applies to all nodes in the cluster, and the values that are passed replace,           in whole, all values set in any previous call to this module.

	state?: string

	// List of users and the type of access they have to the SNMP servers running on the cluster nodes.
	// This parameter is required if SNMP v3 is enabled.

	usm_users?: string
}

na_ontap_cluster :: {

	// License package name of the license to be removed

	license_package?: string

	// Serial number of the cluster node

	node_serial_number?: string

	// Whether the specified cluster should exist or not.

	state?: string

	// IP address of cluster to be joined

	cluster_ip_address?: string

	// The name of the cluster to manage.

	cluster_name?: string

	// License code to be applied to the cluster

	license_code?: string
}

na_ontap_cluster_ha :: {

	// Whether HA on cluster should be enabled or disabled.

	state?: string
}

na_ontap_command :: {

	// a comma separated list containing the command and arguments.

	command: string

	// privilege level at which to run the command.

	privilege?: string

	// returns a parsesable dictionary instead of raw XML output

	return_dict?: bool
}

netapp_e_syslog :: {

	// This is the transmission protocol the syslog server's using to receive syslog messages.

	protocol?: string

	// Add or remove the syslog server configuration for E-Series storage array.
	// Existing syslog server configuration will be removed or updated when its address matches I(address).
	// Fully qualified hostname that resolve to an IPv4 address that matches I(address) will not be treated as a match.

	state?: string

	// This forces a test syslog message to be sent to the stated syslog server.
	// Only attempts transmission when I(state=present).

	test?: bool

	// The syslog server's IPv4 address or a fully qualified hostname.
	// All existing syslog configurations will be removed when I(state=absent) and I(address=None).

	address?: string

	// The e-series logging components define the specific logs to transfer to the syslog server.
	// At the time of writing, 'auditLog' is the only logging component but more may become available.

	components?: string

	// This argument specifies a local path for logging purposes.

	log_path?: string

	// This is the port the syslog server is using.

	port?: string
}

netapp_e_alerts :: {

	// This is the sender that the recipient will see. It doesn't necessarily need to be a valid email account.
	// Required when I(state=enabled).

	sender?: string

	// A fully qualified domain name, IPv4 address, or IPv6 address of a mail server.
	// To use a fully qualified domain name, you must configure a DNS server on both controllers using M(netapp_e_mgmt_interface). - Required when I(state=enabled).

	server?: string

	// Enable/disable the sending of email-based alerts.

	state?: string

	// When a change is detected in the configuration, a test email will be sent.
	// This may take a few minutes to process.
	// Only applicable if I(state=enabled).

	test?: bool

	// Allows the owner to specify some free-form contact information to be included in the emails.
	// This is typically utilized to provide a contact phone number.

	contact?: string

	// Path to a file on the Ansible control node to be used for debug logging

	log_path?: string

	// The email addresses that will receive the email notifications.
	// Required when I(state=enabled).

	recipients?: string
}

na_ontap_cg_snapshot :: {

	// A list of volumes in this filer that is part of this CG operation.

	volumes: string

	// Name of the vserver.

	vserver: string

	// A human readable SnapMirror label to be attached with the consistency group snapshot copies.

	snapmirror_label?: string

	// The provided name of the snapshot that is created in each volume.

	snapshot: string

	// If you want to create a snapshot.

	state?: string

	// Timeout selector.

	timeout?: string
}

na_ontap_service_processor_network :: {

	// Specify address class.

	address_type: string

	// Specify the gateway ip.

	gateway_ip_address?: string

	// Specify the service processor prefix_length.

	prefix_length?: string

	// Specify dhcp type.

	dhcp?: string

	// Specify the service processor ip address.

	ip_address?: string

	// Specify whether to enable or disable the service processor network.

	is_enabled: bool

	// Specify the service processor netmask.

	netmask?: string

	// The node where the service processor network should be enabled

	node: string

	// Whether the specified service processor network should exist or not.

	state?: string

	// Set this parameter to 'true' for synchronous execution (wait until SP status is successfully updated)
	// Set this parameter to 'false' for asynchronous execution
	// For asynchronous, execution exits as soon as the request is sent, without checking SP status

	wait_for_completion?: bool
}

na_ontap_snapshot_policy :: {

	// Schedule to be added inside the policy.

	schedule?: [..._]

	// SnapMirror label assigned to each schedule inside the policy. Use an empty string ('') for no label.

	snapmirror_label?: [..._]

	// If you want to create, modify or delete a snapshot policy.

	state?: string

	// The name of the vserver to use. In a multi-tenanted environment, assigning a Snapshot Policy to a vserver will restrict its use to that vserver.

	vserver?: string

	// A human readable comment attached with the snapshot. The size of the comment can be at most 255 characters.

	comment?: string

	// Retention count for the snapshots created by the schedule.

	count?: [..._]

	// Status of the snapshot policy indicating whether the policy will be enabled or disabled.

	enabled?: bool

	// Name of the snapshot policy to be managed. The maximum string length is 256 characters.

	name: string
}

na_ontap_vscan :: {

	// Whether to enable to disable a Vscan

	enable?: bool

	// the name of the data vserver to use.

	vserver: string
}

na_ontap_license :: {

	// Remove licenses that have no controller affiliation in the cluster.

	remove_unused?: bool

	// Serial number of the node associated with the license. This parameter is used primarily when removing license for a specific service.

	serial_number?: string

	// Whether the specified license should exist or not.

	state?: string

	// List of license codes to be added.

	license_codes?: string

	// List of license-names to delete.

	license_names?: string

	// Remove licenses that have expired in the cluster.

	remove_expired?: bool
}

na_ontap_net_ifgrp :: {

	// Specifies the name of node.

	node: string

	// List of expected ports to be present in the interface group.
	// If a port is present in this list, but not on the target, it will be added.
	// If a port is not in the list, but present on the target, it will be removed.
	// Make sure the list contains all ports you want to see on the target.

	ports?: string

	// Whether the specified network interface group should exist or not.

	state?: string

	// Specifies the traffic distribution function for the ifgrp.

	distribution_function?: string

	// Specifies the link policy for the ifgrp.

	mode?: string

	// Specifies the interface group name.

	name: string
}

na_ontap_net_vlan :: {

	// The VLAN id. Ranges from 1 to 4094.

	vlanid: string

	// Node name of VLAN interface.

	node: string

	// The interface that hosts the VLAN interface.

	parent_interface: string

	// Whether the specified network VLAN should exist or not

	state?: string
}

na_ontap_dns :: {

	// The name of the vserver to use.

	vserver: string

	// List of DNS domains such as 'sales.bar.com'. The first domain is the one that the Vserver belongs to.

	domains?: string

	// List of IPv4 addresses of name servers such as '123.123.123.123'.

	nameservers?: string

	// By default, all nameservers are checked to validate they are available to resolve.
	// If you DNS servers are not yet installed or momentarily not available, you can set this option to 'true'
	// to bypass the check for all servers specified in nameservers field.

	skip_validation?: bool

	// Whether the DNS servers should be enabled for the given vserver.

	state?: string
}

na_ontap_ntp :: {

	// Whether the specified NTP server should exist or not.

	state?: string

	// give version for NTP server

	version?: string

	// The name of the NTP server to manage.

	server_name: string
}

na_elementsw_volume_pair :: {

	// Destination password for the paired cluster
	// Optional if this is same as source cluster password.

	dest_password?: string

	// Destination username for the paired cluster
	// Optional if this is same as source cluster username.

	dest_username?: string

	// Source account name or ID

	src_account: string

	// Source volume name or volume ID

	src_volume: string

	// Destination account name or ID

	dest_account: string

	// Destination IP address of the paired cluster.

	dest_mvip: string

	// Destination volume name or volume ID

	dest_volume: string

	// Mode to start the volume pairing

	mode?: string

	// Whether the specified volume pair should exist or not.

	state?: string
}

na_ontap_interface :: {

	// Specifies the firewall policy for the LIF.

	firewall_policy?: string

	// Subnet where the interface address is allocated from. If the option is not used, the IP address will need to be provided by the administrator during configuration.

	subnet_name?: string

	// The name of the vserver to use.

	vserver: string

	// If True, this IP address will listen for DNS queries for the dnszone specified.

	listen_for_dns_query?: bool

	// Specifies the LIF's netmask.
	// Required when C(state=present).

	netmask?: string

	// Specifies the role of the LIF.
	// When setting role as "intercluster", setting protocol is not supported.
	// Required when C(state=present).

	role?: string

	// Set this to true to acquire the address from the named subnet and assign the subnet to the LIF.

	force_subnet_association?: bool

	// Specifies the LIF's home node.
	// By default, the first node from the cluster is considered as home node

	home_node?: string

	// Specifies the LIF's home port.
	// Required when C(state=present)

	home_port?: string

	// Specifies if DNS update is enabled for this LIF. Dynamic updates will be sent for this LIF if updates are enabled at Vserver level.

	is_dns_update_enabled?: bool

	// Specifies the administrative status of the LIF.

	admin_status?: string

	// Specifies the unique, fully qualified domain name of the DNS zone of this LIF.

	dns_domain_name?: string

	// Specifies the logical interface (LIF) name.

	interface_name: string

	// Whether the specified interface should exist or not.

	state?: string

	// Specifies the LIF's IP address.
	// Required when C(state=present)

	address?: string

	// Specifies the failover policy for the LIF.

	failover_policy?: string

	// If true, data LIF will revert to its home node under certain circumstances such as startup, and load balancing migration capability is disabled automatically

	is_auto_revert?: bool

	// Specifies the list of data protocols configured on the LIF. By default, the values in this element are nfs, cifs and fcache.
	// Other supported protocols are iscsi and fcp. A LIF can be configured to not support any data protocols by specifying 'none'.
	// Protocol values of none, iscsi, fc-nvme or fcp can't be combined with any other data protocol(s).
	// address, netmask and firewall_policy parameters are not supported for 'fc-nvme' option.

	protocols?: string
}

na_ontap_svm_options :: {

	// The name of the vserver to which this option belongs to.

	vserver: string

	// Name of the option.

	name?: string

	// Value of the option.
	// Value must be in quote

	value?: string
}

netapp_e_snapshot_volume :: {

	// The snapshot volume access mode

	view_mode: string

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The size of the view in relation to the size of the base volume

	repo_percentage?: string

	// The identifier of the snapshot image used to create the new snapshot volume.
	// Note: You'll likely want to use the M(netapp_e_facts) module to find the ID of the image you want.

	snapshot_image_id: string

	// Name of the storage pool on which to allocate the repository volume.

	storage_pool_name: string

	// Should https certificates be validated?

	validate_certs?: bool

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// The repository utilization warning threshold percentage

	full_threshold?: string

	// The name you wish to give the snapshot volume

	name: string

	// storage array ID

	ssid: string

	// Whether to create or remove the snapshot volume

	state: string
}

na_elementsw_initiators :: {

	// A list of objects containing characteristics of each initiator.

	initiators?: string

	// Whether the specified initiator should exist or not.

	state?: string
}

na_ontap_lun_map :: {

	// Initiator group to map to the given LUN.

	initiator_group_name: string

	// LUN ID assigned for the map.

	lun_id?: string

	// Path of the LUN..

	path: string

	// Whether the specified LUN should exist or not.

	state?: string

	// The name of the vserver to use.

	vserver: string
}

netapp_e_firmware :: {

	// Path to the firmware file.

	firmware: string

	// This flag will force firmware to be activated in spite of the health check.
	// Use at your own risk. Certain non-optimal states could result in data loss.

	ignore_health_check?: bool

	// Path to the NVSRAM file.

	nvsram: string

	// This flag will cause module to wait for any upgrade actions to complete.

	wait_for_completion?: bool
}

sf_check_connections :: {

	// Optionally, use to test connection of a different MVIP.
	// This is not needed to test the connection to the target cluster.

	mvip?: string

	// Skip checking connection to SVIP or MVIP.

	skip?: string

	// Optionally, use to test connection of a different SVIP.
	// This is not needed to test the connection to the target cluster.

	svip?: string
}

netapp_e_mgmt_interface :: {

	// Primary IPv4 NTP server address

	ntp_address?: string

	// The configuration method type to use for NTP services.
	// disable is mutually exclusive with I(ntp_address) and I(ntp_address_backup).
	// dhcp is mutually exclusive with I(ntp_address) and I(ntp_address_backup).

	ntp_config_method?: string

	// Enable ssh access to the controller for debug purposes.
	// This is a controller-level setting.
	// rlogin/telnet will be enabled for ancient equipment where ssh is not available.

	ssh?: bool

	// Enable or disable IPv4 network interface configuration.
	// Either IPv4 or IPv6 must be enabled otherwise error will occur.
	// Only required when enabling or disabling IPv4 network interface

	state?: string

	// Primary IPv4 DNS server address

	dns_address?: string

	// The configuration method type to use for DNS services.
	// dhcp is mutually exclusive with I(dns_address), and I(dns_address_backup).

	dns_config_method?: string

	// Backup IPv4 NTP server address
	// Queried when primary NTP server fails

	ntp_address_backup?: string

	// The subnet mask to utilize for the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	subnet_mask?: string

	// The controller that owns the port you want to configure.
	// Controller names are represented alphabetically, with the first controller as A, the second as B, and so on.
	// Current hardware models have either 1 or 2 available controllers, but that is not a guaranteed hard limitation and could change in the future.

	controller: string

	// The IPv4 gateway address to utilize for the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	gateway?: string

	// Backup IPv4 DNS server address
	// Queried when primary DNS server fails

	dns_address_backup?: string

	// A local path to a file to be used for debug logging

	log_path?: string

	// The port to modify the configuration for.
	// The channel represents the port number (typically from left to right on the controller), beginning with a value of 1.
	// Mutually exclusive with I(name).

	channel?: string

	// The configuration method type to use for network interface ports.
	// dhcp is mutually exclusive with I(address), I(subnet_mask), and I(gateway).

	config_method?: string

	// The IPv4 address to assign to the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	address?: string

	// The port to modify the configuration for.
	// The list of choices is not necessarily comprehensive. It depends on the number of ports that are present in the system.
	// The name represents the port number (typically from left to right on the controller), beginning with a value of 1.
	// Mutually exclusive with I(channel).

	name?: string
}

na_cdot_lun :: {

	// The name of the FlexVol the lun should exist on.
	// Required when C(state=present).

	flexvol_name?: string

	// If "true", override checks that prevent a LUN from being destroyed while it is fenced.
	// If "false", attempting to destroy a fenced LUN will fail.
	// The default if not specified is "false". This field is available in Data ONTAP 8.2 and later.

	force_remove_fenced?: string

	// The name of the lun to manage.

	name: string

	// Whether the specified lun should exist or not.

	state: string

	// The name of the vserver to use.

	vserver: string

	// If "true", override checks that prevent a LUN from being destroyed if it is online and mapped.
	// If "false", destroying an online and mapped LUN will fail.

	force_remove?: string

	// Forcibly reduce the size. This is required for reducing the size of the LUN to avoid accidentally reducing the LUN size.

	force_resize?: string

	// The size of the lun in C(size_unit).
	// Required when C(state=present).

	size?: string

	// The unit used to interpret the size parameter.

	size_unit?: string
}

na_ontap_disks :: {

	// Total number of disks a node should own

	disk_count?: int

	// It specifies the node to assign all visible unowned disks.

	node: string
}

na_ontap_qos_policy_group :: {

	// Setting to 'true' forces the deletion of the workloads associated with the policy group along with the policy group.

	force?: bool

	// Name of the existing policy group to be renamed to name.

	from_name?: string

	// Maximum throughput defined by this policy.

	max_throughput?: string

	// Minimum throughput defined by this policy.

	min_throughput?: string

	// The name of the policy group to manage.

	name?: string

	// Whether the specified policy group should exist or not.

	state?: string

	// Name of the vserver to use.

	vserver?: string
}

na_ontap_snapmirror :: {

	// Specifies the name of the source volume for the SnapMirror.

	source_volume?: string

	// Name of the source vserver for the SnapMirror.

	source_vserver?: string

	// Specifies the name of the destination volume for the SnapMirror.

	destination_volume?: string

	// Specifies whether or not the identity of the source Vserver is replicated to the destination Vserver.
	// If this parameter is set to true, the source Vserver's configuration will additionally be replicated to the destination.
	// If the parameter is set to false, then only the source Vserver's volumes and RBAC configuration are replicated to the destination.

	identity_preserve?: bool

	// Specify the type of SnapMirror relationship.

	relationship_type?: string

	// Specifies the source endpoint of the SnapMirror relationship.
	// If the source is an ONTAP volume, format should be <[vserver:][volume]> or <[[cluster:]//vserver/]volume>
	// If the source is an ElementSW volume, format should be <[Element_SVIP]:/lun/[Element_VOLUME_ID]>
	// If the source is an ElementSW volume, the volume should have SnapMirror enabled.

	source_path?: string

	// Source username for ONTAP or ElementSW cluster.
	// Optional if this is same as destination username.

	source_username?: string

	// Specify the name of the current schedule, which is used to update the SnapMirror relationship.
	// Optional for create, modifiable.

	schedule?: string

	// Source hostname or management IP address for ONTAP or ElementSW cluster.
	// Required for SnapMirror delete

	source_hostname?: string

	// Whether the specified relationship should exist or not.

	state?: string

	// Type of SnapMirror relationship.
	// Pre-requisite for either elementsw_ontap or ontap_elementsw the ElementSW volume should have enableSnapmirror option set to true.
	// For using ontap_elementsw, elementsw_ontap snapmirror relationship should exist.

	connection_type?: string

	// Specify the name of the SnapMirror policy that applies to this relationship.

	policy?: string

	// Specifies the destination endpoint of the SnapMirror relationship.

	destination_path?: string

	// Name of the destination vserver for the SnapMirror.

	destination_vserver?: string

	// Specifies the upper bound, in kilobytes per second, at which data is transferred.
	// Default is unlimited, it can be explicitly set to 0 as unlimited.

	max_transfer_rate?: int

	// Source password for ONTAP or ElementSW cluster.
	// Optional if this is same as destination password.

	source_password?: string
}

netapp_e_facts :: {
}

na_cdot_user :: {

	// The name of the vserver to use.

	vserver: string

	// Applications to grant access to.

	application: string

	// Authentication method for the application.
	// Not all authentication methods are valid for an application.
	// Valid authentication methods for each application are as denoted in I(authentication_choices_description).
	// password for console application
	// password, domain, nsswitch, cert for http application.
	// password, domain, nsswitch, cert for ontapi application.
	// community for snmp application (when creating SNMPv1 and SNMPv2 users).
	// usm and community for snmp application (when creating SNMPv3 users).
	// password for sp application.
	// password for rsh application.
	// password for telnet application.
	// password, publickey, domain, nsswitch for ssh application.

	authentication_method: string

	// The name of the user to manage.

	name: string

	// The name of the role. Required when C(state=present)

	role_name?: string

	// Password for the user account.
	// It is ignored for creating snmp users, but is required for creating non-snmp users.
	// For an existing user, this value will be used as the new password.

	set_password?: string

	// Whether the specified user should exist or not.

	state: string
}

na_ontap_net_subnet :: {

	// Specify the required broadcast_domain name for the subnet.
	// A broadcast domain can not be modified after the subnet has been created

	broadcast_domain: string

	// Name of the subnet to be renamed

	from_name?: string

	// Specify the gateway for the default route of the subnet.

	gateway?: string

	// Specify the list of IP address ranges associated with the subnet.

	ip_ranges?: string

	// Specify the ipspace for the subnet.
	// The default value for this parameter is the default IPspace, named 'Default'.

	ipspace?: string

	// Specify the subnet name.

	name: string

	// Whether the specified network interface group should exist or not.

	state?: string

	// Specify the subnet (ip and mask).

	subnet: string
}

na_ontap_object_store :: {

	// Data bucket/container name used in S3 requests.

	container?: string

	// The name of the object store config to manage.

	name: string

	// The name of the object store config provider.

	provider_type?: string

	// Secret access key for AWS_S3 and SGWS provider types.

	secret_password?: string

	// Fully qualified domain name of the object store config.

	server?: string

	// Whether the specified object store config should exist or not.

	state?: string

	// Access key ID for AWS_S3 and SGWS provider types.

	access_key?: string
}

netapp_e_amg_sync :: {

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// Indicates whether the failures point can be deleted on the secondary if necessary to achieve the synchronization.
	// If true, and if the amount of unsynchronized data exceeds the CoW repository capacity on the secondary for any member volume, the last failures point will be deleted and synchronization will continue.
	// If false, the synchronization will be suspended if the amount of unsynchronized data exceeds the CoW Repository capacity on the secondary and the failures point will be preserved.
	// NOTE: This only has impact for newly launched syncs.

	delete_recovery_point?: bool

	// The name of the async mirror group you wish to target

	name: string

	// The ID of the storage array containing the AMG you wish to target

	ssid?: string

	// The synchronization action you'd like to take.
	// If C(running) then it will begin syncing if there is no active sync or will resume a suspended sync. If there is already a sync in progress, it will return with an OK status.
	// If C(suspended) it will suspend any ongoing sync action, but return OK if there is no active sync or if the sync is already suspended

	state: string

	// Should https certificates be validated?

	validate_certs?: bool

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string
}

na_ontap_svm :: {

	// The aggregate on which the root volume will be created.
	// Cannot be modified after creation.

	root_volume_aggregate?: string

	// Default snapshot policy setting for all volumes of the Vserver. This policy will be assigned to all volumes created in this Vserver unless the volume create request explicitly provides a snapshot policy or volume is modified later with a specific snapshot policy. A volume-level snapshot policy always overrides the default Vserver-wide snapshot policy.

	snapshot_policy?: string

	// Whether the specified SVM should exist or not.

	state?: string

	// List of aggregates assigned for volume operations.
	// These aggregates could be shared for use with other Vservers.
	// When specified as part of a vserver-create, this field represents the list of aggregates that are assigned to the Vserver for volume operations.
	// When part of vserver-get-iter call, this will return the list of Vservers which have any of the aggregates specified as part of the aggr list.

	aggr_list?: string

	// Allowed Protocols.
	// When specified as part of a vserver-create, this field represent the list of protocols allowed on the Vserver.
	// When part of vserver-get-iter call, this will return the list of Vservers which have any of the protocols specified as part of the allowed-protocols.
	// When part of vserver-modify, this field should include the existing list along with new protocol list to be added to prevent data disruptions.
	// Possible values
	// nfs   NFS protocol,
	// cifs   CIFS protocol,
	// fcp   FCP protocol,
	// iscsi   iSCSI protocol,
	// ndmp   NDMP protocol,
	// http   HTTP protocol,
	// nvme   NVMe protocol

	allowed_protocols?: string

	// Language to use for the SVM
	// Default to C.UTF-8
	// Possible values   Language
	// c                 POSIX
	// ar                Arabic
	// cs                Czech
	// da                Danish
	// de                German
	// en                English
	// en_us             English (US)
	// es                Spanish
	// fi                Finnish
	// fr                French
	// he                Hebrew
	// hr                Croatian
	// hu                Hungarian
	// it                Italian
	// ja                Japanese euc-j
	// ja_v1             Japanese euc-j
	// ja_jp.pck         Japanese PCK (sjis)
	// ja_jp.932         Japanese cp932
	// ja_jp.pck_v2      Japanese PCK (sjis)
	// ko                Korean
	// no                Norwegian
	// nl                Dutch
	// pl                Polish
	// pt                Portuguese
	// ro                Romanian
	// ru                Russian
	// sk                Slovak
	// sl                Slovenian
	// sv                Swedish
	// tr                Turkish
	// zh                Simplified Chinese
	// zh.gbk            Simplified Chinese (GBK)
	// zh_tw             Traditional Chinese euc-tw
	// zh_tw.big5        Traditional Chinese Big 5

	language?: string

	// Root volume of the SVM.
	// Cannot be modified after creation.

	root_volume?: string

	// Security Style of the root volume.
	// When specified as part of the vserver-create, this field represents the security style for the Vserver root volume.
	// When specified as part of vserver-get-iter call, this will return the list of matching Vservers.
	// The 'unified' security style, which applies only to Infinite Volumes, cannot be applied to a Vserver's root volume.
	// Cannot be modified after creation.

	root_volume_security_style?: string

	// The subtype for vserver to be created.
	// Cannot be modified after creation.

	subtype?: string

	// When specified as part of a vserver-create, this field represents the comment associated with the Vserver.
	// When part of vserver-get-iter call, this will return the list of matching Vservers.

	comment?: string

	// Name of the SVM to be renamed

	from_name?: string

	// IPSpace name
	// Cannot be modified after creation.

	ipspace?: string

	// The name of the SVM to manage.

	name: string
}

na_ontap_vscan_on_demand_task :: {

	// Whether a Vscan on demand task is present or not

	state?: string

	// Path from the vserver root where task report is created. The path must be a directory and provided in unix-format from the root of the Vserver.
	// Example /vol1/on-demand-reports.

	report_directory?: string

	// Priority of the On-Demand scan requests generated by this task.

	scan_priority?: string

	// Max file-size (in bytes) allowed for scanning. The default value of 10737418240 (10GB) is taken if not provided at the time of creating a task.

	max_file_size?: string

	// Specifies whether files without any extension are considered for scanning or not.

	scan_files_with_no_ext?: bool

	// the name of the data vserver to use.

	vserver: string

	// Specifies whether the On-Demand task is allowed to cross volume junctions

	cross_junction?: bool

	// File-Extensions for which scanning must not be performed.
	// File whose extension matches with both inclusion and exclusion list is not considered for scanning.

	file_ext_to_exclude?: [..._]

	// List of paths that need to be scanned. The path must be provided in unix-format and from the root of the Vserver.
	// Example /vol1/large_files.

	scan_paths?: [..._]

	// Specifies whether the On-Demand task is allowed to recursively scan through sub-directories.

	directory_recursion?: bool

	// File-paths for which scanning must not be performed.

	paths_to_exclude?: [..._]

	// Total request-service time-limit in seconds. If the virus-scanner does not respond within the provided time, scan will be timed out.

	request_timeout?: string

	// Schedule of the task. The task will be run as per the schedule.
	// For running the task immediately, vscan-on-demand-task-run api must be used after creating a task.

	schedule?: string

	// Name of the task.

	task_name: string

	// File extensions for which scanning is considered.
	// The default value is '*', which means that all files are considered for scanning except those which are excluded from scanning.
	// File whose extension matches with both inclusion and exclusion list is not considered for scanning.

	file_ext_to_include?: [..._]

	// Log level for the On-Demand report.

	report_log_level?: string
}

netapp_e_iscsi_interface :: {

	// The channel of the port to modify the configuration of.
	// The list of choices is not necessarily comprehensive. It depends on the number of ports that are available in the system.
	// The numerical value represents the number of the channel (typically from left to right on the HIC), beginning with a value of 1.

	name: string

	// The controller that owns the port you want to configure.
	// Controller names are presented alphabetically, with the first controller as A, the second as B, and so on.
	// Current hardware models have either 1 or 2 available controllers, but that is not a guaranteed hard limitation and could change in the future.

	controller: string

	// The IPv4 gateway address to utilize for the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	gateway?: string

	// A local path to a file to be used for debug logging

	log_path?: string

	// The maximum transmission units (MTU), in bytes.
	// This allows you to configure a larger value for the MTU, in order to enable jumbo frames (any value > 1500).
	// Generally, it is necessary to have your host, switches, and other components not only support jumbo frames, but also have it configured properly. Therefore, unless you know what you're doing, it's best to leave this at the default.

	mtu?: string

	// When enabled, the provided configuration will be utilized.
	// When disabled, the IPv4 configuration will be cleared and IPv4 connectivity disabled.

	state?: string

	// The subnet mask to utilize for the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	subnet_mask?: string

	// The IPv4 address to assign to the interface.
	// Should be specified in xx.xx.xx.xx form.
	// Mutually exclusive with I(config_method=dhcp)

	address?: string

	// The configuration method type to use for this interface.
	// dhcp is mutually exclusive with I(address), I(subnet_mask), and I(gateway).

	config_method?: string
}

na_cdot_volume :: {

	// The name of the aggregate the flexvol should exist on. Required when C(state=present).

	aggregate_name?: string

	// Junction path where to mount the volume

	junction_path?: string

	// The unit used to interpret the size parameter.

	size_unit?: string

	// Export policy to set for the specified junction path.

	export_policy?: string

	// Set True if the volume is an Infinite Volume.

	infinite?: bool

	// The name of the volume to manage.

	name: string

	// Whether the specified volume is online, or not.

	online?: bool

	// The size of the volume in (size_unit). Required when C(state=present).

	size?: string

	// Snapshot policy to set for the specified volume.

	snapshot_policy?: string

	// Whether the specified volume should exist or not.

	state: string

	// Name of the vserver to use.

	vserver: string
}

na_elementsw_admin_users :: {

	// A list of type the admin has access to

	access?: string

	// The password for the new admin account. Setting the password attribute will always reset your password, even if the password is the same

	element_password?: string

	// Unique username for this account. (May be 1 to 64 characters in length).

	element_username: string

	// Whether the specified account should exist or not.

	state: string

	// Boolean, true for accepting Eula, False Eula

	acceptEula?: bool
}

na_elementsw_cluster_pair :: {

	// Destination username for the cluster to be paired.
	// Optional if this is same as source cluster username.

	dest_username?: string

	// Whether the specified cluster pair should exist or not.

	state?: string

	// Destination IP address of the cluster to be paired.

	dest_mvip: string

	// Destination password for the cluster to be paired.
	// Optional if this is same as source cluster password.

	dest_password?: string
}

na_ontap_software_update :: {

	// Whether the specified ONTAP package should update or not.

	state?: string

	// Allows the update to continue if warnings are encountered during the validation phase.

	ignore_validation_warning?: bool

	// List of nodes to be updated, the nodes have to be a part of a HA Pair.

	nodes?: string

	// Specifies the package URL to download the package.

	package_url: string

	// Specifies the package version to update software.

	package_version: string
}

na_elementsw_volume :: {

	// ElementSW access account user-name

	username?: string

	// Account ID for the owner of this volume.
	// It accepts Account_id or Account_name

	account_id: string

	// A YAML dictionary of attributes that you would like to apply on this volume.

	attributes?: string

	// The name of the volume to manage.
	// It accepts volume_name or volume_id

	name: string

	// ElementSW access account password

	password?: string

	// Initial quality of service settings for this volume. Configure as dict in playbooks.

	qos?: string

	// The size of the volume in (size_unit).
	// Required when C(state = present).

	size?: string

	// Access allowed for the volume.
	// readOnly           Only read operations are allowed.
	// readWrite          Reads and writes are allowed.
	// locked             No reads or writes are allowed.
	// replicationTarget  Identify a volume as the target volume for a paired set of volumes.
	// If the volume is not paired, the access status is locked.
	// If unspecified, the access settings of the clone will be the same as the source.

	access?: string

	// Required when C(state=present)
	// Should the volume provide 512-byte sector emulation?

	enable512e?: bool

	// The unit used to interpret the size parameter.

	size_unit?: string

	// Whether the specified volume should exist or not.

	state: string
}

na_ontap_lun :: {

	// Forcibly reduce the size. This is required for reducing the size of the LUN to avoid accidentally reducing the LUN size.

	force_resize?: bool

	// The name of the LUN to manage.

	name: string

	// The size of the LUN in C(size_unit).
	// Required when C(state=present).

	size?: string

	// This enables support for the SCSI Thin Provisioning features.  If the Host and file system do not support this do not enable it.

	space_allocation?: bool

	// Whether the specified LUN should exist or not.

	state?: string

	// The name of the vserver to use.

	vserver: string

	// The name of the FlexVol the LUN should exist on.

	flexvol_name: string

	// If "true", override checks that prevent a LUN from being destroyed if it is online and mapped.
	// If "false", destroying an online and mapped LUN will fail.

	force_remove?: bool

	// If "true", override checks that prevent a LUN from being destroyed while it is fenced.
	// If "false", attempting to destroy a fenced LUN will fail.
	// The default if not specified is "false". This field is available in Data ONTAP 8.2 and later.

	force_remove_fenced?: bool

	// The os type for the LUN.

	ostype?: string

	// The unit used to interpret the size parameter.

	size_unit?: string

	// This can be set to "false" which will create a LUN without any space being reserved.

	space_reserve?: bool
}

na_elementsw_snapshot_schedule :: {

	// Time specified in hours

	days_of_month_hours?: string

	// Time specified in minutes.

	days_of_week_minutes?: string

	// Name for the snapshot schedule.
	// It accepts either schedule_id or schedule_name
	// if name is digit, it will consider as schedule_id
	// If name is string, it will consider as schedule_name

	name?: string

	// Time interval in days.

	time_interval_days?: string

	// Time interval in hours.

	time_interval_hours?: string

	// Time interval in minutes.

	time_interval_minutes?: string

	// Account ID for the owner of this volume.
	// It accepts either account_name or account_id
	// if account_id is digit, it will consider as account_id
	// If account_id is string, it will consider as account_name

	account_id?: string

	// List of days of the month (1-31)

	days_of_month_monthdays?: string

	// Should the schedule recur?

	recurring?: bool

	// Name for the created snapshots.

	snapshot_name?: string

	// Whether the specified schedule should exist or not.

	state: string

	// Time specified in minutes.

	days_of_month_minutes?: string

	// Time specified in hours

	days_of_week_hours?: string

	// Element SW access account password

	password?: string

	// Retention period for the snapshot.
	// Format is 'HH:mm:ss'.

	retention?: string

	// Starting date for the schedule.
	// Required when C(state=present).
	// Format: C(2016-12-01T00:00:00Z)

	starting_date?: string

	// Volume IDs that you want to set the snapshot schedule for.
	// It accepts both volume_name and volume_id

	volumes?: string

	// List of days of the week (Sunday to Saturday)

	days_of_week_weekdays?: string

	// Pause / Resume a schedule.

	paused?: bool

	// Schedule type for creating schedule.

	schedule_type?: string

	// Element SW access account user-name

	username?: string
}

na_ontap_ldap_client :: {

	// LDAP bind user password

	bind_password?: string

	// LDAP server port

	port?: int

	// LDAP schema
	// Required if I(state=present).

	schema?: string

	// Client Session Security

	session_security?: string

	// LDAP search scope

	base_scope?: string

	// LDAP bind user DN

	bind_dn?: string

	// The name of LDAP client configuration

	name: string

	// LDAP Referral Chasing

	referral_enabled?: string

	// LDAP base DN

	base_dn?: string

	// Minimal LDAP server bind level.

	min_bind_level?: string

	// Comma separated list of LDAP servers. FQDN's or IP addresses
	// Required if I(state=present).

	ldap_servers?: [..._]

	// Whether the specified LDAP client configuration exist or not.

	state?: string

	// vserver/svm that holds LDAP client configuration

	vserver: string

	// LDAP server query timeout

	query_timeout?: int

	// Start TLS on LDAP connection

	use_start_tls?: string
}

na_ontap_lun_copy :: {

	// the name of the Vserver that will host the new LUN.

	destination_vserver: string

	// Specifies the full path to the source LUN.

	source_path: string

	// Specifies the name of the vserver hosting the LUN to be copied.

	source_vserver?: string

	// Whether the specified LUN should exist or not.

	state?: string

	// Specifies the full path to the new LUN.

	destination_path: string
}

na_elementsw_cluster :: {

	// Required to indicate your acceptance of the End User License Agreement when creating this cluster.
	// To accept the EULA, set this parameter to true.

	accept_eula?: bool

	// List of name-value pairs in JSON object format.

	attributes?: string

	// Initial password for the cluster admin account.
	// If not provided, default to login password.

	cluster_admin_password?: string

	// Username for the cluster admin.
	// If not provided, default to login username.

	cluster_admin_username?: string

	// Floating (virtual) IP address for the cluster on the management network.

	management_virtual_ip: string

	// Storage IP (SIP) addresses of the initial set of nodes making up the cluster.
	// nodes IP must be in the list.

	nodes: string

	// Number of replicas of each piece of data to store in the cluster.

	replica_count?: string

	// Floating (virtual) IP address for the cluster on the storage (iSCSI) network.

	storage_virtual_ip: string
}

na_ontap_qtree :: {

	// Whether the oplocks should be enabled or not for the qtree.

	oplocks?: string

	// File permissions bits of the qtree.

	unix_permissions?: string

	// The name of the FlexVol the qtree should exist on. Required when C(state=present).

	flexvol_name: string

	// Name of the qtree to be renamed.

	from_name?: string

	// The name of the qtree to manage.

	name: string

	// The name of the vserver to use.

	vserver: string

	// The name of the export policy to apply.

	export_policy?: string

	// The security style for the qtree.

	security_style?: string

	// Whether the specified qtree should exist or not.

	state?: string
}

netapp_e_host :: {

	// The unique identifier of the host-group you want the host to be a member of; this is used for clustering.

	group?: string

	// This is the type of host to be mapped
	// Required when C(state=present)
	// Either one of the following names can be specified, Linux DM-MP, VMWare, Windows, Windows Clustered, or a host type index which can be found in M(netapp_e_facts)

	host_type?: string

	// A local path to a file to be used for debug logging

	log_path?: string

	// If the host doesn't yet exist, the label/name to assign at creation time.
	// If the hosts already exists, this will be used to uniquely identify the host to make any required changes

	name: string

	// A list of host ports you wish to associate with the host.
	// Host ports are uniquely identified by their WWN or IQN. Their assignments to a particular host are uniquely identified by a label and these must be unique.

	ports?: string

	// Set to absent to remove an existing host
	// Set to present to modify or create a new host definition

	state?: string

	// Allow ports that are already assigned to be re-assigned to your current host

	force_port?: bool
}

netapp_e_volume_copy :: {

	// The url to the SANtricity WebServices Proxy or embedded REST API, for example C(https://prod-1.wahoo.acme.com/devmgr/v2).

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// Searches for all valid potential target and source volumes that could be used in a copy_pair
	// Mutually exclusive with volume_copy_pair_id, destination_volume_id and source_volume_id

	search_volume_id?: string

	// Whether the specified volume copy pair should exist or not.

	state: string

	// The id of a given volume copy pair
	// Mutually exclusive with destination_volume_id, source_volume_id, and search_volume_id
	// Can use to delete or check presence of volume pairs
	// Must specify this or (destination_volume_id and source_volume_id)

	volume_copy_pair_id?: string

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The id of the volume copy destination.
	// If used, must be paired with source_volume_id
	// Mutually exclusive with volume_copy_pair_id, and search_volume_id

	destination_volume_id?: string

	// The id of the volume copy source.
	// If used, must be paired with destination_volume_id
	// Mutually exclusive with volume_copy_pair_id, and search_volume_id

	source_volume_id?: string

	// starts a re-copy or stops a copy in progress
	// Note: If you stop the initial file copy before it it done the copy pair will be destroyed
	// Requires volume_copy_pair_id

	start_stop_copy?: string

	// Should https certificates be validated?

	validate_certs?: string

	// Defines if a copy pair will be created if it does not exist.
	// If set to True destination_volume_id and source_volume_id are required.

	create_copy_pair_if_does_not_exist?: bool
}

na_ontap_cluster_peer :: {

	// The arbitrary passphrase that matches the one given to the peer cluster.

	passphrase?: string

	// Whether the specified cluster peer should exist or not.

	state?: string

	// The name of the destination cluster name in the peer relation to be deleted.
	// Required for delete

	dest_cluster_name?: string

	// Destination cluster IP or hostname which needs to be peered
	// Required to complete the peering process at destination cluster.

	dest_hostname: string

	// List of intercluster addresses of the destination cluster.
	// Used as peer-addresses in source cluster.
	// All these intercluster lifs should belong to the destination cluster.

	dest_intercluster_lifs?: string

	// Destination password.
	// Optional if this is same as source password.

	dest_password?: string

	// Destination username.
	// Optional if this is same as source username.

	dest_username?: string

	// The name of the source cluster name in the peer relation to be deleted.

	source_cluster_name?: string

	// List of intercluster addresses of the source cluster.
	// Used as peer-addresses in destination cluster.
	// All these intercluster lifs should belong to the source cluster.

	source_intercluster_lifs?: string
}

na_ontap_export_policy_rule :: {

	// List of Read only access specifications for the rule

	ro_rule?: string

	// List of Read Write access specifications for the rule

	rw_rule?: string

	// Whether the specified export policy rule should exist or not.

	state?: string

	// Name of the vserver to use.

	vserver: string

	// List of Client Match host names, IP Addresses, Netgroups, or Domains
	// If rule_index is not provided, client_match is used as a key to fetch current rule to determine create,delete,modify actions. If a rule with provided client_match exists, a new rule will not be created, but the existing rule will be modified or deleted. If a rule with provided client_match doesn't exist, a new rule will be created if state is present.

	client_match?: string

	// The name of the export rule to manage.

	name: string

	// rule index of the export policy

	rule_index?: string

	// List of Read Write access specifications for the rule

	super_user_security?: string

	// If 'true', NFS server will honor SetUID bits in SETATTR operation. Default value on creation is 'true'

	allow_suid?: bool

	// List of Client access protocols.
	// Default value is set to 'any' during create.

	protocol?: string
}

na_ontap_kerberos_realm :: {

	// The vendor of the Key Distribution Centre (KDC) server
	// Required if I(state=present)

	kdc_vendor?: string

	// IP address of the host where the Kerberos password-changing server is running.
	// Typically, this is the same as the host indicated in the adminserver-ip.
	// If this parameter is omitted, the IP address in kdc-ip is used.

	pw_server_ip?: string

	// The TCP port on the Kerberos password-changing server where the Kerberos password-changing service is running.
	// The default for this parameter is '464'.

	pw_server_port?: string

	// Whether the Kerberos realm is present or absent.

	state?: string

	// vserver/svm with kerberos realm configured

	vserver: string

	// IP address of the host where the Kerberos administration daemon is running. This is usually the master KDC.
	// If this parameter is omitted, the address specified in kdc_ip is used.

	admin_server_ip?: string

	// The clock skew in minutes is the tolerance for accepting tickets with time stamps that do not exactly match the host's system clock.
	// The default for this parameter is '5' minutes.

	clock_skew?: string

	// IP address of the Key Distribution Centre (KDC) server
	// Required if I(state=present)

	kdc_ip?: string

	// TCP port on the KDC to be used for Kerberos communication.
	// The default for this parameter is '88'.

	kdc_port?: string

	// Kerberos realm name

	realm: string

	// The TCP port on the Kerberos administration server where the Kerberos administration service is running.
	// The default for this parameter is '749'

	admin_server_port?: string

	// Optional comment

	comment?: string
}

netapp_e_flashcache :: {

	// The minimum size (in size_units) of the ssd cache. The cache will be expanded if this exceeds the current size of the cache.

	cache_size_min?: string

	// The name of the SSD cache to manage

	name: string

	// The type of workload to optimize the cache for.

	io_type?: string

	// The unit to be applied to size arguments

	size_unit?: string

	// The ID of the array to manage (as configured on the web services proxy).

	ssid: string

	// Whether the specified SSD cache should exist or not.

	state: string

	// The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_password: string

	// The url to the SANtricity WebServices Proxy or embedded REST API.

	api_url: string

	// The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.

	api_username: string

	// The minimum number of disks to use for building the cache. The cache will be expanded if this number exceeds the number of disks already in place

	disk_count?: string

	// Should https certificates be validated?

	validate_certs?: bool
}
