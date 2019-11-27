package vmware

vmware_dvswitch_uplink_pg :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvswitch_uplink_pg: {

		// Dictionary which configures the advanced policy settings for the uplink portgroup.
		// Valid attributes are:
		// - C(port_config_reset_at_disconnect) (bool): indicates if the configuration of a port is reset automatically after disconnect. (default: true)
		// - C(block_override) (bool): indicates if the block policy can be changed per port. (default: true)
		// - C(netflow_override) (bool): indicates if the NetFlow policy can be changed per port. (default: false)
		// - C(traffic_filter_override) (bool): indicates if the traffic filter can be changed per port. (default: false)
		// - C(vendor_config_override) (bool): indicates if the vendor config can be changed per port. (default: false)
		// - C(vlan_override) (bool): indicates if the vlan can be changed per port. (default: false)

		advanced?: {...}

		// Indicates if all ports are blocked on the uplink portgroup.

		block_all_ports?: bool

		// The description of the uplink portgroup.

		description?: string

		// Dictionary which configures the LACP settings for the uplink portgroup.
		// The options are only used if the LACP support mode is set to 'basic'.
		// The following parameters are required:
		// - C(status) (str): Indicates if LACP is enabled. (default: disabled)
		// - C(mode) (str): The negotiating state of the uplinks/ports. (default: passive)

		lacp?: {...}

		// The name of the uplink portgroup.
		// The current name will be used if not specified.

		name?: string

		// Indicates if NetFlow is enabled on the uplink portgroup.

		netflow_enabled?: bool

		// The name of the Distributed Switch.

		switch: string

		// The VLAN trunk range that should be configured with the uplink portgroup.
		// This can be a combination of multiple ranges and numbers, example: [ 2-3967, 4049-4092 ].

		vlan_trunk_range?: [...]
	}
}

vmware_guest_powerstate :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_powerstate: {

		// Date and time in string format at which specified task needs to be performed.
		// The required format for date and time - 'dd/mm/yyyy hh:mm'.
		// Scheduling task requires vCenter server. A standalone ESXi server does not support this option.

		scheduled_at?: string

		// Set the state of the virtual machine.

		state?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Ignore warnings and complete the actions.
		// This parameter is useful while forcing virtual machine state.

		force?: bool

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Description of schedule task.
		// Valid only if C(scheduled_at) is specified.

		schedule_task_description?: string

		// Flag to indicate whether the scheduled task is enabled or disabled.

		schedule_task_enabled?: bool

		// Name of schedule task.
		// Valid only if C(scheduled_at) is specified.

		schedule_task_name?: string

		// If the C(state) is set to C(shutdown-guest), by default the module will return immediately after sending the shutdown signal.
		// If this argument is set to a positive integer, the module will instead wait for the VM to reach the poweredoff state.
		// The value sets a timeout in seconds for the module to wait for the state change.

		state_change_timeout?: int

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine to work with.
		// Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).

		name?: string

		// UUID of the instance to manage if known, this is VMware's unique identifier.
		// This is required if C(name) or C(moid) is not supplied.

		uuid?: string
	}
}

vmware_guest_vnc :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_vnc: {

		// Name of the virtual machine to work with.
		// Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).

		name?: string

		// UUID of the instance to manage if known, this is VMware's unique identifier.
		// This is required, if C(name) or C(moid) is not supplied.

		uuid?: string

		// Sets an IP for VNC on virtual machine.
		// This is required only when I(state) is set to present and will be ignored if I(state) is absent.

		vnc_ip?: string

		// The port that VNC listens on. Usually a number between 5900 and 7000 depending on your config.
		// This is required only when I(state) is set to present and will be ignored if I(state) is absent.

		vnc_port?: int

		// Destination folder, absolute or relative path to find an existing guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Set the state of VNC on virtual machine.

		state?: string

		// Sets a password for VNC on virtual machine.
		// This is required only when I(state) is set to present and will be ignored if I(state) is absent.

		vnc_password?: string

		// Destination datacenter for the deploy operation.
		// This parameter is case sensitive.

		datacenter?: string
	}
}

vca_fw :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vca_fw: {

		fw_rules: string

		// A list of firewall rules to be added to the gateway, Please see examples on valid entries
	}
}

vmware_dvswitch_nioc :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvswitch_nioc: {

		// Enable or disable NIOC on the distributed switch.

		state?: string

		// The name of the distributed switch.

		switch: string

		// Network IO control version.

		version?: string

		// List of dicts containing { name: Resource name is one of the following: "faultTolerance", "hbr", "iSCSI", "management", "nfs", "vdp", "virtualMachine", "vmotion", "vsan" limit: The maximum allowed usage for a traffic class belonging to this resource pool per host physical NIC. reservation: (Ignored if NIOC version is set to version2) Amount of bandwidth resource that is guaranteed available to the host infrastructure traffic class. If the utilization is less than the reservation, the extra bandwidth is used for other host infrastructure traffic class types. Reservation is not allowed to exceed the value of limit, if limit is set. Unit is Mbits/sec. shares_level: The allocation level ("low", "normal", "high", "custom"). The level is a simplified view of shares. Levels map to a pre-determined set of numeric values for shares. shares: Ignored unless shares_level is "custom".  The number of shares allocated. reservation: Ignored unless version is "version3". Amount of bandwidth resource that is guaranteed available to the host infrastructure traffic class. }

		resources?: [...]
	}
}

vmware_guest_disk_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_disk_facts: {

		// UUID of the instance to gather facts if known, this is VMware's unique identifier.
		// This is required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool
	}
}

vmware_dvs_portgroup_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvs_portgroup_info: {

		// Name of a dvswitch to look for.

		dvswitch?: string

		// Show or hide network policies of DVS portgroup.

		show_network_policy?: bool

		// Show or hide port policies of DVS portgroup.

		show_port_policy?: bool

		// Show or hide teaming policies of DVS portgroup.

		show_teaming_policy?: bool

		// Show or hide vlan information of the DVS portgroup.

		show_vlan_info?: bool

		// Name of the datacenter.

		datacenter: string
	}
}

vmware_guest_customization_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_customization_info: {

		spec_name?: string

		// Name of customization specification to find.
	}
}

vmware_host_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_facts: {

		// ESXi hostname.
		// Host facts about the specified ESXi server will be returned.
		// By specifying this option, you can select which ESXi hostsystem is returned if connecting to a vCenter.

		esxi_hostname?: string

		// Specify the properties to retrieve.
		// If not specified, all properties are retrieved (deeply).
		// Results are returned in a structure identical to the vsphere API.
		// Example:
		//    properties: [
		//       "hardware.memorySize",
		//       "hardware.cpuInfo.numCpuCores",
		//       "config.product.apiVersion",
		//       "overallStatus"
		//    ]
		// Only valid when C(schema) is C(vsphere).

		properties?: [...]

		// Specify the output schema desired.
		// The 'summary' output schema is the legacy output from the module
		// The 'vsphere' output schema is the vSphere API class definition which requires pyvmomi>6.7.1

		schema?: string

		// Tags related to Host are shown if set to C(True).

		show_tag?: bool
	}
}

vmware_content_library_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_content_library_manager: {

		// The content library type.
		// This is required only if C(state) is set to C(present).
		// This parameter is ignored, when C(state) is set to C(absent).

		library_type?: string

		// The state of content library.
		// If set to C(present) and library does not exists, then content library is created.
		// If set to C(present) and library exists, then content library is updated.
		// If set to C(absent) and library exists, then content library is deleted.
		// If set to C(absent) and library does not exists, no action is taken.

		state?: string

		// Name of the datastore on which backing content library is created.
		// This is required only if C(state) is set to C(present).
		// This parameter is ignored, when C(state) is set to C(absent).
		// Currently only datastore backing creation is supported.

		datastore_name?: string

		// The content library description.
		// This is required only if C(state) is set to C(present).
		// This parameter is ignored, when C(state) is set to C(absent).
		// Process of updating content library only allows description change.

		library_description?: string

		// The name of VMware content library to manage.

		library_name: string
	}
}

vmware_datacenter :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_datacenter: {

		// The name of the datacenter the cluster will be created in.

		datacenter_name: string

		// If the datacenter should be present or absent.

		state?: string
	}
}

vmware_drs_group :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_drs_group: {

		// The name of the group to create or remove.

		group_name: string

		// List of hosts to create in group.
		// Required only if C(vms) is not set.

		hosts?: [...]

		// If set to C(present) and the group doesn't exists then the group will be created.
		// If set to C(absent) and the group exists then the group will be deleted.

		state: string

		// List of vms to create in group.
		// Required only if C(hosts) is not set.

		vms?: [...]

		// Cluster to create vm/host group.

		cluster_name: string

		// Datacenter to search for given cluster. If not set, we use first cluster we encounter with C(cluster_name).

		datacenter?: string
	}
}

vmware_dvs_portgroup :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvs_portgroup: {

		// The name of the distributed vSwitch the port group should be created on.

		switch_name: string

		// Dictionary which configures the different teaming values for portgroup.
		// Valid attributes are:
		// - C(load_balance_policy) (string): Network adapter teaming policy. (default: loadbalance_srcid)
		//    - choices: [ loadbalance_ip, loadbalance_srcmac, loadbalance_srcid, loadbalance_loadbased, failover_explicit]
		//    - "loadbalance_loadbased" is available from version 2.6 and onwards
		// - C(inbound_policy) (bool): Indicate whether or not the teaming policy is applied to inbound frames as well. (default: False)
		// - C(notify_switches) (bool): Indicate whether or not to notify the physical switch if a link fails. (default: True)
		// - C(rolling_order) (bool): Indicate whether or not to use a rolling policy when restoring links. (default: False)

		teaming_policy?: {...}

		// The VLAN ID that should be configured with the portgroup, use 0 for no VLAN.
		// If C(vlan_trunk) is configured to be I(true), this can be a combination of multiple ranges and numbers, example: 1-200, 205, 400-4094.
		// The valid C(vlan_id) range is from 0 to 4094. Overlapping ranges are allowed.

		vlan_id: string

		// See VMware KB 1022312 regarding portgroup types.

		portgroup_type: string

		// Determines if the portgroup should be present or not.

		state: string

		// Dictionary which configures the advanced policy settings for the portgroup.
		// Valid attributes are:
		// - C(block_override) (bool): indicates if the block policy can be changed per port. (default: true)
		// - C(ipfix_override) (bool): indicates if the ipfix policy can be changed per port. (default: false)
		// - C(live_port_move) (bool): indicates if a live port can be moved in or out of the portgroup. (default: false)
		// - C(network_rp_override) (bool): indicates if the network resource pool can be changed per port. (default: false)
		// - C(port_config_reset_at_disconnect) (bool): indicates if the configuration of a port is reset automatically after disconnect. (default: true)
		// - C(security_override) (bool): indicates if the security policy can be changed per port. (default: false)
		// - C(shaping_override) (bool): indicates if the shaping policy can be changed per port. (default: false)
		// - C(traffic_filter_override) (bool): indicates if the traffic filter can be changed per port. (default: false)
		// - C(uplink_teaming_override) (bool): indicates if the uplink teaming policy can be changed per port. (default: false)
		// - C(vendor_config_override) (bool): indicates if the vendor config can be changed per port. (default: false)
		// - C(vlan_override) (bool): indicates if the vlan can be changed per port. (default: false)

		port_policy?: {...}

		// The name of the portgroup that is to be created or deleted.

		portgroup_name: string

		// Indicates whether this is a VLAN trunk or not.

		vlan_trunk?: bool

		// Dictionary which configures the different security values for portgroup.
		// Valid attributes are:
		// - C(promiscuous) (bool): indicates whether promiscuous mode is allowed. (default: false)
		// - C(forged_transmits) (bool): indicates whether forged transmits are allowed. (default: false)
		// - C(mac_changes) (bool): indicates whether mac changes are allowed. (default: false)

		network_policy?: {...}

		// The number of ports the portgroup should contain.

		num_ports: int
	}
}

vmware_folder_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_folder_info: {

		datacenter: string

		// Name of the datacenter.
	}
}

vmware_guest_move :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_move: {

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the existing virtual machine to move.
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the virtual machine to manage if known, this is VMware's unique identifier.
		// This is required if C(name) or C(moid) is not supplied.

		uuid?: string

		// Destination datacenter for the move operation

		datacenter: string

		// Absolute path to move an existing guest
		// The dest_folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// This parameter is case sensitive.
		// Examples:
		//    dest_folder: /ha-datacenter/vm
		//    dest_folder: ha-datacenter/vm
		//    dest_folder: /datacenter1/vm
		//    dest_folder: datacenter1/vm
		//    dest_folder: /datacenter1/vm/folder1
		//    dest_folder: datacenter1/vm/folder1
		//    dest_folder: /folder1/datacenter1/vm
		//    dest_folder: folder1/datacenter1/vm
		//    dest_folder: /folder1/datacenter1/vm/folder2

		dest_folder: string
	}
}

vmware_guest_tools_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_tools_info: {

		// The datacenter name to which virtual machine belongs to.

		datacenter?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required if name is supplied.
		// The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the VM to get VMware tools info.
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string

		// If multiple VMs matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage if known, this is VMware's unique identifier.
		// This is required if C(name) or C(moid) is not supplied.

		uuid?: string
	}
}

vmware_local_role_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_role_facts: {
	}
}

vmware_tag_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_tag_manager: {

		// Name of the object to work with.
		// For DistributedVirtualPortgroups the format should be "switch_name:portgroup_name"

		object_name: string

		// Type of object to work with.

		object_type: string

		// If C(state) is set to C(add) or C(present) will add the tags to the existing tag list of the given object.
		// If C(state) is set to C(remove) or C(absent) will remove the tags from the existing tag list of the given object.
		// If C(state) is set to C(set) will replace the tags of the given objects with the user defined list of tags.

		state?: string

		// List of tag(s) to be managed.
		// You can also specify category name by specifying colon separated value. For example, "category_name:tag_name".
		// You can skip category name if you have unique tag names.

		tag_names: [...]
	}
}

vmware_vcenter_settings :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vcenter_settings: {

		// The user directory settings for the vCenter server installation.
		// Valid attributes are:
		// - C(timeout) (int): User directory timeout. (default: 60)
		// - C(query_limit) (bool): Query limit. (default: true)
		// - C(query_limit_size) (int): Query limit size. (default: 5000)
		// - C(validation) (bool): Mail Validation. (default: true)
		// - C(validation_period) (int): Validation period. (default: 1440)

		user_directory?: {...}

		// The database settings for vCenter server.
		// Valid attributes are:
		// - C(max_connections) (int): Maximum connections. (default: 50)
		// - C(task_cleanup) (bool): Task cleanup. (default: true)
		// - C(task_retention) (int): Task retention (days). (default: 30)
		// - C(event_cleanup) (bool): Event cleanup. (default: true)
		// - C(event_retention) (int): Event retention (days). (default: 30)

		database?: {...}

		// The level of detail that vCenter server usesfor log files.

		logging_options?: string

		// The settings vCenter server uses to send email alerts.
		// Valid attributes are:
		// - C(server) (str): Mail server
		// - C(sender) (str): Mail sender address

		mail?: {...}

		// The unique runtime settings for vCenter server.
		// Valid attributes are:
		// - C(unique_id) (int): vCenter server unique ID.
		// - C(managed_address) (str): vCenter server managed address.
		// - C(vcenter_server_name) (str): vCenter server name. (default: FQDN)

		runtime_settings?: {...}

		// SNMP trap destinations for vCenter server alerts.
		// Valid attributes are:
		// - C(snmp_receiver_1_url) (str): Primary Receiver ULR. (default: "localhost")
		// - C(snmp_receiver_1_enabled) (bool): Enable receiver. (default: True)
		// - C(snmp_receiver_1_port) (int): Receiver port. (default: 162)
		// - C(snmp_receiver_1_community) (str): Community string. (default: "public")
		// - C(snmp_receiver_2_url) (str): Receiver 2 ULR. (default: "")
		// - C(snmp_receiver_2_enabled) (bool): Enable receiver. (default: False)
		// - C(snmp_receiver_2_port) (int): Receiver port. (default: 162)
		// - C(snmp_receiver_2_community) (str): Community string. (default: "")
		// - C(snmp_receiver_3_url) (str): Receiver 3 ULR. (default: "")
		// - C(snmp_receiver_3_enabled) (bool): Enable receiver. (default: False)
		// - C(snmp_receiver_3_port) (int): Receiver port. (default: 162)
		// - C(snmp_receiver_3_community) (str): Community string. (default: "")
		// - C(snmp_receiver_4_url) (str): Receiver 4 ULR. (default: "")
		// - C(snmp_receiver_4_enabled) (bool): Enable receiver. (default: False)
		// - C(snmp_receiver_4_port) (int): Receiver port. (default: 162)
		// - C(snmp_receiver_4_community) (str): Community string. (default: "")

		snmp_receivers?: {...}

		// The vCenter server connection timeout for normal and long operations.
		// Valid attributes are:
		// - C(normal_operations) (int) (default: 30)
		// - C(long_operations) (int) (default: 120)

		timeout_settings?: {...}
	}
}

vmware_vmkernel :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vmkernel: {

		// Enable Fault Tolerance traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_ft?: bool

		// The name of the vSwitch where to add the VMKernel interface.
		// Required parameter only if C(state) is set to C(present).
		// Optional parameter from version 2.5 and onwards.

		vswitch_name?: string

		// Search VMkernel adapter by device name.
		// The parameter is required only in case of C(type) is set to C(dhcp).

		device?: string

		// If set to C(present), the VMKernel adapter will be created with the given specifications.
		// If set to C(absent), the VMKernel adapter will be removed.
		// If set to C(present) and VMKernel adapter exists, the configurations will be updated.

		state?: string

		// Enable vSphere Replication traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_replication?: bool

		// Name of ESXi host to which VMKernel is to be managed.
		// From version 2.5 onwards, this parameter is required.

		esxi_hostname: string

		// The MTU for the VMKernel interface.
		// The default value of 1500 is valid from version 2.5 and onwards.

		mtu?: int

		// A dictionary of network details.
		// The following parameter is required:
		//  - C(type) (string): Type of IP assignment (either C(dhcp) or C(static)).
		// The following parameters are required in case of C(type) is set to C(static):
		//  - C(ip_address) (string): Static IP address (implies C(type: static)).
		//  - C(subnet_mask) (string): Static netmask required for C(ip_address).
		// The following parameter is optional in case of C(type) is set to C(static):
		//  - C(default_gateway) (string): Default gateway (Override default gateway for this adapter).
		// The following parameter is optional:
		//  - C(tcpip_stack) (string): The TCP/IP stack for the VMKernel interface. Can be default, provisioning, vmotion, or vxlan. (default: default)

		network?: {...}

		// The name of the vSphere Distributed Switch (vDS) where to add the VMKernel interface.
		// Required parameter only if C(state) is set to C(present).
		// Optional parameter from version 2.8 and onwards.

		dvswitch_name?: string

		// Enable Provisioning traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_provisioning?: bool

		// Enable vSphere Replication NFC traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_replication_nfc?: bool

		// Enable vMotion traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.
		// You cannot enable vMotion on an additional adapter if you already have an adapter with the vMotion TCP/IP stack configured.

		enable_vmotion?: bool

		// Enable VSAN traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_vsan?: bool

		// The IP Address for the VMKernel interface.
		// Use C(network) parameter with C(ip_address) instead.
		// Deprecated option, will be removed in version 2.9.

		ip_address?: string

		// The name of the port group for the VMKernel interface.

		portgroup_name: string

		// The Subnet Mask for the VMKernel interface.
		// Use C(network) parameter with C(subnet_mask) instead.
		// Deprecated option, will be removed in version 2.9.

		subnet_mask?: string

		// Enable Management traffic on the VMKernel adapter.
		// This option is only allowed if the default TCP/IP stack is used.

		enable_mgmt?: bool
	}
}

vmware_category_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_category_info: {
	}
}

vmware_guest :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest: {

		// Parameters for OS customization when cloning from the template or the virtual machine, or apply to the existing virtual machine directly.
		// Not all operating systems are supported for customization with respective vCenter version, please check VMware documentation for respective OS customization.
		// For supported customization operating system matrix, (see U(http://partnerweb.vmware.com/programs/guestOS/guest-os-customization-matrix.pdf))
		// All parameters and VMware object names are case sensitive.
		// Linux based OSes requires Perl package to be installed for OS customizations.
		// Common parameters (Linux/Windows):
		//  - C(existing_vm) (bool): If set to C(True), do OS customization on the specified virtual machine directly. If set to C(False) or not specified, do OS customization when cloning from the template or the virtual machine. version_added: 2.8
		//  - C(dns_servers) (list): List of DNS servers to configure.
		//  - C(dns_suffix) (list): List of domain suffixes, also known as DNS search path (default: C(domain) parameter).
		//  - C(domain) (string): DNS domain name to use.
		//  - C(hostname) (string): Computer hostname (default: shorted C(name) parameter). Allowed characters are alphanumeric (uppercase and lowercase) and minus, rest of the characters are dropped as per RFC 952.
		// Parameters related to Linux customization:
		//  - C(timezone) (string): Timezone (See List of supported time zones for different vSphere versions in Linux/Unix systems (2145518) U(https://kb.vmware.com/s/article/2145518)). version_added: 2.9
		//  - C(hwclockUTC) (bool): Specifies whether the hardware clock is in UTC or local time. True when the hardware clock is in UTC, False when the hardware clock is in local time. version_added: 2.9
		// Parameters related to Windows customization:
		//  - C(autologon) (bool): Auto logon after virtual machine customization (default: False).
		//  - C(autologoncount) (int): Number of autologon after reboot (default: 1).
		//  - C(domainadmin) (string): User used to join in AD domain (mandatory with C(joindomain)).
		//  - C(domainadminpassword) (string): Password used to join in AD domain (mandatory with C(joindomain)).
		//  - C(fullname) (string): Server owner name (default: Administrator).
		//  - C(joindomain) (string): AD domain to join (Not compatible with C(joinworkgroup)).
		//  - C(joinworkgroup) (string): Workgroup to join (Not compatible with C(joindomain), default: WORKGROUP).
		//  - C(orgname) (string): Organisation name (default: ACME).
		//  - C(password) (string): Local administrator password.
		//  - C(productid) (string): Product ID.
		//  - C(runonce) (list): List of commands to run at first user logon.
		//  - C(timezone) (int): Timezone (See U(https://msdn.microsoft.com/en-us/library/ms912391.aspx)).

		customization?: string

		// Define a timeout (in seconds) for the wait_for_ip_address parameter.

		wait_for_ip_address_timeout?: int

		// Manage virtual machine's hardware attributes.
		// All parameters case sensitive.
		// Valid attributes are:
		//  - C(hotadd_cpu) (boolean): Allow virtual CPUs to be added while the virtual machine is running.
		//  - C(hotremove_cpu) (boolean): Allow virtual CPUs to be removed while the virtual machine is running. version_added: 2.5
		//  - C(hotadd_memory) (boolean): Allow memory to be added while the virtual machine is running.
		//  - C(memory_mb) (integer): Amount of memory in MB.
		//  - C(nested_virt) (bool): Enable nested virtualization. version_added: 2.5
		//  - C(num_cpus) (integer): Number of CPUs.
		//  - C(num_cpu_cores_per_socket) (integer): Number of Cores Per Socket.
		//  C(num_cpus) must be a multiple of C(num_cpu_cores_per_socket). For example to create a VM with 2 sockets of 4 cores, specify C(num_cpus): 8 and C(num_cpu_cores_per_socket): 4
		//  - C(scsi) (string): Valid values are C(buslogic), C(lsilogic), C(lsilogicsas) and C(paravirtual) (default).
		//  - C(memory_reservation_lock) (boolean): If set true, memory resource reservation for the virtual machine will always be equal to the virtual machine's memory size. version_added: 2.5
		//  - C(max_connections) (integer): Maximum number of active remote display connections for the virtual machines. version_added: 2.5.
		//  - C(mem_limit) (integer): The memory utilization of a virtual machine will not exceed this limit. Unit is MB. version_added: 2.5
		//  - C(mem_reservation) (integer): The amount of memory resource that is guaranteed available to the virtual machine. Unit is MB. C(memory_reservation) is alias to this. version_added: 2.5
		//  - C(cpu_limit) (integer): The CPU utilization of a virtual machine will not exceed this limit. Unit is MHz. version_added: 2.5
		//  - C(cpu_reservation) (integer): The amount of CPU resource that is guaranteed available to the virtual machine. Unit is MHz. version_added: 2.5
		//  - C(version) (integer): The Virtual machine hardware versions. Default is 10 (ESXi 5.5 and onwards). If value specified as C(latest), version is set to the most current virtual hardware supported on the host. C(latest) is added in version 2.10. Please check VMware documentation for correct virtual machine hardware version. Incorrect hardware version may lead to failure in deployment. If hardware version is already equal to the given version then no action is taken. version_added: 2.6
		//  - C(boot_firmware) (string): Choose which firmware should be used to boot the virtual machine. Allowed values are "bios" and "efi". version_added: 2.7
		//  - C(virt_based_security) (bool): Enable Virtualization Based Security feature for Windows 10. (Support from Virtual machine hardware version 14, Guest OS Windows 10 64 bit, Windows Server 2016)

		hardware?: string

		// Name of the virtual machine to work with.
		// Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).
		// If multiple virtual machines with same name exists, then C(folder) is required parameter to identify uniqueness of the virtual machine.
		// This parameter is required, if C(state) is set to C(poweredon), C(poweredoff), C(present), C(restarted), C(suspended) and virtual machine does not exists.
		// This parameter is case sensitive.

		name: string

		// UUID of the virtual machine to manage if known, this is VMware's unique identifier.
		// This is required if C(name) is not supplied.
		// If virtual machine does not exists, then this parameter is ignored.
		// Please note that a supplied UUID will be ignored on virtual machine creation, as VMware creates the UUID internally.

		uuid?: string

		// Define a list of custom values to set on virtual machine.
		// A custom value object takes two fields C(key) and C(value).
		// Incorrect key and values will be ignored.

		customvalues?: string

		// Destination folder, absolute path to find an existing guest or create the new guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// This parameter is case sensitive.
		// This parameter is required, while deploying new virtual machine. version_added 2.5.
		// If multiple machines are found with same name, this parameter is used to identify uniqueness of the virtual machine. version_added 2.5
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Flag the instance as a template.
		// This will mark the given virtual machine as template.

		is_template?: bool

		// Whether to create a linked clone from the snapshot specified.
		// If specified, then C(snapshot_src) is required parameter.

		linked_clone?: bool

		// If the C(state) is set to C(shutdownguest), by default the module will return immediately after sending the shutdown signal.
		// If this argument is set to a positive integer, the module will instead wait for the virtual machine to reach the poweredoff state.
		// The value sets a timeout in seconds for the module to wait for the state change.

		state_change_timeout?: string

		// Wait until vCenter detects all guest customizations as successfully completed.
		// When enabled, the VM will automatically be powered on.
		// If vCenter does not detect guest customization start or succeed, failed events after time C(wait_for_customization_timeout) parameter specified, warning message will be printed and task result is fail.

		wait_for_customization?: bool

		// Define a timeout (in seconds) for the wait_for_customization parameter.
		// Be careful when setting this value since the time guest customization took may differ among guest OSes.

		wait_for_customization_timeout?: int

		// Wait until vCenter detects an IP address for the virtual machine.
		// This requires vmware-tools (vmtoolsd) to properly work after creation.
		// vmware-tools needs to be installed on the given virtual machine in order to work with this parameter.

		wait_for_ip_address?: bool

		// A CD-ROM configuration for the virtual machine.
		// Or a list of CD-ROMs configuration for the virtual machine. Added in version 2.9.
		// Parameters C(controller_type), C(controller_number), C(unit_number), C(state) are added for a list of CD-ROMs configuration support.
		// Valid attributes are:
		//  - C(type) (string): The type of CD-ROM, valid options are C(none), C(client) or C(iso). With C(none) the CD-ROM will be disconnected but present.
		//  - C(iso_path) (string): The datastore path to the ISO file to use, in the form of C([datastore1] path/to/file.iso). Required if type is set C(iso).
		//  - C(controller_type) (string): Default value is C(ide). Only C(ide) controller type for CD-ROM is supported for now, will add SATA controller type in the future.
		//  - C(controller_number) (int): For C(ide) controller, valid value is 0 or 1.
		//  - C(unit_number) (int): For CD-ROM device attach to C(ide) controller, valid value is 0 or 1. C(controller_number) and C(unit_number) are mandatory attributes.
		//  - C(state) (string): Valid value is C(present) or C(absent). Default is C(present). If set to C(absent), then the specified CD-ROM will be removed. For C(ide) controller, hot-add or hot-remove CD-ROM is not supported.

		cdrom?: string

		// Specify convert disk type while cloning template or virtual machine.

		convert?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// The cluster name where the virtual machine will run.
		// This is a required parameter, if C(esxi_hostname) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.
		// This parameter is case sensitive.

		cluster?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// A list of vApp properties
		// For full list of attributes and types refer to: U(https://github.com/vmware/pyvmomi/blob/master/docs/vim/vApp/PropertyInfo.rst)
		// Basic attributes are:
		//  - C(id) (string): Property id - required.
		//  - C(value) (string): Property value.
		//  - C(type) (string): Value type, string type by default.
		//  - C(operation): C(remove): This attribute is required only when removing properties.

		vapp_properties?: string

		// A list of networks (in the order of the NICs).
		// Removing NICs is not allowed, while reconfiguring the virtual machine.
		// All parameters and VMware object names are case sensitive.
		// One of the below parameters is required per entry:
		//  - C(name) (string): Name of the portgroup or distributed virtual portgroup for this interface. When specifying distributed virtual portgroup make sure given C(esxi_hostname) or C(cluster) is associated with it.
		//  - C(vlan) (integer): VLAN number for this interface.
		// Optional parameters per entry (used for virtual hardware):
		//  - C(device_type) (string): Virtual network device (one of C(e1000), C(e1000e), C(pcnet32), C(vmxnet2), C(vmxnet3) (default), C(sriov)).
		//  - C(mac) (string): Customize MAC address.
		//  - C(dvswitch_name) (string): Name of the distributed vSwitch. This value is required if multiple distributed portgroups exists with the same name. version_added 2.7
		//  - C(start_connected) (bool): Indicates that virtual network adapter starts with associated virtual machine powers on. version_added: 2.5
		// Optional parameters per entry (used for OS customization):
		//  - C(type) (string): Type of IP assignment (either C(dhcp) or C(static)). C(dhcp) is default.
		//  - C(ip) (string): Static IP address (implies C(type: static)).
		//  - C(netmask) (string): Static netmask required for C(ip).
		//  - C(gateway) (string): Static gateway.
		//  - C(dns_servers) (string): DNS servers for this network interface (Windows).
		//  - C(domain) (string): Domain name for this network interface (Windows).
		//  - C(wake_on_lan) (bool): Indicates if wake-on-LAN is enabled on this virtual network adapter. version_added: 2.5
		//  - C(allow_guest_control) (bool): Enables guest control over whether the connectable device is connected. version_added: 2.5

		networks?: string

		// Template or existing virtual machine used to create new virtual machine.
		// If this value is not set, virtual machine is created without using a template.
		// If the virtual machine already exists, this parameter will be ignored.
		// This parameter is case sensitive.
		// You can also specify template or VM UUID for identifying source. version_added 2.8. Use C(hw_product_uuid) from M(vmware_guest_facts) as UUID value.
		// From version 2.8 onwards, absolute path to virtual machine or template can be used.

		template?: string

		// Whether to delete Virtual machine from inventory or delete from disk.

		delete_from_inventory?: bool

		// The ESXi hostname where the virtual machine will run.
		// This is a required parameter, if C(cluster) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.
		// This parameter is case sensitive.

		esxi_hostname?: string

		// Use the given resource pool for virtual machine operation.
		// This parameter is case sensitive.
		// Resource pool should be child of the selected host parent.

		resource_pool?: string

		// Name of the existing snapshot to use to create a clone of a virtual machine.
		// This parameter is case sensitive.
		// While creating linked clone using C(linked_clone) parameter, this parameter is required.

		snapshot_src?: string

		// Destination datacenter for the deploy operation.
		// This parameter is case sensitive.

		datacenter?: string

		// Specify datastore or datastore cluster to provision virtual machine.
		// This parameter takes precedence over "disk.datastore" parameter.
		// This parameter can be used to override datastore or datastore cluster setting of the virtual machine when deployed from the template.
		// Please see example for more usage.

		datastore?: string

		// A list of disks to add.
		// This parameter is case sensitive.
		// Shrinking disks is not supported.
		// Removing existing disks of the virtual machine is not supported.
		// Valid attributes are:
		//  - C(size_[tb,gb,mb,kb]) (integer): Disk storage size in specified unit.
		//  - C(type) (string): Valid values are:
		//      - C(thin) thin disk
		//      - C(eagerzeroedthick) eagerzeroedthick disk, added in version 2.5
		//      Default: C(None) thick disk, no eagerzero.
		//  - C(datastore) (string): The name of datastore which will be used for the disk. If C(autoselect_datastore) is set to True, then will select the less used datastore whose name contains this "disk.datastore" string.
		//  - C(filename) (string): Existing disk image to be used. Filename must already exist on the datastore.
		//    Specify filename string in C([datastore_name] path/to/file.vmdk) format. Added in version 2.8.
		//  - C(autoselect_datastore) (bool): select the less used datastore. "disk.datastore" and "disk.autoselect_datastore" will not be used if C(datastore) is specified outside this C(disk) configuration.
		//  - C(disk_mode) (string): Type of disk mode. Added in version 2.6
		//      - Available options are :
		//      - C(persistent): Changes are immediately and permanently written to the virtual disk. This is default.
		//      - C(independent_persistent): Same as persistent, but not affected by snapshots.
		//      - C(independent_nonpersistent): Changes to virtual disk are made to a redo log and discarded at power off, but not affected by snapshots.

		disk?: string

		// Ignore warnings and complete the actions.
		// This parameter is useful while removing virtual machine which is powered on state.
		// This module reflects the VMware vCenter API and UI workflow, as such, in some cases the `force` flag will be mandatory to perform the action to ensure you are certain the action has to be taken, no matter what the consequence. This is specifically the case for removing a powered on the virtual machine when C(state) is set to C(absent).

		force?: bool

		// A note or annotation to include in the virtual machine.

		annotation?: string

		// Unique name identifying the requested customization specification.
		// This parameter is case sensitive.
		// If set, then overrides C(customization) parameter values.

		customization_spec?: string

		// Set the guest ID.
		// This parameter is case sensitive.
		// Examples:
		//   virtual machine with RHEL7 64 bit, will be 'rhel7_64Guest'
		//   virtual machine with CentOS 64 bit, will be 'centos64Guest'
		//   virtual machine with Ubuntu 64 bit, will be 'ubuntu64Guest'
		// This field is required when creating a virtual machine, not required when creating from the template.
		// Valid values are referenced here: U(https://code.vmware.com/apis/358/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html)

		guest_id?: string

		// Specify the state the virtual machine should be in.
		// If C(state) is set to C(present) and virtual machine exists, ensure the virtual machine configurations conforms to task arguments.
		// If C(state) is set to C(absent) and virtual machine exists, then the specified virtual machine is removed with its associated components.
		// If C(state) is set to one of the following C(poweredon), C(poweredoff), C(present), C(restarted), C(suspended) and virtual machine does not exists, then virtual machine is deployed with given parameters.
		// If C(state) is set to C(poweredon) and virtual machine exists with powerstate other than powered on, then the specified virtual machine is powered on.
		// If C(state) is set to C(poweredoff) and virtual machine exists with powerstate other than powered off, then the specified virtual machine is powered off.
		// If C(state) is set to C(restarted) and virtual machine exists, then the virtual machine is restarted.
		// If C(state) is set to C(suspended) and virtual machine exists, then the virtual machine is set to suspended mode.
		// If C(state) is set to C(shutdownguest) and virtual machine exists, then the virtual machine is shutdown.
		// If C(state) is set to C(rebootguest) and virtual machine exists, then the virtual machine is rebooted.

		state?: string
	}
}

vmware_host_hyperthreading :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_hyperthreading: {

		// Name of the cluster from which all host systems will be used.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string

		// Enable or disable Hyperthreading.
		// You need to reboot the ESXi host if you change the configuration.
		// Make sure that Hyperthreading is enabled in the BIOS. Otherwise, it will be enabled, but never activated.

		state?: string
	}
}

vmware_host_service_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_service_manager: {

		// ESXi hostname.
		// Service settings are applied to this ESXi host system.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Name of Service to be managed. This is a brief identifier for the service, for example, ntpd, vxsyslogd etc.
		// This value should be a valid ESXi service name.

		service_name: string

		// Set of valid service policy strings.
		// If set C(on), then service should be started when the host starts up.
		// If set C(automatic), then service should run if and only if it has open firewall ports.
		// If set C(off), then Service should not be started when the host starts up.

		service_policy?: string

		// Desired state of service.
		// State value 'start' and 'present' has same effect.
		// State value 'stop' and 'absent' has same effect.

		state?: string

		// Name of the cluster.
		// Service settings are applied to every ESXi host system/s in given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string
	}
}

vmware_vcenter_statistics :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vcenter_statistics: {

		// Settings for vCenter server past day statistic collection.
		// Valid attributes are:
		// - C(enabled) (bool): Past day statistics collection enabled. (default: True)
		// - C(interval_minutes) (int): Interval duration (minutes). (choices: [1, 2, 3, 4, 5]) (default: 5)
		// - C(save_for_days) (int): Save for (days). (choices: [1, 2, 3, 4, 5]) (default: 1)
		// - C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)

		interval_past_day?: {...}

		// Settings for vCenter server past month statistic collection.
		// Valid attributes are:
		// - C(enabled) (bool): Past month statistics collection enabled. (default: True)
		// - C(interval_hours) (int): Interval duration (hours). (choices: [2]) (default: 2)
		// - C(save_for_months) (int): Save for (months). (choices: [1]) (default: 1)
		// - C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)

		interval_past_month?: {...}

		// Settings for vCenter server past week statistic collection.
		// Valid attributes are:
		// - C(enabled) (bool): Past week statistics collection enabled. (default: True)
		// - C(interval_minutes) (int): Interval duration (minutes). (choices: [30]) (default: 30)
		// - C(save_for_weeks) (int): Save for (weeks). (choices: [1]) (default: 1)
		// - C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)

		interval_past_week?: {...}

		// Settings for vCenter server past month statistic collection.
		// Valid attributes are:
		// - C(enabled) (bool): Past month statistics collection enabled. (default: True)
		// - C(interval_days) (int): Interval duration (days). (choices: [1]) (default: 1)
		// - C(save_for_years) (int): Save for (years). (choices: [1, 2, 3, 4, 5]) (default: 1)
		// - C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)

		interval_past_year?: {...}
	}
}

vcenter_license :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vcenter_license: {

		// Whether to add (C(present)) or remove (C(absent)) the license key.

		state?: string

		// Name of the cluster to apply vSAN license.

		cluster_name?: string

		// The datacenter name to use for the operation.

		datacenter?: string

		// The hostname of the ESXi server to which the specified license will be assigned.
		// This parameter is optional.

		esxi_hostname?: string

		// The optional labels of the license key to manage in vSphere vCenter.
		// This is dictionary with key/value pair.

		labels?: {...}

		// The license key to manage in vSphere vCenter.

		license: string
	}
}

vmware_drs_group_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_drs_group_info: {

		// Cluster to search for VM/Host groups.
		// If set, information of DRS groups belonging this cluster will be returned.
		// Not needed if C(datacenter) is set.

		cluster_name?: string

		// Datacenter to search for DRS VM/Host groups.

		datacenter: string
	}
}

vmware_guest_customization_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_customization_facts: {

		spec_name?: string

		// Name of customization specification to find.
	}
}

vmware_host_config_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_config_facts: {

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_vswitch_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vswitch_info: {

		// Name of the cluster.
		// Info about vswitch belonging to every ESXi host systems under this cluster will be returned.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vsphere_file :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vsphere_file: {

		// If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.

		validate_certs?: bool

		// The state of or the action on the provided path.
		// If C(absent), the file will be removed.
		// If C(directory), the directory will be created.
		// If C(file), more information of the (existing) file will be returned.
		// If C(touch), an empty file will be created if the path does not exist.

		state?: string

		// The user name to authenticate on the vCenter server.

		username: string

		// The vCenter server on which the datastore is available.

		host: string

		// The password to authenticate on the vCenter server.

		password: string

		// The file or directory on the datastore on the vCenter server.

		path: string

		// The timeout in seconds for the upload to the datastore.

		timeout?: int

		// The datacenter on the vCenter server that holds the datastore.

		datacenter: string

		// The datastore on the vCenter server to push files to.

		datastore: string
	}
}

vmware_guest_disk :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_disk: {

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to gather facts if known, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter: string

		// A list of disks to add.
		// The virtual disk related information is provided using this list.
		// All values and parameters are case sensitive.
		// Valid attributes are:
		//  - C(size[_tb,_gb,_mb,_kb]) (integer): Disk storage size in specified unit.
		//    If C(size) specified then unit must be specified. There is no space allowed in between size number and unit.
		//    Only first occurrence in disk element will be considered, even if there are multiple size* parameters available.
		//  - C(type) (string): Valid values are:
		//      - C(thin) thin disk
		//      - C(eagerzeroedthick) eagerzeroedthick disk
		//      - C(thick) thick disk
		//      Default: C(thick) thick disk, no eagerzero.
		//  - C(disk_mode) (string): Type of disk mode. Valid values are:
		//      - C(persistent) Changes are immediately and permanently written to the virtual disk. This is default.
		//      - C(independent_persistent) Same as persistent, but not affected by snapshots.
		//      - C(independent_nonpersistent) Changes to virtual disk are made to a redo log and discarded at power off, but not affected by snapshots.
		//  - C(datastore) (string): Name of datastore or datastore cluster to be used for the disk.
		//  - C(autoselect_datastore) (bool): Select the less used datastore. Specify only if C(datastore) is not specified.
		//  - C(scsi_controller) (integer): SCSI controller number. Valid value range from 0 to 3.
		//    Only 4 SCSI controllers are allowed per VM.
		//    Care should be taken while specifying C(scsi_controller) is 0 and C(unit_number) as 0 as this disk may contain OS.
		//  - C(unit_number) (integer): Disk Unit Number. Valid value range from 0 to 15. Only 15 disks are allowed per SCSI Controller.
		//  - C(scsi_type) (string): Type of SCSI controller. This value is required only for the first occurrence of SCSI Controller.
		//    This value is ignored, if SCSI Controller is already present or C(state) is C(absent).
		//    Valid values are C(buslogic), C(lsilogic), C(lsilogicsas) and C(paravirtual).
		//    C(paravirtual) is default value for this parameter.
		//  - C(state) (string): State of disk. This is either "absent" or "present".
		//    If C(state) is set to C(absent), disk will be removed permanently from virtual machine configuration and from VMware storage.
		//    If C(state) is set to C(present), disk will be added if not present at given SCSI Controller and Unit Number.
		//    If C(state) is set to C(present) and disk exists with different size, disk size is increased.
		//    Reducing disk size is not allowed.

		disk?: [...]

		// Destination folder, absolute or relative path to find an existing guest.
		// This is a required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string
	}
}

vmware_host :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host: {

		// Reconnect disconnected hosts.
		// This is only used if C(state) is set to C(present) and if the host already exists.

		reconnect_disconnected?: bool

		// If set to C(present), add the host if host is absent.
		// If set to C(present), update the location of the host if host already exists.
		// If set to C(absent), remove the host if host is present.
		// If set to C(absent), do nothing if host already does not exists.
		// If set to C(add_or_reconnect), add the host if it's absent else reconnect it and update the location.
		// If set to C(reconnect), then reconnect the host if it's present and update the location.

		state?: string

		// Name of the datacenter to add the host.
		// Aliases added in version 2.6.

		datacenter_name: string

		// ESXi password.
		// Required for adding a host.
		// Optional for reconnect.
		// Unused for removing.
		// No longer a required parameter from version 2.5.

		esxi_password?: string

		// ESXi username.
		// Required for adding a host.
		// Optional for reconnect. If both C(esxi_username) and C(esxi_password) are used
		// Unused for removing.
		// No longer a required parameter from version 2.5.

		esxi_username?: string

		// Fetch the thumbprint of the host's SSL certificate.
		// This basically disables the host certificate verification (check if it was signed by a recognized CA).
		// Disable this option if you want to allow only hosts with valid certificates to be added to vCenter.
		// If this option is set to C(false) and the certificate can't be verified, an add or reconnect will fail.
		// Unused when C(esxi_ssl_thumbprint) is set.
		// Optional for reconnect, but only used if C(esxi_username) and C(esxi_password) are used.
		// Unused for removing.

		fetch_ssl_thumbprint?: bool

		// Force the connection if the host is already being managed by another vCenter server.

		force_connection?: bool

		// If set to C(True), then the host should be connected as soon as it is added.
		// This parameter is ignored if state is set to a value other than C(present).

		add_connected?: bool

		// Name of the cluster to add the host.
		// If C(folder) is not set, then this parameter is required.
		// Aliases added in version 2.6.

		cluster_name?: string

		// ESXi hostname to manage.

		esxi_hostname: string

		// Specifying the hostsystem certificate's thumbprint.
		// Use following command to get hostsystem certificate's thumbprint - 
		// # openssl x509 -in /etc/vmware/ssl/rui.crt -fingerprint -sha1 -noout
		// Only used if C(fetch_thumbprint) isn't set to C(true).

		esxi_ssl_thumbprint?: string

		// Name of the folder under which host to add.
		// If C(cluster_name) is not set, then this parameter is required.
		// For example, if there is a datacenter 'dc1' under folder called 'Site1' then, this value will be '/Site1/dc1/host'.
		// Here 'host' is an invisible folder under VMware Web Client.
		// Another example, if there is a nested folder structure like '/myhosts/india/pune' under datacenter 'dc2', then C(folder) value will be '/dc2/host/myhosts/india/pune'.
		// Other Examples: 
		//   - '/Site2/dc2/Asia-Cluster/host'
		//   - '/dc3/Asia-Cluster/host'

		folder?: string
	}
}

vmware_host_powerstate :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_powerstate: {

		// Name of the cluster from which all host systems will be used.
		// This is required parameter if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This is required parameter if C(cluster_name) is not specified.

		esxi_hostname?: string

		// This parameter specify if the host should be proceeding with user defined powerstate regardless of whether it is in maintenance mode.
		// If C(state) set to C(reboot-host) and C(force) as C(true), then host system is rebooted regardless of whether it is in maintenance mode.
		// If C(state) set to C(shutdown-host) and C(force) as C(true), then host system is shutdown regardless of whether it is in maintenance mode.
		// If C(state) set to C(power-down-to-standby) and C(force) to C(true), then all powered off VMs will evacuated.
		// Not applicable if C(state) set to C(power-up-from-standby).

		force?: bool

		// Set the state of the host system.

		state?: string

		// This parameter defines timeout for C(state) set to C(power-down-to-standby) or C(power-up-from-standby).
		// Ignored if C(state) set to C(reboot-host) or C(shutdown-host).
		// This parameter is defined in seconds.

		timeout?: int
	}
}

vmware_host_scanhba :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_scanhba: {

		// Cluster name to Rescan the storage subsystem on (this will run the rescan task on each host in the cluster).

		cluster_name?: string

		// ESXi hostname to Rescan the storage subsystem on.

		esxi_hostname?: string

		// Refresh the storage system in vCenter/ESXi Web Client for each host found

		refresh_storage?: bool
	}
}

vmware_local_role_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_role_info: {
	}
}

vmware_resource_pool_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_resource_pool_facts: {
	}
}

vmware_vmkernel_ip_config :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vmkernel_ip_config: {

		// IP address to assign to VMkernel interface

		ip_address: string

		// Subnet Mask to assign to VMkernel interface

		subnet_mask: string

		// VMkernel interface name

		vmk_name: string
	}
}

vmware_host_auto_start :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_auto_start: {

		// System defaults for auto-start or auto-stop config for virtual machine.

		system_defaults?: {...}

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// VM uuid to set auto power on or off, this is VMware's unique identifier.
		// This is required if C(name) is not supplied.
		// This is not necessary if change only system default VM settings for autoStart config.

		uuid?: string

		// ESXi hostname where the VM to set auto power on or off exists.

		esxi_hostname: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// VM name to set auto power on or off.
		// This is not necessary if change only system default VM settings for autoStart config.

		name?: string

		// Startup or shutdown settings of virtual machine.
		// This setting will override the system defaults.

		power_info?: {...}
	}
}

vmware_host_firewall_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_firewall_info: {

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_portgroup_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_portgroup_info: {

		// Name of the cluster.
		// Info will be returned for all hostsystem belonging to this cluster name.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Gather information about Security, Traffic Shaping, as well as Teaming and failover.
		// The property C(ts) stands for Traffic Shaping and C(lb) for Load Balancing.

		policies?: bool
	}
}

vmware_vm_host_drs_rule :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_host_drs_rule: {

		// Name of Host group to use with rule.
		// Effective only if C(state) is set to C(present).

		host_group_name: string

		// If set to C(True), the DRS rule will be mandatory.
		// Effective only if C(state) is set to C(present).

		mandatory?: bool

		// Name of VM group to use with rule.
		// Effective only if C(state) is set to C(present).

		vm_group_name: string

		// Name of rule to create or remove.

		drs_rule_name: string

		// If set to C(True), the DRS rule will be enabled.
		// Effective only if C(state) is set to C(present).

		enabled?: bool

		// If set to C(present) and the rule doesn't exists then the rule will be created.
		// If set to C(absent) and the rule exists then the rule will be deleted.

		state: string

		// If set to C(True), the DRS rule will be an Affinity rule.
		// If set to C(False), the DRS rule will be an Anti-Affinity rule.
		// Effective only if C(state) is set to C(present).

		affinity_rule?: bool

		// Cluster to create VM-Host rule.

		cluster_name: string

		// Datacenter to search for given cluster. If not set, we use first cluster we encounter with C(cluster_name).

		datacenter?: string
	}
}

vmware_guest_boot_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_boot_info: {

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) or C(moid) parameter is not supplied.

		uuid?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the VM to work with.
		// This is required if C(uuid) or C(moid) parameter is not supplied.

		name?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool
	}
}

vmware_guest_sendkey :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_sendkey: {

		// The name of cluster where the virtual machine is running.
		// This is a required parameter, if C(esxi_hostname) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		cluster?: string

		// The ESXi hostname where the virtual machine is running.
		// This is a required parameter, if C(cluster) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		esxi_hostname?: string

		// The list of the keys will be sent to the virtual machine.
		// Valid values are C(ENTER), C(ESC), C(BACKSPACE), C(TAB), C(SPACE), C(CAPSLOCK), C(DELETE), C(CTRL_ALT_DEL), C(CTRL_C) and C(F1) to C(F12), C(RIGHTARROW), C(LEFTARROW), C(DOWNARROW), C(UPARROW).
		// If both C(keys_send) and C(string_send) are specified, keys in C(keys_send) list will be sent in front of the C(string_send).

		keys_send?: [...]

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// The string will be sent to the virtual machine.
		// This string can contain valid special character, alphabet and digit on the keyboard.

		string_send?: string

		// UUID of the instance to gather facts if known, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is a required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string
	}
}

vmware_host_config_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_config_manager: {

		// Name of the cluster.
		// Settings are applied to every ESXi host in given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Settings are applied to this ESXi host.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// A dictionary of advanced system settings.
		// Invalid options will cause module to error.
		// Note that the list of advanced options (with description and values) can be found by running `vim-cmd hostsvc/advopt/options`.

		options?: {...}
	}
}

vmware_host_dns_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_dns_info: {

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string
	}
}

vmware_host_vmnic_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_vmnic_info: {

		// Gather information about general capabilities (Auto negotiation, Wake On LAN, and Network I/O Control).

		capabilities?: bool

		// Name of the cluster from which all host systems will be used.
		// Vmnic information about each ESXi server will be returned for the given cluster.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Gather information about DirectPath I/O capabilities and configuration.

		directpath_io?: bool

		// Name of the host system to work with.
		// Vmnic information about this ESXi server will be returned.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string

		// Gather information about SR-IOV capabilities and configuration.

		sriov?: bool
	}
}

vmware_vswitch_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vswitch_facts: {

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Name of the cluster.
		// Facts about vswitch belonging to every ESXi host systems under this cluster will be returned.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string
	}
}

vmware_host_ntp_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ntp_facts: {

		// Name of the cluster.
		// NTP config facts about each ESXi server will be returned for the given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// NTP config facts about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_about_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_about_facts: {
	}
}

vmware_about_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_about_info: {
	}
}

vmware_cluster_ha :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cluster_ha: {

		// Priority HA gives to a virtual machine if sufficient capacity is not available to power on all failed virtual machines.
		// Valid only if I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// If set to C(disabled), then HA is disabled for this virtual machine.
		// If set to C(high), then virtual machine with this priority have a higher chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.
		// If set to C(medium), then virtual machine with this priority have an intermediate chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.
		// If set to C(low), then virtual machine with this priority have a lower chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.

		ha_restart_priority?: string

		// Maximum number of failures and automated resets allowed during the time that C(ha_vm_max_failure_window) specifies.
		// Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).

		ha_vm_max_failures?: int

		// Indicates whether or VMs should be powered off if a host determines that it is isolated from the rest of the compute resource.
		// If set to C(none), do not power off VMs in the event of a host network isolation.
		// If set to C(powerOff), power off VMs in the event of a host network isolation.
		// If set to C(shutdown), shut down VMs guest operating system in the event of a host network isolation.

		host_isolation_response?: string

		// State of virtual machine health monitoring service.
		// If set to C(vmAndAppMonitoring), HA response to both virtual machine and application heartbeat failure.
		// If set to C(vmMonitoringDisabled), virtual machine health monitoring is disabled.
		// If set to C(vmMonitoringOnly), HA response to virtual machine heartbeat failure.
		// If C(enable_ha) is set to C(no), then this value is ignored.

		ha_vm_monitoring?: string

		// Configure reservation based admission control policy.
		// C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.

		reservation_based_admission_control?: {...}

		// The name of the cluster to be managed.

		cluster_name: string

		// Whether to enable HA.

		enable_ha?: bool

		// Whether HA restarts virtual machines after a host fails.
		// If set to C(enabled), HA restarts virtual machines after a host fails.
		// If set to C(disabled), HA does not restart virtual machines after a host fails.
		// If C(enable_ha) is set to C(no), then this value is ignored.

		ha_host_monitoring?: string

		// The number of seconds for the window during which up to C(ha_vm_max_failures) resets can occur before automated responses stop.
		// Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.
		// Default specifies no failure window.

		ha_vm_max_failure_window?: int

		// The number of seconds for the virtual machine's heartbeats to stabilize after the virtual machine has been powered on.
		// Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.

		ha_vm_min_up_time?: int

		// Configure slot based admission control policy.
		// C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.

		slot_based_admission_control?: {...}

		// The name of the datacenter.

		datacenter: string

		// Configure dedicated failover hosts.
		// C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.

		failover_host_admission_control?: {...}

		// The number of seconds after which virtual machine is declared as failed if no heartbeat has been received.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.

		ha_vm_failure_interval?: int
	}
}

vmware_cluster_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cluster_info: {

		// Name of the cluster.
		// If set, information of this cluster will be returned.
		// This parameter is required, if C(datacenter) is not supplied.

		cluster_name?: string

		// Datacenter to search for cluster/s.
		// This parameter is required, if C(cluster_name) is not supplied.

		datacenter?: string

		// Tags related to cluster are shown if set to C(True).

		show_tag?: bool
	}
}

vmware_datastore_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_datastore_info: {

		// Cluster to search for datastores.
		// If set, information of datastores belonging this clusters will be returned.
		// This parameter is required, if C(datacenter) is not supplied.

		cluster?: string

		// Datacenter to search for datastores.
		// This parameter is required, if C(cluster) is not supplied.

		datacenter?: string

		// Gather mount information of NFS datastores.
		// Disabled per default because this slows down the execution if you have a lot of datastores.

		gather_nfs_mount_info?: bool

		// Gather mount information of VMFS datastores.
		// Disabled per default because this slows down the execution if you have a lot of datastores.

		gather_vmfs_mount_info?: bool

		// Name of the datastore to match.
		// If set, information of specific datastores are returned.

		name?: string
	}
}

vmware_guest_tools_wait :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_tools_wait: {

		// If multiple VMs match the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the VM  for which to wait until the tools become available, if known. This is VMware's unique identifier.
		// This is required, if C(name) or C(moid) is not supplied.

		uuid?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required only, if multiple VMs with same C(name) is found.
		// The folder should include the datacenter. ESX's datacenter is C(ha-datacenter).
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the VM for which to wait until the tools become available.
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string
	}
}

vmware_host_kernel_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_kernel_manager: {

		// Name of the kernel module to be configured.

		kernel_module_name: string

		// Specified configurations will be applied to the given module.
		// These values are specified in key=value pairs and separated by a space when there are multiple options.

		kernel_module_option: string

		// Name of the VMware cluster to work on.
		// All ESXi hosts in this cluster will be configured.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the ESXi host to work on.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string
	}
}

vmware_host_powermgmt_policy :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_powermgmt_policy: {

		// Name of the cluster from which all host systems will be used.
		// This is required parameter if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This is required parameter if C(cluster_name) is not specified.

		esxi_hostname?: string

		// Set the Power Management Policy of the host system.

		policy?: string
	}
}

vmware_host_ssl_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ssl_info: {

		// Name of the cluster.
		// SSL thumbprint information about all ESXi host system in the given cluster will be reported.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// SSL thumbprint information of this ESXi host system will be reported.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_vsan_health_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vsan_health_info: {

		// Name of the vSAN cluster.

		cluster_name: string

		// C(True) to return the result from cache directly instead of running the full health check.

		fetch_from_cache?: bool
	}
}

vmware_host_capability_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_capability_facts: {

		// Name of the cluster from all host systems to be used for facts gathering.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_host_package_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_package_info: {

		// Name of the cluster.
		// Package information about each ESXi server will be returned for given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Package information about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_local_user_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_user_manager: {

		// Indicate desired state of the user. If the user already exists when C(state=present), the user info is updated

		state?: string

		// Description for the user.

		local_user_description?: string

		// The local user name to be changed.

		local_user_name: string

		// The password to be set.

		local_user_password?: string
	}
}

vmware_tag :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_tag: {

		// The tag description.
		// This is required only if C(state) is set to C(present).
		// This parameter is ignored, when C(state) is set to C(absent).
		// Process of updating tag only allows description change.

		tag_description?: string

		// The name of tag to manage.

		tag_name: string

		// The unique ID generated by vCenter should be used to.
		// User can get this unique ID from facts module.

		category_id?: string

		// The state of tag.
		// If set to C(present) and tag does not exists, then tag is created.
		// If set to C(present) and tag exists, then tag is updated.
		// If set to C(absent) and tag exists, then tag is deleted.
		// If set to C(absent) and tag does not exists, no action is taken.

		state?: string
	}
}

vsphere_copy :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vsphere_copy: {

		// The datastore to push files to.

		datastore: string
		hostname?: string

		// The file to push to the datastore.

		path:  string
		port?: string

		// The file to push to vCenter.

		src: string

		// The timeout in seconds for the upload to the datastore.

		timeout?:  int
		username?: string

		// The datacenter on the vCenter server that holds the datastore.

		datacenter?: string
	}
}

vmware_cfg_backup :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cfg_backup: {

		// The destination where the ESXi configuration bundle will be saved. The I(dest) can be a folder or a file.
		// If I(dest) is a folder, the backup file will be saved in the folder with the default filename generated from the ESXi server.
		// If I(dest) is a file, the backup file will be saved with that filename. The file extension will always be .tgz.

		dest?: string

		// Name of ESXi server. This is required only if authentication against a vCenter is done.

		esxi_hostname?: string

		// The file containing the ESXi configuration that will be restored.

		src?: string

		// If C(saved), the .tgz backup bundle will be saved in I(dest).
		// If C(absent), the host configuration will be reset to default values.
		// If C(loaded), the backup file in I(src) will be loaded to the ESXi host rewriting the hosts settings.

		state?: string
	}
}

vmware_dvswitch_pvlans :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvswitch_pvlans: {

		// A list of VLAN IDs that should be configured as Primary PVLANs.
		// If C(primary_pvlans) isn't specified, all PVLANs will be deleted if present.
		// Each member of the list requires primary_pvlan_id (int) set.
		// The secondary promiscuous PVLAN will be created automatically.
		// If C(secondary_pvlans) isn't specified, the primary PVLANs and each secondary promiscuous PVLAN will be created.
		// Please see examples for more information.

		primary_pvlans?: [...]

		// A list of VLAN IDs that should be configured as Secondary PVLANs.
		// C(primary_pvlans) need to be specified to create any Secondary PVLAN.
		// If C(primary_pvlans) isn't specified, all PVLANs will be deleted if present.
		// Each member of the list requires primary_pvlan_id (int), secondary_pvlan_id (int), and pvlan_type (str) to be set.
		// The type of the secondary PVLAN can be isolated or community. The secondary promiscuous PVLAN will be created automatically.
		// Please see examples for more information.

		secondary_pvlans?: [...]

		// The name of the Distributed Switch.

		switch: string
	}
}

vmware_guest_file_operation :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_file_operation: {

		// Copy file to vm without requiring network.
		// Valid attributes are:
		//   src: file source absolute or relative
		//   dest: file destination, path must be exist
		//   overwrite: False or True (not required, default False)

		copy?: {...}

		// Create or delete a directory.
		// Can be used to create temp directory inside guest using mktemp operation.
		// mktemp sets variable C(dir) in the result with the name of the new directory.
		// mktemp operation option is added in version 2.8
		// Valid attributes are:
		//   operation (str): Valid values are: create, delete, mktemp
		//   path (str): directory path (required for create or remove)
		//   prefix (str): temporary directory prefix (required for mktemp)
		//   suffix (str): temporary directory suffix (required for mktemp)
		//   recurse (boolean): Not required, default (false)

		directory?: {...}

		// Get file from virtual machine without requiring network.
		// Valid attributes are:
		//   src: The file on the remote system to fetch. This I(must) be a file, not a directory
		//   dest: file destination on localhost, path must be exist

		fetch?: {...}

		// Name of the virtual machine to work with.

		vm_id: string

		// The VMware identification method by which the virtual machine will be identified.

		vm_id_type?: string

		// The cluster hosting the virtual machine.
		// If set, it will help to speed up virtual machine search.

		cluster?: string

		// Destination folder, absolute path to find an existing guest or create the new guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Used only if C(vm_id_type) is C(inventory_path).
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2
		//    folder: vm/folder2
		//    folder: folder2

		folder?: string

		// The password used to login-in to the virtual machine.

		vm_password: string

		// The user to login in to the virtual machine.

		vm_username: string

		// The datacenter hosting the virtual machine.
		// If set, it will help to speed up virtual machine search.

		datacenter?: string
	}
}

vmware_guest_snapshot :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_snapshot: {

		// If multiple VMs matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// Define an arbitrary description to attach to snapshot.

		description?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required parameter, if C(name) is supplied.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Name of the virtual machine to work with.
		// This is required parameter, if C(uuid) or C(moid) is not supplied.

		name?: string

		// Value to rename the existing snapshot to.

		new_snapshot_name?: string

		// If set to C(true) and state is set to C(absent), then entire snapshot subtree is set for removal.

		remove_children?: bool

		// Manage snapshot(s) attached to a specific virtual machine.
		// If set to C(present) and snapshot absent, then will create a new snapshot with the given name.
		// If set to C(present) and snapshot present, then no changes are made.
		// If set to C(absent) and snapshot present, then snapshot with the given name is removed.
		// If set to C(absent) and snapshot absent, then no changes are made.
		// If set to C(revert) and snapshot present, then virtual machine state is reverted to the given snapshot.
		// If set to C(revert) and snapshot absent, then no changes are made.
		// If set to C(remove_all) and snapshot(s) present, then all snapshot(s) will be removed.
		// If set to C(remove_all) and snapshot(s) absent, then no changes are made.

		state: string

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) or C(moid) parameter is not supplied.

		uuid?: string

		// If set to C(true), memory dump of virtual machine is also included in snapshot.
		// Note that memory snapshots take time and resources, this will take longer time to create.
		// If virtual machine does not provide capability to take memory snapshot, then this flag is set to C(false).

		memory_dump?: bool

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Value to change the description of an existing snapshot to.

		new_description?: string

		// Destination datacenter for the deploy operation.

		datacenter: string

		// If set to C(true) and virtual machine is powered on, it will quiesce the file system in virtual machine.
		// Note that VMware Tools are required for this flag.
		// If virtual machine is powered off or VMware Tools are not available, then this flag is set to C(false).
		// If virtual machine does not provide capability to take quiesce snapshot, then this flag is set to C(false).

		quiesce?: bool

		// Sets the snapshot name to manage.
		// This param is required only if state is not C(remove_all)

		snapshot_name?: string
	}
}

vmware_host_ntp_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ntp_info: {

		// ESXi hostname.
		// NTP config information about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Name of the cluster.
		// NTP config information about each ESXi server will be returned for the given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string
	}
}

vmware_host_snmp :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_snmp: {

		// List of SNMP community strings.

		community?: [...]

		// Source hardware events from IPMI sensors or CIM Indications.
		// The embedded SNMP agent receives hardware events either from IPMI sensors C(sensors) or CIM indications C(indications).

		hw_source?: string

		// Syslog logging level.

		log_level?: string

		// Send a test trap to validate the configuration.

		send_trap?: bool

		// Port used by the SNMP agent.

		snmp_port?: int

		// Enable, disable, or reset the SNMP agent.

		state?: string

		// A list of trap oids for traps not to be sent by agent, e.g. [ 1.3.6.1.4.1.6876.4.1.1.0, 1.3.6.1.4.1.6876.4.1.1.1 ]
		// Use value C(reset) to clear settings.

		trap_filter?: [...]

		// A list of trap targets.
		// You need to use C(hostname), C(port), and C(community) for each trap target.

		trap_targets?: [...]
	}
}

vmware_export_ovf :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_export_ovf: {

		// Destination folder, absolute path to find the specified guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// This parameter is case sensitive.
		// If multiple machines are found with same name, this parameter is used to identify uniqueness of the virtual machine. version_added 2.5
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine to export.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// Uuid of the virtual machine to export.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// Datacenter name of the virtual machine to export.
		// This parameter is case sensitive.

		datacenter?: string

		// The user defined timeout in minute of exporting file.
		// If the vmdk file is too large to export in 10 minutes, specify the value larger than 10, the maximum value is 60.

		download_timeout?: int

		// Absolute path to place the exported files on the server running this task, must have write permission.
		// If folder not exist will create it, also create a folder under this path named with VM name.

		export_dir: string

		// Export an ISO image of the media mounted on the CD/DVD Drive within the virtual machine.

		export_with_images?: bool
	}
}

vmware_portgroup :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_portgroup: {

		// List of name of host or hosts on which portgroup needs to be added.
		// This option is required if C(cluster_name) is not specified.

		hosts?: [...]

		// Portgroup name to add.

		portgroup: string

		// Dictionary which configures traffic shaping for the switch.
		// Valid attributes are:
		// - C(enabled) (bool): Status of Traffic Shaping Policy. (default: None)
		// - C(average_bandwidth) (int): Average bandwidth (kbit/s). (default: None)
		// - C(peak_bandwidth) (int): Peak bandwidth (kbit/s). (default: None)
		// - C(burst_size) (int): Burst size (KB). (default: None)

		traffic_shaping?: {...}

		// vSwitch to modify.

		switch: string

		// Dictionary which configures the different teaming values for portgroup.
		// Valid attributes are:
		// - C(load_balancing) (string): Network adapter teaming policy. C(load_balance_policy) is also alias to this option. (default: loadbalance_srcid)
		//    - choices: [ loadbalance_ip, loadbalance_srcmac, loadbalance_srcid, failover_explicit ]
		// - C(network_failure_detection) (string): Network failure detection. (default: link_status_only)
		//    - choices: [ link_status_only, beacon_probing ]
		// - C(notify_switches) (bool): Indicate whether or not to notify the physical switch if a link fails. (default: None)
		// - C(failback) (bool): Indicate whether or not to use a failback when restoring links. (default: None)
		// - C(active_adapters) (list): List of active adapters used for load balancing.
		// - C(standby_adapters) (list): List of standby adapters used for failover.
		// - All vmnics are used as active adapters if C(active_adapters) and C(standby_adapters) are not defined.
		// - C(inbound_policy) (bool): Indicate whether or not the teaming policy is applied to inbound frames as well. Deprecated. (default: False)
		// - C(rolling_order) (bool): Indicate whether or not to use a rolling policy when restoring links. Deprecated. (default: False)

		teaming?: {...}

		// VLAN ID to assign to portgroup.
		// Set to 0 (no VLAN tagging) by default.

		vlan_id?: int

		// Name of cluster name for host membership.
		// Portgroup will be created on all hosts of the given cluster.
		// This option is required if C(hosts) is not specified.

		cluster_name?: string

		// Network policy specifies layer 2 security settings for a portgroup such as promiscuous mode, where guest adapter listens to all the packets, MAC address changes and forged transmits.
		// Dict which configures the different security values for portgroup.
		// Valid attributes are:
		// - C(promiscuous_mode) (bool): indicates whether promiscuous mode is allowed. (default: None)
		// - C(forged_transmits) (bool): indicates whether forged transmits are allowed. (default: None)
		// - C(mac_changes) (bool): indicates whether mac changes are allowed. (default: None)

		security?: {...}

		// Determines if the portgroup should be present or not.

		state?: string
	}
}

vmware_host_feature_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_feature_facts: {

		// Name of the cluster from all host systems to be used for facts gathering.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vcenter_extension_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vcenter_extension_facts: {
	}
}

vmware_category :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_category: {

		// The name of category to manage.

		category_name: string

		// The new name for an existing category.
		// This value is used while updating an existing category.

		new_category_name?: string

		// The state of category.
		// If set to C(present) and category does not exists, then category is created.
		// If set to C(present) and category exists, then category is updated.
		// If set to C(absent) and category exists, then category is deleted.
		// If set to C(absent) and category does not exists, no action is taken.
		// Process of updating category only allows name, description change.

		state?: string

		// The category cardinality.
		// This parameter is ignored, when updating existing category.

		category_cardinality?: string

		// The category description.
		// This is required only if C(state) is set to C(present).
		// This parameter is ignored, when C(state) is set to C(absent).

		category_description?: string
	}
}

vmware_dns_config :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dns_config: {

		// The hostname that an ESXi host should be changed to.

		change_hostname_to: string

		// The DNS servers that the host should be configured to use.

		dns_servers: [...]

		// The domain the ESXi host should be apart of.

		domainname: string
	}
}

vmware_dvswitch :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvswitch: {

		// Description of the Distributed Switch.

		description?: string

		// The version of the Distributed Switch to create.
		// Can be 6.0.0, 5.5.0, 5.1.0, 5.0.0 with a vCenter running vSphere 6.0 and 6.5.
		// Can be 6.6.0, 6.5.0, 6.0.0 with a vCenter running vSphere 6.7.
		// The version must match the version of the ESXi hosts you want to connect.
		// The version of the vCenter server is used if not specified.
		// Required only if C(state) is set to C(present).

		switch_version?: string

		// The name of the distribute vSwitch to create or remove.

		switch_name: string

		// Dictionary which configures administrator contact name and description for the Distributed Switch.
		// Valid attributes are:
		// - C(name) (str): Administrator name.
		// - C(description) (str): Description or other details.

		contact?: {...}

		// Link discovery protocol between Cisco and Link Layer discovery.
		// Required parameter for C(state) both C(present) and C(absent), before Ansible 2.6 version.
		// Required only if C(state) is set to C(present), for Ansible 2.6 and onwards.
		// C(cdp): Use Cisco Discovery Protocol (CDP).
		// C(lldp): Use Link Layer Discovery Protocol (LLDP).
		// C(disabled): Do not use a discovery protocol.

		discovery_proto?: string

		// Dictionary which configures Health Check for the Distributed Switch.
		// Valid attributes are:
		// - C(vlan_mtu) (bool): VLAN and MTU health check. (default: False)
		// - C(teaming_failover) (bool): Teaming and failover health check. (default: False)
		// - C(vlan_mtu_interval) (int): VLAN and MTU health check interval (minutes). (default: 0)
		// - The default for C(vlan_mtu_interval) is 1 in the vSphere Client if the VLAN and MTU health check is enabled.
		// - C(teaming_failover_interval) (int): Teaming and failover health check interval (minutes). (default: 0)
		// - The default for C(teaming_failover_interval) is 1 in the vSphere Client if the Teaming and failover health check is enabled.

		health_check?: {...}

		// The switch maximum transmission unit.
		// Required parameter for C(state) both C(present) and C(absent), before Ansible 2.6 version.
		// Required only if C(state) is set to C(present), for Ansible 2.6 and onwards.
		// Accepts value between 1280 to 9000 (both inclusive).

		mtu?: int

		// Select the discovery operation.
		// Required parameter for C(state) both C(present) and C(absent), before Ansible 2.6 version.
		// Required only if C(state) is set to C(present), for Ansible 2.6 and onwards.

		discovery_operation?: string

		// Quantity of uplink per ESXi host added to the Distributed Switch.
		// The uplink quantity can be increased or decreased, but a decrease will only be successfull if the uplink isn't used by a portgroup.
		// Required parameter for C(state) both C(present) and C(absent), before Ansible 2.6 version.
		// Required only if C(state) is set to C(present), for Ansible 2.6 and onwards.

		uplink_quantity?: int

		// The prefix used for the naming of the uplinks.
		// Only valid if the Distributed Switch will be created. Not used if the Distributed Switch is already present.
		// Uplinks are created as Uplink 1, Uplink 2, etc. pp. by default.

		uplink_prefix?: string

		// The name of the datacenter that will contain the Distributed Switch.
		// This parameter is optional, if C(folder) is provided.
		// Mutually exclusive with C(folder) parameter.

		datacenter_name?: string

		// Destination folder, absolute path to place dvswitch in.
		// The folder should include the datacenter.
		// This parameter is case sensitive.
		// This parameter is optional, if C(datacenter) is provided.
		// Examples:
		//    folder: /datacenter1/network
		//    folder: datacenter1/network
		//    folder: /datacenter1/network/folder1
		//    folder: datacenter1/network/folder1
		//    folder: /folder1/datacenter1/network
		//    folder: folder1/datacenter1/network
		//    folder: /folder1/datacenter1/network/folder2

		folder?: string

		// The multicast filtering mode.
		// C(basic) mode: multicast traffic for virtual machines is forwarded according to the destination MAC address of the multicast group.
		// C(snooping) mode: the Distributed Switch provides IGMP and MLD snooping according to RFC 4541.

		multicast_filtering_mode?: string

		// If set to C(present) and the Distributed Switch doesn't exists then the Distributed Switch will be created.
		// If set to C(absent) and the Distributed Switch exists then the Distributed Switch will be deleted.

		state?: string
	}
}

vmware_dvswitch_lacp :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvswitch_lacp: {

		// The name of the Distributed Switch to manage.

		switch: string

		// Can only be used if C(lacp_support) is set to C(enhanced).
		// The following parameters are required:
		// - C(name) (string): Name of the LAG.
		// - C(uplink_number) (int): Number of uplinks. Can 1 to 30.
		// - C(mode) (string): The negotiating state of the uplinks/ports.
		//    - choices: [ active, passive ]
		// - C(load_balancing_mode) (string): Load balancing algorithm.
		//    - Valid attributes are:
		//    - srcTcpUdpPort: Source TCP/UDP port number.
		//    - srcDestIpTcpUdpPortVlan: Source and destination IP, source and destination TCP/UDP port number and VLAN.
		//    - srcIpVlan: Source IP and VLAN.
		//    - srcDestTcpUdpPort: Source and destination TCP/UDP port number.
		//    - srcMac: Source MAC address.
		//    - destIp: Destination IP.
		//    - destMac: Destination MAC address.
		//    - vlan: VLAN only.
		//    - srcDestIp: Source and Destination IP.
		//    - srcIpTcpUdpPortVlan: Source IP, TCP/UDP port number and VLAN.
		//    - srcDestIpTcpUdpPort: Source and destination IP and TCP/UDP port number.
		//    - srcDestMac: Source and destination MAC address.
		//    - destIpTcpUdpPort: Destination IP and TCP/UDP port number.
		//    - srcPortId: Source Virtual Port Id.
		//    - srcIp: Source IP.
		//    - srcIpTcpUdpPort: Source IP and TCP/UDP port number.
		//    - destIpTcpUdpPortVlan: Destination IP, TCP/UDP port number and VLAN.
		//    - destTcpUdpPort: Destination TCP/UDP port number.
		//    - destIpVlan: Destination IP and VLAN.
		//    - srcDestIpVlan: Source and destination IP and VLAN.
		//    - The default load balancing mode in the vSphere Client is srcDestIpTcpUdpPortVlan.
		// Please see examples for more information.

		link_aggregation_groups?: [...]

		// The LACP support mode.
		// C(basic): One Link Aggregation Control Protocol group in the switch (singleLag).
		// C(enhanced): Multiple Link Aggregation Control Protocol groups in the switch (multipleLag).

		support_mode?: string
	}
}

vmware_guest_network :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_network: {

		// The name of cluster where the virtual machine will run.
		// This is a required parameter, if C(esxi_hostname) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		cluster?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to gather info if known, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// The ESXi hostname where the virtual machine will run.
		// This is a required parameter, if C(cluster) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		esxi_hostname?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is a required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// If set to C(True), return settings of all network adapters, other parameters are ignored.
		// If set to C(False), will add, reconfigure or remove network adapters according to the parameters in C(networks).

		gather_network_info?: bool

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// A list of network adapters.
		// C(mac) or C(label) or C(device_type) is required to reconfigure or remove an existing network adapter.
		// If there are multiple network adapters with the same C(device_type), you should set C(label) or C(mac) to match one of them, or will apply changes on all network adapters with the C(device_type) specified.
		// C(mac), C(label), C(device_type) is the order of precedence from greatest to least if all set.
		// Valid attributes are:
		//  - C(mac) (string): MAC address of the existing network adapter to be reconfigured or removed.
		//  - C(label) (string): Label of the existing network adapter to be reconfigured or removed, e.g., "Network adapter 1".
		//  - C(device_type) (string): Valid virtual network device types are: C(e1000), C(e1000e), C(pcnet32), C(vmxnet2), C(vmxnet3) (default), C(sriov). Used to add new network adapter, reconfigure or remove the existing network adapter with this type. If C(mac) and C(label) not specified or not find network adapter by C(mac) or C(label) will use this parameter.
		//  - C(name) (string): Name of the portgroup or distributed virtual portgroup for this interface. When specifying distributed virtual portgroup make sure given C(esxi_hostname) or C(cluster) is associated with it.
		//  - C(vlan) (integer): VLAN number for this interface.
		//  - C(dvswitch_name) (string): Name of the distributed vSwitch. This value is required if multiple distributed portgroups exists with the same name.
		//  - C(state) (string): State of the network adapter.
		//    If set to C(present), then will do reconfiguration for the specified network adapter.
		//    If set to C(new), then will add the specified network adapter.
		//    If set to C(absent), then will remove this network adapter.
		//  - C(manual_mac) (string): Manual specified MAC address of the network adapter when creating, or reconfiguring. If not specified when creating new network adapter, mac address will be generated automatically. When reconfigure MAC address, VM should be in powered off state.
		//  - C(connected) (bool): Indicates that virtual network adapter connects to the associated virtual machine.
		//  - C(start_connected) (bool): Indicates that virtual network adapter starts with associated virtual machine powers on.
		//  - C(directpath_io) (bool): If set, Universal Pass-Through (UPT or DirectPath I/O) will be enabled on the network adapter. UPT is only compatible for Vmxnet3 adapter.

		networks?: [...]
	}
}

vmware_host_active_directory :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_active_directory: {

		// Whether the ESXi host is joined to an AD domain or not.

		ad_state?: string

		// Username for AD domain join.

		ad_user?: string

		// Name of the cluster from which all host systems will be used.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string

		// AD Domain to join.

		ad_domain?: string

		// Password for AD domain join.

		ad_password?: string
	}
}

vmware_resource_pool_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_resource_pool_info: {
	}
}

vmware_vm_vm_drs_rule :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_vm_drs_rule: {

		// If set to C(True), the DRS rule will be mandatory.
		// Effective only if C(state) is set to C(present).

		mandatory?: bool

		// If set to C(present), then the DRS rule is created if not present.
		// If set to C(present), then the DRS rule is already present, it updates to the given configurations.
		// If set to C(absent), then the DRS rule is deleted if present.

		state?: string

		// List of virtual machines name for which DRS rule needs to be applied.
		// Required if C(state) is set to C(present).

		vms?: [...]

		// If set to C(True), the DRS rule will be an Affinity rule.
		// If set to C(False), the DRS rule will be an Anti-Affinity rule.
		// Effective only if C(state) is set to C(present).

		affinity_rule?: bool

		// Desired cluster name where virtual machines are present for the DRS rule.

		cluster_name: string

		// The name of the DRS rule to manage.

		drs_rule_name: string

		// If set to C(True), the DRS rule will be enabled.
		// Effective only if C(state) is set to C(present).

		enabled?: bool
	}
}

vmware_datastore_cluster :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_datastore_cluster: {

		// The name of the datacenter.
		// You must specify either a C(datacenter_name) or a C(folder).
		// Mutually exclusive with C(folder) parameter.

		datacenter_name?: string

		// The name of the datastore cluster.

		datastore_cluster_name: string

		// Destination folder, absolute path to place datastore cluster in.
		// The folder should include the datacenter.
		// This parameter is case sensitive.
		// You must specify either a C(folder) or a C(datacenter_name).
		// Examples:
		//    folder: /datacenter1/datastore
		//    folder: datacenter1/datastore
		//    folder: /datacenter1/datastore/folder1
		//    folder: datacenter1/datastore/folder1
		//    folder: /folder1/datacenter1/datastore
		//    folder: folder1/datacenter1/datastore
		//    folder: /folder1/datacenter1/datastore/folder2

		folder?: string

		// If the datastore cluster should be present or absent.

		state?: string
	}
}

vmware_drs_rule_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_drs_rule_facts: {

		// Name of the cluster.
		// DRS facts for the given cluster will be returned.
		// This is required parameter if C(datacenter) parameter is not provided.

		cluster_name?: string

		// Name of the datacenter.
		// DRS facts for all the clusters from the given datacenter will be returned.
		// This is required parameter if C(cluster_name) parameter is not provided.

		datacenter?: string
	}
}

vmware_host_ssl_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ssl_facts: {

		// Name of the cluster.
		// SSL thumbprint information about all ESXi host system in the given cluster will be reported.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// SSL thumbprint information of this ESXi host system will be reported.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vca_nat :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vca_nat: {

		// If set to true, it will delete all rules in the gateway that are not given as parameter to this module.

		purge_rules?: bool

		// A list of rules to be added to the gateway, Please see examples on valid entries

		nat_rules: string
	}
}

vmware_cluster_drs :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cluster_drs: {

		// Specifies the cluster-wide default DRS behavior for virtual machines.
		// If set to C(partiallyAutomated), vCenter generates recommendations for virtual machine migration and for the placement with a host, then automatically implements placement recommendations at power on.
		// If set to C(manual), then vCenter generates recommendations for virtual machine migration and for the placement with a host, but does not implement the recommendations automatically.
		// If set to C(fullyAutomated), then vCenter automates both the migration of virtual machines and their placement with a host at power on.

		drs_default_vm_behavior?: string

		// Whether DRS Behavior overrides for individual virtual machines are enabled.
		// If set to C(True), overrides C(drs_default_vm_behavior).

		drs_enable_vm_behavior_overrides?: bool

		// Threshold for generated ClusterRecommendations.

		drs_vmotion_rate?: int

		// Whether to enable DRS.

		enable_drs?: bool

		// The name of the cluster to be managed.

		cluster_name: string

		// The name of the datacenter.

		datacenter: string
	}
}

vmware_host_dns :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_dns: {

		// The VMkernel network adapter to obtain DNS settings from.
		// Needs to get its IP through DHCP, a static network configuration combined with a dynamic DNS configuration doesn't work.
		// The parameter is only required in case of C(type) is set to C(dhcp).

		device?: string

		// Name of the host system to work with.
		// This parameter is required if C(cluster_name) is not specified and you connect to a vCenter.
		// Cannot be used when you connect directly to an ESXi host.

		esxi_hostname?: string

		// The hostname to be used for the ESXi host.
		// Cannot be used when configuring a complete cluster.

		host_name?: string

		// A list of domains to be searched through by the resolver.

		search_domains?: [...]

		// Name of the cluster from which all host systems will be used.
		// This parameter is required if C(esxi_hostname) is not specified and you connect to a vCenter.
		// Cannot be used when you connect directly to an ESXi host.

		cluster_name?: string

		// A list of DNS servers to be used.
		// The order of the DNS servers is important as they are used consecutively in order.

		dns_servers?: [...]

		// The domain name to be used for the the ESXi host.

		domain?: string

		// Type of IP assignment. Either C(dhcp) or C(static).
		// A VMkernel adapter needs to be set to DHCP if C(type) is set to C(dhcp).

		type: string

		// Verbose output of the DNS server configuration change.
		// Explains if an DNS server was added, removed, or if the DNS server sequence was changed.

		verbose?: bool
	}
}

vmware_host_vmnic_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_vmnic_facts: {

		// Gather facts about general capabilities (Auto negotiation, Wake On LAN, and Network I/O Control).

		capabilities?: bool

		// Name of the cluster from which all host systems will be used.
		// Vmnic facts about each ESXi server will be returned for the given cluster.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Gather facts about DirectPath I/O capabilities and configuration.

		directpath_io?: bool

		// Name of the host system to work with.
		// Vmnic facts about this ESXi server will be returned.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string

		// Gather facts about SR-IOV capabilities and configuration.

		sriov?: bool
	}
}

vcenter_extension_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vcenter_extension_info: {
	}
}

vmware_guest_screenshot :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_screenshot: {

		// The name of cluster where the virtual machine is running.
		// This is a required parameter, if C(esxi_hostname) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		cluster?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter?: string

		// The ESXi hostname where the virtual machine is running.
		// This is a required parameter, if C(cluster) is not set.
		// C(esxi_hostname) and C(cluster) are mutually exclusive parameters.

		esxi_hostname?: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is a required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// If C(local_path) is not set, the created screenshot file will be kept in the directory of the virtual machine on ESXi host. If C(local_path) is set to a valid path on local machine, then the screenshot file will be downloaded from ESXi host to the local directory.
		// If not download screenshot file to local machine, you can open it through the returned file URL in screenshot facts manually.

		local_path?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// UUID of the instance to gather facts if known, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string
	}
}

vmware_host_service_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_service_info: {

		// Name of the cluster.
		// Service information about each ESXi server will be returned for given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Service information about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_vswitch :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vswitch: {

		// vSwitch name to add.
		// Alias C(switch) is added in version 2.4.

		switch: string

		// Manage the vSwitch using this ESXi host system.

		esxi_hostname?: string

		// MTU to configure on vSwitch.

		mtu?: int

		// A list of vmnic names or vmnic name to attach to vSwitch.
		// Alias C(nics) is added in version 2.4.

		nics?: [...]

		// Number of port to configure on vSwitch.

		number_of_ports?: int

		// Add or remove the switch.

		state?: string
	}
}

vmware_cluster_vsan :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cluster_vsan: {

		// The name of the cluster to be managed.

		cluster_name: string

		// The name of the datacenter.

		datacenter: string

		// Whether to enable vSAN.

		enable_vsan?: bool

		// Whether the VSAN service is configured to automatically claim local storage on VSAN-enabled hosts in the cluster.

		vsan_auto_claim_storage?: bool
	}
}

vmware_dvs_host :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvs_host: {

		// If the host should be present or absent attached to the vSwitch.

		state: string

		// The name of the Distributed vSwitch.

		switch_name: string

		// List of key,value dictionaries for the Vendor Specific Configuration.
		// Element attributes are:
		// - C(key) (str): Key of setting. (default: None)
		// - C(value) (str): Value of setting. (default: None)

		vendor_specific_config?: [...]

		// The ESXi hosts vmnics to use with the Distributed vSwitch.

		vmnics: [...]

		// The ESXi hostname.

		esxi_hostname: string
	}
}

vmware_object_role_permission :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_object_role_permission: {

		// The role to be assigned permission.

		role: string

		// Indicate desired state of the object's permission.
		// When C(state=present), the permission will be added if it doesn't already exist.
		// When C(state=absent), the permission is removed if it exists.

		state?: string

		// The group to be assigned permission.
		// Required if C(principal) is not specified.

		group?: string

		// The object name to assigned permission.

		object_name: string

		// The object type being targeted.

		object_type?: string

		// The user to be assigned permission.
		// Required if C(group) is not specified.

		principal?: string

		// Should the permissions be recursively applied.

		recursive?: bool
	}
}

vmware_resource_pool :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_resource_pool: {

		// Memory shares are used in case of resource contention.

		mem_shares?: string

		// Name of the cluster to add the host.

		cluster: string

		// The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.
		// The default value -1 indicates no limit.

		cpu_limit?: int

		// Name of the datacenter to add the host.

		datacenter: string

		// The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.
		// The default value -1 indicates no limit.

		mem_limit?: int

		// Amount of resource that is guaranteed available to the virtual machine or resource pool.

		mem_reservation?: int

		// Resource pool name to manage.

		resource_pool: string

		// Add or remove the resource pool

		state?: string

		// In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.

		cpu_expandable_reservations?: bool

		// Amount of resource that is guaranteed available to the virtual machine or resource pool.

		cpu_reservation?: int

		// Memory shares are used in case of resource contention.

		cpu_shares?: string

		// In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.

		mem_expandable_reservations?: bool
	}
}

vmware_vm_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_info: {

		// Specify a folder location of VMs to gather information from.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Attributes related to VM guest shown in information only when this is set C(true).

		show_attribute?: bool

		// Tags related to virtual machine are shown if set to C(True).

		show_tag?: bool

		// If set to C(vm), then information are gathered for virtual machines only.
		// If set to C(template), then information are gathered for virtual machine templates only.
		// If set to C(all), then information are gathered for all virtual machines and virtual machine templates.

		vm_type?: string
	}
}

vca_vapp :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vca_vapp: {

		// The authentication host to be used when service type  is vcd.

		host?: string

		// The instance id in a vchs environment to be used for creating the vapp

		instance_id?: string

		// Configures the state of the vApp.

		state?: string

		// The vCloud Air username to use during authentication

		username?: string

		// Specifies an operation to be performed on the vApp.

		operation?: string

		// The type of service we are authenticating against

		service_type?: string

		// The name of the vApp template to use to create the vApp instance.  If the I(state) is not `absent` then the I(template_name) value must be provided.  The I(template_name) must be previously uploaded to the catalog specified by I(catalog_name)

		template_name?: string

		// The name of the virtual data center (VDC) where the vm should be created or contains the vAPP.

		vdc_name?: string

		// The api version to be used with the vca

		api_version?: string

		// The org to login to for creating vapp, mostly set when the service_type is vdc.

		org?: string

		// The number of vCPUs to configure for the VM in the vApp.   If the I(vm_name) argument is provided, then this becomes a per VM setting otherwise it is applied to all VMs in the vApp.

		vm_cpus?: string

		// The name of the virtual machine instance in the vApp to manage.

		vm_name?: string

		// Configures the mode of the network connection.

		network_mode?: string

		// The name of the network that should be attached to the virtual machine in the vApp.  The virtual network specified must already be created in the vCloud Air VDC.  If the I(state) is not 'absent' then the I(network_name) argument must be provided.

		network_name?: string

		// The vCloud Air password to use during authentication

		password?: string

		// The name of the vCloud Air vApp instance

		vapp_name: string

		// The amount of memory in MB to allocate to VMs in the vApp.  If the I(vm_name) argument is provided, then this becomes a per VM setting otherwise it is applied to all VMs in the vApp.

		vm_memory?: string
	}
}

vmware_content_library_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_content_library_info: {

		library_id?: string

		// content library id for which details needs to be fetched.
	}
}

vmware_guest_snapshot_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_snapshot_info: {

		// Name of the datacenter.

		datacenter: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required only, if multiple virtual machines with same name are found on given vCenter.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the VM to work with.
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) or C(moid) parameter is not supplied.
		// The C(folder) is ignored, if C(uuid) is provided.

		uuid?: string
	}
}

vmware_host_dns_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_dns_facts: {

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vcenter_extension :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vcenter_extension: {

		// Required for C(state=present). Administrator email to use for extension.

		email?: string

		// The extension key of the extension to install or uninstall.

		extension_key: string

		// Add or remove vCenter Extension.

		state?: string

		// The version of the extension you are installing or uninstalling.

		version: string

		// Required for C(state=present). The name of the company that makes the extension.

		company?: string

		// Required for C(state=present). A short description of the extension.

		description?: string

		// Required for C(state=present). The name of the extension you are installing.

		name?: string

		// Required for C(state=present). Type of server being used to install the extension (SOAP, REST, HTTP, etc.).

		server_type?: string

		// Required for C(state=present). SSL thumbprint of the extension hosting server.

		ssl_thumbprint?: string

		// Required for C(state=present). Link to server hosting extension zip file to install.

		url?: string

		// Show the extension in solution manager inside vCenter.

		visible?: bool

		// Required for C(state=present). Type of client the extension is (win32, .net, linux, etc.).

		client_type?: string
	}
}

vmware_guest_register_operation :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_register_operation: {

		// The ESXi hostname where the virtual machine will run.
		// This parameter is case sensitive.

		esxi_hostname?: string

		// Description folder, absolute path of the target folder.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// This parameter is case sensitive.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1

		folder?: string

		// Specify a resource pool name to register VM.
		// This parameter is case sensitive.
		// Resource pool should be child of the selected host parent.

		resource_pool?: string

		// Specify the state the virtual machine should be in.
		// if set to C(present), register VM in inventory.
		// if set to C(absent), unregister VM from inventory.

		state?: string

		// Specify a cluster name to register VM.

		cluster?: string

		// Destination datacenter for the register/unregister operation.
		// This parameter is case sensitive.

		datacenter?: string

		// Whether to register VM as a template.

		template?: bool

		// UUID of the virtual machine to manage if known, this is VMware's unique identifier.
		// If virtual machine does not exists, then this parameter is ignored.

		uuid?: string

		// Specify VM name to be registered in the inventory.

		name: string

		// Specify the path of vmx file.
		// Examples:
		//     [datastore1] vm/vm.vmx
		//     [datastore1] vm/vm.vmtx

		path?: string
	}
}

vmware_local_user_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_user_info: {
	}
}

vmware_vspan_session :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vspan_session: {

		// Destination port that received the mirrored packets. Also any port designated in the value of this property can not match the source port in any of the Distributed Port Mirroring session.

		destination_port?: string

		// With this parameter it is possible, to add a NIC of a VM to a port mirroring session.
		// Valid attributes are:
		// - C(name) (str): Name of the VM
		// - C(nic_label) (bool): Label of the Network Interface Card to use.

		destination_vm?: {...}

		// Sampling rate of the session. If its value is n, one of every n packets is mirrored. Valid values are between 1 to 65535, and default value is 1.

		sampling_rate?: int

		// With this parameter it is possible, to add a NIC of a VM to a port mirroring session.
		// Valid attributes are:
		// - C(name) (str): Name of the VM
		// - C(nic_label) (bool): Label of the Network Interface Card to use.

		source_vm_received?: {...}

		// An integer that describes how much of each frame to mirror. If unset, all of the frame would be mirrored. Setting this property to a smaller value is useful when the consumer will look only at the headers. The value cannot be less than 60.

		mirrored_packet_length?: int

		// Whether or not destination ports can send and receive "normal" traffic. Setting this to false will make mirror ports be used solely for mirroring and not double as normal access ports.

		normal_traffic_allowed?: bool

		// Select the mirroring type.
		// - C(encapsulatedRemoteMirrorSource) (str): In encapsulatedRemoteMirrorSource session, Distributed Ports can be used as source entities, and Ip address can be used as destination entities.
		// - C(remoteMirrorDest) (str): In remoteMirrorDest session, vlan Ids can be used as source entities, and Distributed Ports can be used as destination entities.
		// - C(remoteMirrorSource) (str): In remoteMirrorSource session, Distributed Ports can be used as source entities, and uplink ports name can be used as destination entities.
		// - C(dvPortMirror) (str): In dvPortMirror session, Distributed Ports can be used as both source and destination entities.

		session_type?: string

		// With this parameter it is possible, to add a NIC of a VM to a port mirroring session.
		// Valid attributes are:
		// - C(name) (str): Name of the VM
		// - C(nic_label) (bool): Label of the Network Interface Card to use.

		source_vm_transmitted?: {...}

		// Create or remove the session.

		state: string

		// Whether to strip the original VLAN tag. if false, the original VLAN tag will be preserved on the mirrored traffic. If encapsulationVlanId has been set and this property is false, the frames will be double tagged with the original VLAN ID as the inner tag.

		strip_original_vlan?: bool

		// The description for the session.

		description?: string

		// VLAN ID used to encapsulate the mirrored traffic.

		encapsulation_vlan_id?: int

		// Source port for which received packets are mirrored.

		source_port_received?: string

		// Source port for which transmitted packets are mirrored.

		source_port_transmitted?: string

		// Whether the session is enabled.

		enabled?: bool

		// Name of the session.

		name: string

		// The name of the distributed vSwitch on which to add or remove the mirroring session.

		switch: string
	}
}

vmware_guest_video :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_video: {

		// The value of 3D Memory must be power of 2 and valid value is from 32 MB to 2048 MB.

		memory_3D_mb?: int

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Valid total MB of video memory range of virtual machine is from 1.172 MB to 256 MB on ESXi 6.7U1, from 1.172 MB to 128 MB on ESXi 6.7 and previous versions.
		// For specific guest OS, supported minimum and maximum video memory are different, please be careful on setting this.

		video_memory_mb?: float

		// The datacenter name to which virtual machine belongs to.
		// This parameter is case sensitive.

		datacenter?: string

		// The number of display. Valid value from 1 to 10. The maximum display number is 4 on vCenter 6.0, 6.5 web UI.

		display_number?: int

		// Enable 3D for guest operating systems on which VMware supports 3D.

		enable_3D?: bool

		// Destination folder, absolute or relative path to find an existing guest.
		// This is a required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// If set to True, return settings of the video card, other attributes are ignored.
		// If set to False, will do reconfiguration and return video card settings.

		gather_video_facts?: bool

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// If set to C(automatic), selects the appropriate option (software or hardware) for this virtual machine automatically.
		// If set to C(software), uses normal CPU processing for 3D calculations.
		// If set to C(hardware), requires graphics hardware (GPU) for faster 3D calculations.

		renderer_3D?: string

		// If set to True, applies common video settings to the guest operating system, attributes C(display_number) and C(video_memory_mb) are ignored.
		// If set to False, the number of display and the total video memory will be reconfigured using C(display_number) and C(video_memory_mb).

		use_auto_detect?: bool

		// UUID of the instance to gather facts if known, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string
	}
}

vmware_host_ipv6 :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ipv6: {

		// Name of the cluster from which all host systems will be used.
		// This is required parameter if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This is required parameter if C(cluster_name) is not specified.

		esxi_hostname?: string

		// Enable or disable IPv6 support.
		// You need to reboot the ESXi host if you change the configuration.

		state?: string
	}
}

vmware_vm_shell :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_shell: {

		// The cluster hosting the virtual machine.
		// If set, it will help to speed up virtual machine search.

		cluster?: string

		// The password used to login-in to the virtual machine.

		vm_password: string

		// The absolute path to the program to start.
		// On Linux, shell is executed via bash.

		vm_shell: string

		// The current working directory of the application from which it will be run.

		vm_shell_cwd?: string

		// Comma separated list of environment variable, specified in the guest OS notation.

		vm_shell_env?: [...]

		// If set to C(True), module will wait for process to complete in the given virtual machine.

		wait_for_process?: bool

		// The datacenter hosting the virtual machine.
		// If set, it will help to speed up virtual machine search.

		datacenter?: string

		// Destination folder, absolute or relative path to find an existing guest or create the new guest.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter.
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Timeout in seconds.
		// If set to positive integers, then C(wait_for_process) will honor this parameter and will exit after this timeout.

		timeout?: int

		// Name of the virtual machine to work with.

		vm_id: string

		// The VMware identification method by which the virtual machine will be identified.

		vm_id_type?: string

		// The argument to the program.
		// The characters which must be escaped to the shell also be escaped on the command line provided.

		vm_shell_args?: string

		// The user to login-in to the virtual machine.

		vm_username: string
	}
}

vmware_vm_vss_dvs_migrate :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_vss_dvs_migrate: {

		// Name of the portgroup to migrate to the virtual machine to

		dvportgroup_name: string

		// Name of the virtual machine to migrate to a dvSwitch

		vm_name: string
	}
}

vmware_dvs_portgroup_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvs_portgroup_facts: {

		// Show or hide vlan information of the DVS portgroup.

		show_vlan_info?: bool

		// Name of the datacenter.

		datacenter: string

		// Name of a dvswitch to look for.

		dvswitch?: string

		// Show or hide network policies of DVS portgroup.

		show_network_policy?: bool

		// Show or hide port policies of DVS portgroup.

		show_port_policy?: bool

		// Show or hide teaming policies of DVS portgroup.

		show_teaming_policy?: bool
	}
}

vmware_evc_mode :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_evc_mode: {

		// The name of the cluster to enable or disable EVC mode on.

		cluster_name: string

		// The name of the datacenter the cluster belongs to that you want to enable or disable EVC mode on.

		datacenter_name: string

		// Required for C(state=present).
		// The EVC mode to enable or disable on the cluster. (intel-broadwell, intel-nehalem, intel-merom, etc.).

		evc_mode: string

		// Add or remove EVC mode.

		state?: string
	}
}

vmware_guest_boot_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_boot_facts: {

		// Name of the VM to work with.
		// This is required if C(uuid) or C(moid) parameter is not supplied.

		name?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) or C(moid) parameter is not supplied.

		uuid?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string
	}
}

vmware_host_datastore :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_datastore: {

		// Type of the datastore to configure (nfs/nfs41/vmfs).

		datastore_type: string

		// Resource path on NFS host.
		// Required if datastore type is set to C(nfs)/C(nfs41) and state is set to C(present), else unused.

		nfs_path?: string

		// ReadOnly or ReadWrite mount.
		// Unused if datastore type is not set to C(nfs)/C(nfs41) and state is not set to C(present).

		nfs_ro?: bool

		// Name of the datacenter to add the datastore.
		// The datacenter isn't used by the API to create a datastore.
		// Will be removed in 2.11.

		datacenter_name?: string

		// Name of the datastore to add/remove.

		datastore_name: string

		// ESXi hostname to manage the datastore.
		// Required when used with a vcenter

		esxi_hostname?: string

		// NFS host serving nfs datastore.
		// Required if datastore type is set to C(nfs)/C(nfs41) and state is set to C(present), else unused.
		// Two or more servers can be defined if datastore type is set to C(nfs41)

		nfs_server?: string

		// present: Mount datastore on host if datastore is absent else do nothing.
		// absent: Umount datastore if datastore is present else do nothing.

		state?: string

		// Name of the device to be used as VMFS datastore.
		// Required for VMFS datastore type and state is set to C(present), else unused.

		vmfs_device_name?: string

		// VMFS version to use for datastore creation.
		// Unused if datastore type is not set to C(vmfs) and state is not set to C(present).

		vmfs_version?: int
	}
}

vmware_host_ntp :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_ntp: {

		// Name of the cluster from which all host systems will be used.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string

		// IP or FQDN of NTP server(s).
		// This accepts a list of NTP servers. For multiple servers, please look at the examples.

		ntp_servers: [...]

		// present: Add NTP server(s), if specified server(s) are absent else do nothing.
		// absent: Remove NTP server(s), if specified server(s) are present else do nothing.
		// Specified NTP server(s) will be configured if C(state) isn't specified.

		state?: string

		// Verbose output of the configuration change.
		// Explains if an NTP server was added, removed, or if the NTP server sequence was changed.

		verbose?: bool
	}
}

vmware_host_service_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_service_facts: {

		// Name of the cluster.
		// Service facts about each ESXi server will be returned for given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Service facts about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_local_user_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_user_facts: {
	}
}

vmware_vmkernel_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vmkernel_facts: {

		// Name of the cluster.
		// VMKernel facts about each ESXi server will be returned for the given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// VMKernel facts about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_host_capability_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_capability_info: {

		// Name of the cluster from all host systems to be used for information gathering.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_host_firewall_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_firewall_facts: {

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_portgroup_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_portgroup_facts: {

		// Name of the cluster.
		// Facts will be returned for all hostsystem belonging to this cluster name.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather facts from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Gather facts about Security, Traffic Shaping, as well as Teaming and failover.
		// The property C(ts) stands for Traffic Shaping and C(lb) for Load Balancing.

		policies?: bool
	}
}

vmware_drs_rule_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_drs_rule_info: {

		// Name of the cluster.
		// DRS information for the given cluster will be returned.
		// This is required parameter if C(datacenter) parameter is not provided.

		cluster_name?: string

		// Name of the datacenter.
		// DRS information for all the clusters from the given datacenter will be returned.
		// This is required parameter if C(cluster_name) parameter is not provided.

		datacenter?: string
	}
}

vmware_host_firewall_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_firewall_manager: {

		// Name of the cluster.
		// Firewall settings are applied to every ESXi host system in given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Firewall settings are applied to this ESXi host system.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// A list of Rule set which needs to be managed.
		// Each member of list is rule set name and state to be set the rule.
		// Both rule name and rule state are required parameters.
		// Additional IPs and networks can also be specified
		// Please see examples for more information.

		rules?: [...]
	}
}

vmware_target_canonical_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_target_canonical_facts: {

		// The target id based on order of scsi device.
		// version 2.6 onwards, this parameter is optional.

		target_id?: int

		// Name of the cluster.
		// Facts about all SCSI devices for all host system in the given cluster is returned.
		// This parameter is required, if C(esxi_hostname) is not provided.

		cluster_name?: string

		// Name of the ESXi host system.
		// Facts about all SCSI devices for the given ESXi host system is returned.
		// This parameter is required, if C(cluster_name) is not provided.

		esxi_hostname?: string
	}
}

vmware_vmotion :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vmotion: {

		// Name of the VM to perform a vMotion on.
		// This is required parameter, if C(vm_uuid) is not set.
		// Version 2.6 onwards, this parameter is not a required parameter, unlike the previous versions.

		vm_name?: string

		// UUID of the virtual machine to perform a vMotion operation on.
		// This is a required parameter, if C(vm_name) or C(moid) is not set.

		vm_uuid?: string

		// Name of the destination datastore the virtual machine's vmdk should be moved on.

		destination_datastore?: string

		// Name of the destination host the virtual machine should be running on.
		// Version 2.6 onwards, this parameter is not a required parameter, unlike the previous versions.

		destination_host?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(vm_name) or C(vm_uuid) is not supplied.

		moid?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool
	}
}

vmware_dvs_portgroup_find :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_dvs_portgroup_find: {

		// string to check inside the name of the portgroup.
		// Basic containment check using python C(in) operation.

		name?: string

		// Show or hide uplink portgroups.
		// Only relevant when C(vlanid) is supplied.

		show_uplink?: bool

		// VLAN id can be any number between 1 and 4094.
		// This search criteria will looks into VLAN ranges to find possible matches.

		vlanid?: int

		// Name of a distributed vSwitch to look for.

		dvswitch?: string
	}
}

vmware_maintenancemode :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_maintenancemode: {

		// Specify which VSAN compliant mode to enter.

		vsan?: string

		// Name of the host as defined in vCenter.

		esxi_hostname: string

		// If set to C(True), evacuate all powered off VMs.

		evacuate?: bool

		// Enter or exit maintenance mode.

		state?: string

		// Specify a timeout for the operation.

		timeout?: int
	}
}

vmware_vm_storage_policy_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vm_storage_policy_info: {
	}
}

vmware_vsan_cluster :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vsan_cluster: {

		cluster_uuid?: string

		// Desired cluster UUID
	}
}

vmware_cluster :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_cluster: {

		// If set to C(yes), will enable DRS when the cluster is created.

		enable_drs?: bool

		// If set to C(yes) will enable HA when the cluster is created.

		enable_ha?: bool

		// Indicates the state of virtual machine health monitoring service.
		// If set to C(vmAndAppMonitoring), HA response to both virtual machine and application heartbeat failure.
		// If set to C(vmMonitoringDisabled), virtual machine health monitoring is disabled.
		// If set to C(vmMonitoringOnly), HA response to virtual machine heartbeat failure.
		// If C(enable_ha) is set to C(no), then this value is ignored.

		ha_vm_monitoring?: string

		// If set to C(yes), HA will not be configured; all explicit and default HA related configurations will be ignored.

		ignore_ha?: bool

		// Determines whether the VSAN service is configured to automatically claim local storage on VSAN-enabled hosts in the cluster.

		vsan_auto_claim_storage?: bool

		// The number of seconds for the virtual machine's heartbeats to stabilize after the virtual machine has been powered on.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.

		ha_vm_min_up_time?: string

		// If set to C(yes), VSAN will not be configured; all explicit and default VSAN related configurations will be ignored.

		ignore_vsan?: bool

		// Threshold for generated ClusterRecommendations.

		drs_vmotion_rate?: string

		// If set to C(yes) will enable vSAN when the cluster is created.

		enable_vsan?: bool

		// Number of host failures that should be tolerated, still guaranteeing sufficient resources to restart virtual machines on available hosts.
		// Accepts integer values only.

		ha_failover_level?: string

		// Indicates whether HA restarts virtual machines after a host fails.
		// If set to C(enabled), HA restarts virtual machines after a host fails.
		// If set to C(disabled), HA does not restart virtual machines after a host fails.
		// If C(enable_ha) is set to C(no), then this value is ignored.

		ha_host_monitoring?: string

		// The number of seconds for the window during which up to C(ha_vm_max_failures) resets can occur before automated responses stop.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.
		// Default specifies no failure window.

		ha_vm_max_failure_window?: string

		// Maximum number of failures and automated resets allowed during the time that C(ha_vm_max_failure_window) specifies.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).

		ha_vm_max_failures?: string

		// Determines if strict admission control is enabled.
		// It is recommended to set this parameter to C(True), please refer documentation for more details.

		ha_admission_control_enabled?: bool

		// Determines the preference that HA gives to a virtual machine if sufficient capacity is not available to power on all failed virtual machines.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// If set to C(disabled), then HA is disabled for this virtual machine.
		// If set to C(high), then virtual machine with this priority have a higher chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.
		// If set to C(medium), then virtual machine with this priority have an intermediate chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.
		// If set to C(low), then virtual machine with this priority have a lower chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.

		ha_restart_priority?: string

		// The number of seconds after which virtual machine is declared as failed if no heartbeat has been received.
		// This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).
		// Unit is seconds.

		ha_vm_failure_interval?: string

		// Create C(present) or remove C(absent) a VMware vSphere cluster.

		state?: string

		// The name of the cluster to be managed.

		cluster_name: string

		// The name of the datacenter.

		datacenter: string

		// Specifies the cluster-wide default DRS behavior for virtual machines.
		// If set to C(partiallyAutomated), then vCenter generate recommendations for virtual machine migration and for the placement with a host. vCenter automatically implement placement at power on.
		// If set to C(manual), then vCenter generate recommendations for virtual machine migration and for the placement with a host. vCenter should not implement the recommendations automatically.
		// If set to C(fullyAutomated), then vCenter should automate both the migration of virtual machines and their placement with a host at power on.

		drs_default_vm_behavior?: string

		// Determines whether DRS Behavior overrides for individual virtual machines are enabled.
		// If set to C(True), overrides C(drs_default_vm_behavior).

		drs_enable_vm_behavior_overrides?: bool

		// If set to C(yes), DRS will not be configured; all explicit and default DRS related configurations will be ignored.

		ignore_drs?: bool
	}
}

vmware_datastore_maintenancemode :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_datastore_maintenancemode: {

		// Name of the cluster where datastore is connected to.
		// If multiple datastores are connected to the given cluster, then all datastores will be managed by C(state).
		// If C(datastore) or C(datastore_cluster) are not set, this parameter is required.

		cluster_name?: string

		// Name of datastore to manage.
		// If C(datastore_cluster) or C(cluster_name) are not set, this parameter is required.

		datastore?: string

		// Name of the datastore cluster from all child datastores to be managed.
		// If C(datastore) or C(cluster_name) are not set, this parameter is required.

		datastore_cluster?: string

		// If set to C(present), then enter datastore into maintenance mode.
		// If set to C(present) and datastore is already in maintenance mode, then no action will be taken.
		// If set to C(absent) and datastore is in maintenance mode, then exit maintenance mode.
		// If set to C(absent) and datastore is not in maintenance mode, then no action will be taken.

		state?: string
	}
}

vmware_guest_custom_attributes :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_custom_attributes: {

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the virtual machine to manage if known. This is VMware's unique identifier.
		// This is required parameter, if C(name) or C(moid) is not supplied.

		uuid?: string

		// A list of name and value of custom attributes that needs to be manage.
		// Value of custom attribute is not required and will be ignored, if C(state) is set to C(absent).

		attributes?: [...]

		// Datacenter name where the virtual machine is located in.

		datacenter: string

		// Absolute path to find an existing guest.
		// This is required parameter, if C(name) is supplied and multiple virtual machines with same name are found.

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine to work with.
		// This is required parameter, if C(uuid) or C(moid) is not supplied.

		name?: string

		// The action to take.
		// If set to C(present), then custom attribute is added or updated.
		// If set to C(absent), then custom attribute is removed.

		state?: string
	}
}

vmware_host_config_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_config_info: {

		// Name of the cluster from which the ESXi host belong to.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_host_lockdown :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_lockdown: {

		// Name of cluster.
		// All host systems from given cluster used to manage lockdown.
		// Required parameter, if C(esxi_hostname) is not set.

		cluster_name?: string

		// List of ESXi hostname to manage lockdown.
		// Required parameter, if C(cluster_name) is not set.
		// See examples for specifications.

		esxi_hostname?: [...]

		// State of hosts system
		// If set to C(present), all host systems will be set in lockdown mode.
		// If host system is already in lockdown mode and set to C(present), no action will be taken.
		// If set to C(absent), all host systems will be removed from lockdown mode.
		// If host system is already out of lockdown mode and set to C(absent), no action will be taken.

		state?: string
	}
}

vmware_host_vmhba_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_vmhba_facts: {

		// Name of the cluster from which all host systems will be used.
		// Vmhba facts about each ESXi server will be returned for the given cluster.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// Vmhba facts about this ESXi server will be returned.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string
	}
}

vmware_migrate_vmk :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_migrate_vmk: {

		// Switch name to migrate VMK interface to

		migrate_switch_name: string

		// Portgroup name VMK interface is currently on

		current_portgroup_name: string

		// Switch VMK interface is currently on

		current_switch_name: string

		// VMK interface name

		device: string

		// ESXi hostname to be managed

		esxi_hostname: string

		// Portgroup name to migrate VMK interface to

		migrate_portgroup_name: string
	}
}

vcenter_folder :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vcenter_folder: {

		// Name of folder to be managed.
		// This is case sensitive parameter.
		// Folder name should be under 80 characters. This is a VMware restriction.

		folder_name: string

		// This is type of folder.
		// If set to C(vm), then 'VM and Template Folder' is created under datacenter.
		// If set to C(host), then 'Host and Cluster Folder' is created under datacenter.
		// If set to C(datastore), then 'Storage Folder' is created under datacenter.
		// If set to C(network), then 'Network Folder' is created under datacenter.
		// This parameter is required, if C(state) is set to C(present) and parent_folder is absent.
		// This option is ignored, if C(parent_folder) is set.

		folder_type?: string

		// Name of the parent folder under which new folder needs to be created.
		// This is case sensitive parameter.
		// Please specify unique folder name as there is no way to detect duplicate names.
		// If user wants to create a folder under '/DC0/vm/vm_folder', this value will be 'vm_folder'.

		parent_folder?: string

		// State of folder.
		// If set to C(present) without parent folder parameter, then folder with C(folder_type) is created.
		// If set to C(present) with parent folder parameter,  then folder in created under parent folder. C(folder_type) is ignored.
		// If set to C(absent), then folder is unregistered and destroyed.

		state?: string

		// Name of the datacenter.

		datacenter: string
	}
}

vmware_content_deploy_template :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_content_deploy_template: {

		// Name of the folder in datacenter in which to place deployed VM.

		folder: string

		// The state of Virtual Machine deployed from template in content library.
		// If set to C(present) and VM does not exists, then VM is created.
		// If set to C(present) and VM exists, no action is taken.
		// If set to C(poweredon) and VM does not exists, then VM is created with powered on state.
		// If set to C(poweredon) and VM exists, no action is taken.

		state?: string

		// The name of template from which VM to be deployed.

		template: string

		// Name of the datacenter, where VM to be deployed.

		datacenter: string

		// Name of the datastore to store deployed VM and disk.

		datastore: string

		// Name of the ESX Host in datacenter in which to place deployed VM.

		host: string

		// The name of the VM to be deployed.

		name: string

		// Name of the resourcepool in datacenter in which to place deployed VM.

		resource_pool?: string

		// Name of the cluster in datacenter in which to place deployed VM.

		cluster?: string
	}
}

vmware_host_vmhba_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_vmhba_info: {

		// Name of the cluster from which all host systems will be used.
		// Vmhba information about each ESXi server will be returned for the given cluster.
		// This parameter is required if C(esxi_hostname) is not specified.

		cluster_name?: string

		// Name of the host system to work with.
		// Vmhba information about this ESXi server will be returned.
		// This parameter is required if C(cluster_name) is not specified.

		esxi_hostname?: string
	}
}

vmware_guest_find :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_find: {

		// Destination datacenter for the find operation.
		// Deprecated in 2.5, will be removed in 2.9 release.

		datacenter?: string

		// Name of the VM to work with.
		// This is required if C(uuid) parameter is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) parameter is not supplied.

		uuid?: string
	}
}

vmware_host_feature_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_feature_info: {

		// Name of the cluster from all host systems to be used for information gathering.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname to gather information from.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_host_package_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_package_facts: {

		// Name of the cluster.
		// Package facts about each ESXi server will be returned for given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Package facts about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_drs_group_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_drs_group_facts: {

		// Cluster to search for VM/Host groups.
		// If set, facts of DRS groups belonging this cluster will be returned.
		// Not needed if C(datacenter) is set.

		cluster_name?: string

		// Datacenter to search for DRS VM/Host groups.

		datacenter: string
	}
}

vmware_guest_boot_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_boot_manager: {

		// Choose if EFI secure boot should be enabled.  EFI secure boot can only be enabled with boot_firmware = efi

		secure_boot_enabled?: bool

		// UUID of the instance to manage if known, this is VMware's BIOS UUID by default.
		// This is required if C(name) or C(moid) parameter is not supplied.

		uuid?: string

		// Delay in milliseconds before starting the boot sequence.

		boot_delay?: int

		// Choose which firmware should be used to boot the virtual machine.

		boot_firmware?: string

		// Specify the time in milliseconds between virtual machine boot failure and subsequent attempt to boot again.
		// If set, will automatically set C(boot_retry_enabled) to C(True) as this parameter is required.

		boot_retry_delay?: int

		// If set to C(True), the virtual machine automatically enters BIOS setup the next time it boots.
		// The virtual machine resets this flag, so that the machine boots proceeds normally.

		enter_bios_setup?: bool

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// List of the boot devices.

		boot_order?: [...]

		// If set to C(True), the virtual machine that fails to boot, will try to boot again after C(boot_retry_delay) is expired.
		// If set to C(False), the virtual machine waits indefinitely for user intervention.

		boot_retry_enabled?: bool

		// Name of the VM to work with.
		// This is required if C(uuid) or C(moid) parameter is not supplied.

		name?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool
	}
}

vmware_host_acceptance :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_host_acceptance: {

		// Name of acceptance level.
		// If set to C(partner), then accept only partner and VMware signed and certified VIBs.
		// If set to C(vmware_certified), then accept only VIBs that are signed and certified by VMware.
		// If set to C(vmware_accepted), then accept VIBs that have been accepted by VMware.
		// If set to C(community), then accept all VIBs, even those that are not signed.

		acceptance_level?: string

		// Name of the cluster.
		// Acceptance level of all ESXi host system in the given cluster will be managed.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// Acceptance level of this ESXi host system will be managed.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string

		// Set or list acceptance level of the given ESXi host.
		// If set to C(list), then will return current acceptance level of given host system/s.
		// If set to C(present), then will set given acceptance level.

		state?: string
	}
}

vmware_local_role_manager :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_local_role_manager: {

		// This parameter is only valid while updating an existing role with privileges.
		// C(add) will add the privileges to the existing privilege list.
		// C(remove) will remove the privileges from the existing privilege list.
		// C(set) will replace the privileges of the existing privileges with user defined list of privileges.

		action?: string

		// If set to C(False) then prevents the role from being removed if any permissions are using it.

		force_remove?: bool

		// The list of privileges that role needs to have.
		// Please see U(https://docs.vmware.com/en/VMware-vSphere/6.0/com.vmware.vsphere.security.doc/GUID-ED56F3C4-77D0-49E3-88B6-B99B8B437B62.html)

		local_privilege_ids?: [...]

		// The local role name to be managed.

		local_role_name: string

		// Indicate desired state of the role.
		// If the role already exists when C(state=present), the role info is updated.

		state?: string
	}
}

vmware_target_canonical_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_target_canonical_info: {

		// Name of the ESXi host system.
		// Info about all SCSI devices for the given ESXi host system is returned.
		// This parameter is required, if C(cluster_name) is not provided.

		esxi_hostname?: string

		// The target id based on order of scsi device.
		// version 2.6 onwards, this parameter is optional.

		target_id?: int

		// Name of the cluster.
		// Info about all SCSI devices for all host system in the given cluster is returned.
		// This parameter is required, if C(esxi_hostname) is not provided.

		cluster_name?: string
	}
}

vmware_vmkernel_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_vmkernel_info: {

		// Name of the cluster.
		// VMKernel information about each ESXi server will be returned for the given cluster.
		// If C(esxi_hostname) is not given, this parameter is required.

		cluster_name?: string

		// ESXi hostname.
		// VMKernel information about this ESXi server will be returned.
		// If C(cluster_name) is not given, this parameter is required.

		esxi_hostname?: string
	}
}

vmware_category_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_category_facts: {
	}
}

vmware_guest_custom_attribute_defs :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_custom_attribute_defs: {

		// Manage definition of custom attributes.
		// If set to C(present) and definition not present, then custom attribute definition is created.
		// If set to C(present) and definition is present, then no action taken.
		// If set to C(absent) and definition is present, then custom attribute definition is removed.
		// If set to C(absent) and definition is absent, then no action taken.

		state: string

		// Name of the custom attribute definition.
		// This is required parameter, if C(state) is set to C(present) or C(absent).

		attribute_key?: string
	}
}

vmware_deploy_ovf :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_deploy_ovf: {

		// Force the given properties to be inserted into an OVF Environment and injected through VMware Tools.

		inject_ovf_env?: bool

		// Wait until vCenter detects an IP address for the VM.
		// This requires vmware-tools (vmtoolsd) to properly work after creation.

		wait_for_ip_address?: bool

		// Whether or not to allow duplicate VM names. ESXi allows duplicates, vCenter may not.

		allow_duplicates?: bool

		// Datacenter to deploy to.

		datacenter?: string

		// Disk provisioning type.

		disk_provisioning?: string

		// Cause the module to treat OVF Import Spec warnings as errors.

		fail_on_spec_warnings?: bool

		// Absolute path of folder to place the virtual machine.
		// If not specified, defaults to the value of C(datacenter.vmFolder).
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// C(key: value) mapping of OVF network name, to the vCenter network name.

		networks?: {...}

		// The assignment of values to the properties found in the OVF as key value pairs.

		properties?: {...}

		// Name of the VM to work with.
		// Virtual machine names in vCenter are not necessarily unique, which may be problematic.

		name?: string

		// Resource Pool to deploy to.

		resource_pool?: string

		// Cluster to deploy to.

		cluster?: string

		// Datastore to deploy to.
		// You can also specify datastore storage cluster. version_added: 2.9

		datastore?: string

		// The key of the chosen deployment option.

		deployment_option?: string

		// Path to OVF or OVA file to deploy.

		ovf?: string

		// Whether or not to power on the virtual machine after creation.

		power_on?: bool

		// Wait for the host to power on.

		wait?: bool
	}
}

vmware_guest_disk_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_disk_info: {

		// UUID of the instance to gather information if known, this is VMware's unique identifier.
		// This is required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string

		// The datacenter name to which virtual machine belongs to.

		datacenter: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required parameter, only if multiple VMs are found with same name.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool
	}
}

vmware_guest_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_info: {

		// Specify the output schema desired.
		// The 'summary' output schema is the legacy output from the module
		// The 'vsphere' output schema is the vSphere API class definition which requires pyvmomi>6.7.1

		schema?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage if known, this is VMware's unique identifier.
		// This is required if C(name) or C(moid) is not supplied.

		uuid?: string

		// Destination datacenter for the deploy operation

		datacenter: string

		// If multiple VMs matching the name, use the first or last found

		name_match?: string

		// Specify the properties to retrieve.
		// If not specified, all properties are retrieved (deeply).
		// Results are returned in a structure identical to the vsphere API.
		// Example:
		//    properties: [
		//       "config.hardware.memoryMB",
		//       "config.hardware.numCPU",
		//       "guest.disk",
		//       "overallStatus"
		//    ]
		// Only valid when C(schema) is C(vsphere).

		properties?: [...]

		// Whether to show tags or not.
		// If set C(True), shows tag information.
		// If set C(False), hides tags information.
		// vSphere Automation SDK and vCloud Suite SDK is required.

		tags?: bool

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required if name is supplied.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the VM to work with
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string
	}
}

vmware_guest_serial_port :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_serial_port: {

		// A list of backings for serial ports.
		// C(backing_type) (str): is required to add or reconfigure or remove an existing serial port.
		// Valid attributes are:
		//  - C(backing_type) (str): Backing type is required for the serial ports to be added or reconfigured or removed.
		//  - C(state) (str): is required to identify whether we are adding, modifying or removing the serial port. - choices: - C(present): modify an existing serial port. C(backing_type) is required to determine the port. The first matching C(backing_type) and either of C(service_uri) or C(pipe_name) or C(device_name) or C(file_path) will be modified. If there is only one device with a backing type, the secondary details are not needed. We will match the last such device with the given backing type. - C(absent): remove an existing serial port. C(backing_type) is required to determine the port. The first matching C(backing_type) and either of C(service_uri) or C(pipe_name) or C(device_name) or C(file_path) will be removed. If there is only one device with a backing type, the secondary details are not needed. We will match the last such device with the given backing type.
		//  - C(yield_on_poll) (bool): Enables CPU yield behavior. Default value is true.
		//  - C(direction) (str): Required when I(backing_type=network). The direction of the connection. - choices: - client - server
		//  - C(service_uri) (str): Required when I(backing_type=network). Identifies the local host or a system on the network, depending on the value of I(direction). If you use the virtual machine as a server, the URI identifies the host on which the virtual machine runs. In this case, the host name part of the URI should be empty, or it should specify the address of the local host. If you use the virtual machine as a client, the URI identifies the remote system on the network.
		//  - C(endpoint) (str): Required when I(backing_type=pipe). When you use serial port pipe backing to connect a virtual machine to another process, you must define the endpoints.
		//  - C(no_rx_loss) (bool): Required when I(backing_type=pipe). Enables optimized data transfer over the pipe. - choices: - client - server
		//  - C(pipe_name) (str): Required when I(backing_type=pipe).
		//  - C(device_name) (str): Required when I(backing_type=device).
		//  - C(file_path) (str): Required when I(backing_type=file). File path for the host file used in this backing. Fully qualified path is required, like <datastore_name>/<file_name>

		backings?: [...]

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string

		// Name of the virtual machine.
		// This is a required parameter, if parameter C(uuid) or C(moid) is not supplied.

		name?: string

		// Whether to use the VMware instance UUID rather than the BIOS UUID.

		use_instance_uuid?: bool

		// UUID of the instance to manage the serial ports, this is VMware's unique identifier.
		// This is a required parameter, if parameter C(name) or C(moid) is not supplied.

		uuid?: string
	}
}

vmware_guest_tools_upgrade :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_guest_tools_upgrade: {

		// Name of the virtual machine to work with.
		// This is required if C(uuid) or C(moid) is not supplied.

		name?: string

		// If multiple virtual machines matching the name, use the first or last found.

		name_match?: string

		// UUID of the instance to manage if known, this is VMware's unique identifier.
		// This is required if C(name) or C(moid) is not supplied.

		uuid?: string

		// Destination datacenter where the virtual machine exists.

		datacenter: string

		// Destination folder, absolute or relative path to find an existing guest.
		// This is required, if C(name) is supplied.
		// The folder should include the datacenter. ESX's datacenter is ha-datacenter
		// Examples:
		//    folder: /ha-datacenter/vm
		//    folder: ha-datacenter/vm
		//    folder: /datacenter1/vm
		//    folder: datacenter1/vm
		//    folder: /datacenter1/vm/folder1
		//    folder: datacenter1/vm/folder1
		//    folder: /folder1/datacenter1/vm
		//    folder: folder1/datacenter1/vm
		//    folder: /folder1/datacenter1/vm/folder2

		folder?: string

		// Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.
		// This is required if C(name) or C(uuid) is not supplied.

		moid?: string
	}
}

vmware_tag_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	vmware_tag_info: {
	}
}
