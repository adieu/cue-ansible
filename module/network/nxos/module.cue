package nxos

nxos_bgp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bgp: {

		// AS confederation parameters.

		confederation_peers?: string

		// Enable/Disable the batching evaluation of prefix advertisement to all peers.

		disable_policy_batching?: bool

		// Determines whether the config should be present or not on the device.

		state?: string

		// Name of the VRF. The name 'default' is a valid VRF representing the global BGP.

		vrf?: string

		// BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.

		asn: string

		// Enable/Disable assigns the value of infinity to received routes that do not carry the MED attribute, making these routes the least desirable.

		bestpath_med_missing_as_worst?: bool

		// Route Reflector Cluster-ID.

		cluster_id?: string

		// Enable/Disable detail event history buffer.

		event_history_detail?: string

		// Enable/Disable handle BGP neighbor down event, due to various reasons.

		neighbor_down_fib_accelerate?: bool

		// Set BGP hold timer.

		timer_bgp_hold?: string

		// Specify timeout for the first best path after a restart, in seconds.

		timer_bestpath_limit?: string

		// Enable/Disable message logging for neighbor up/down event.

		log_neighbor_changes?: bool

		// Router Identifier (ID) of the BGP router VRF instance.

		router_id?: string

		// Enable/Disable advertise only routes programmed in hardware to peers.

		suppress_fib_pending?: bool

		// Enable/Disable flush routes in RIB upon controlled restart. On NX-OS, this property is only supported in the global BGP context.

		flush_routes?: bool

		// Enable/Disable isolate this router from BGP perspective.

		isolate?: bool

		// Enable/Disable comparison of router IDs for identical eBGP paths.

		bestpath_compare_routerid?: bool

		// Enable/Disable periodic event history buffer.

		event_history_periodic?: string

		// Enable/Disable immediately reset the session if the link to a directly connected BGP peer goes down.  Only supported in the global BGP context.

		fast_external_fallover?: bool

		// Set maximum time for a restart sent to the BGP peer.

		graceful_restart_timers_restart?: string

		// Set maximum time that BGP keeps the stale routes from the restarting BGP peer.

		graceful_restart_timers_stalepath_time?: string

		// Enable/Disable load sharing across the providers with different (but equal-length) AS paths.

		bestpath_aspath_multipath_relax?: bool

		// Routing domain confederation AS.

		confederation_id?: string

		// Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.

		disable_policy_batching_ipv6_prefix_list?: string

		// Enable/Disable MED comparison on paths from different autonomous systems.

		bestpath_always_compare_med?: bool

		// Enable/Disable neighborid. Use this when more paths available than max path config.

		bestpath_compare_neighborid?: bool

		// Enable/Disable deterministic selection of the best MED pat from among the paths from the same autonomous system.

		bestpath_med_non_deterministic?: bool

		// Enable/Disable graceful restart helper mode.

		graceful_restart_helper?: bool

		// Local AS number to be used within a VRF instance.

		local_as?: string

		// Enable/Disable enforces the neighbor autonomous system to be the first AS number listed in the AS path attribute for eBGP. On NX-OS, this property is only supported in the global BGP context.

		enforce_first_as?: bool

		// Enable/Disable cli event history buffer.

		event_history_cli?: string

		// Enable/Disable graceful restart.

		graceful_restart?: bool

		// Enable/Disable event history buffer.

		event_history_events?: string

		// Specify Maximum number of AS numbers allowed in the AS-path attribute. Valid values are between 1 and 512.

		maxas_limit?: string

		// The BGP reconnection interval for dropped sessions. Valid values are between 1 and 60.

		reconnect_interval?: string

		// Administratively shutdown the BGP protocol.

		shutdown?: bool

		// Set BGP keepalive timer.

		timer_bgp_keepalive?: string

		// Enable/Disable Ignores the cost community for BGP best-path calculations.

		bestpath_cost_community_ignore?: bool

		// Enable/Disable enforcement of bestpath to do a MED comparison only between paths originated within a confederation.

		bestpath_med_confed?: bool

		// Enable/Disable the batching evaluation of prefix advertisements to all peers with prefix list.

		disable_policy_batching_ipv4_prefix_list?: string
	}
}

nxos_snmp_location :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_location: {

		// Manage the state of the resource.

		state?: string

		// Location information.

		location: string
	}
}

nxos_vrf_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vrf_interface: {

		// Name of VRF to be managed.

		vrf: string

		// Full name of interface to be managed, i.e. Ethernet1/1.

		interface: string

		// Manages desired state of the resource.

		state?: string
	}
}

nxos_vxlan_vtep :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vxlan_vtep: {

		// Specify mechanism for host reachability advertisement.

		host_reachability?: bool

		// Administratively shutdown the NVE interface.

		shutdown?: bool

		// Determines whether the config should be present or not on the device.

		state?: string

		// Configures ingress replication protocol as bgp for all VNIs This is available on NX-OS 9K series running 9.2.x or higher.

		global_ingress_replication_bgp?: bool

		// Global multicast ip prefix for L3 VNIs or the keyword 'default' This is available on NX-OS 9K series running 9.2.x or higher.

		global_mcast_group_L3?: string

		// Enables ARP suppression for all VNIs This is available on NX-OS 9K series running 9.2.x or higher.

		global_suppress_arp?: bool

		// Specify the loopback interface whose IP address should be used for the NVE interface.

		source_interface?: string

		// Suppresses advertisement of the NVE loopback address until the overlay has converged.

		source_interface_hold_down_time?: string

		// Description of the NVE interface.

		description?: string

		// Global multicast ip prefix for L2 VNIs or the keyword 'default' This is available on NX-OS 9K series running 9.2.x or higher.

		global_mcast_group_L2?: string

		// Interface name for the VXLAN Network Virtualization Endpoint.

		interface: string
	}
}

nxos_acl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_acl: {

		// Destination port operands such as eq, neq, gt, lt, range.

		dest_port_op?: string

		// Match on the FIN bit.

		fin?: string

		// Port number or protocol (as supported by the switch).

		proto?: string

		// Match on the PSH bit.

		psh?: string

		// Sequence number of the entry (ACE).

		seq?: string

		// Match on the URG bit.

		urg?: string

		// Destination ip and mask using IP/MASK notation and supports the keyword 'any'.

		dest?: string

		// Log matches against this entry.

		log?: string

		// Case sensitive name of the access list (ACL).

		name: string

		// Source port operands such as eq, neq, gt, lt, range.

		src_port_op?: string

		// Specify desired state of the resource.

		state?: string

		// Match on the SYN bit.

		syn?: string

		// Check non-initial fragments.

		fragments?: string

		// Second (end) port when using range operand.

		dest_port2?: string

		// Match packets with given dscp value.

		dscp?: string

		// Match packets with given precedence.

		precedence?: string

		// If action is set to remark, this is the description.

		remark?: string

		// Port/protocol and also first (lower) port when using range operand.

		src_port1?: string

		// Name of time-range to apply.

		time_range?: string

		// Port/protocol and also first (lower) port when using range operand.

		dest_port1?: string

		// Action of the ACE.

		action?: string

		// Match established connections.

		established?: string

		// Match on the RST bit.

		rst?: string

		// Source ip and mask using IP/MASK notation and supports keyword 'any'.

		src?: string

		// Second (end) port when using range operand.

		src_port2?: string

		// Match on the ACK bit.

		ack?: string
	}
}

nxos_hsrp_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_hsrp_interfaces: {

		// The provided configuration

		config?: [...{...}]

		// The state the configuration should be left in

		state?: string
	}
}

nxos_igmp_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_igmp_interface: {

		// Configure prefixes and sources for static outgoing interface (OIF). This is a list of dict where each dict has source and prefix defined or just prefix if source is not needed. The specified values will be configured on the device and if any previous prefix/sources exist, they will be removed. Keyword 'default' is also accepted which removes all existing prefix/sources.

		oif_ps?: string

		// Sets the querier timeout that the software uses when deciding to take over as the querier. Values can range from 1 to 65535 seconds or keyword 'default'. The default is 255 seconds.

		querier_timeout?: string

		// Sets the robustness variable. Values can range from 1 to 7 or keyword 'default'. The default is 2.

		robustness?: string

		// Query interval used when the IGMP process starts up. The range is from 1 to 18000 or keyword 'default'. The default is 31.

		startup_query_interval?: string

		// Sets the group membership timeout for IGMPv2. Values can range from 3 to 65,535 seconds or keyword 'default'. The default is 260 seconds.

		group_timeout?: string

		// Sets the frequency at which the software sends IGMP host query messages. Values can range from 1 to 18000 seconds or keyword 'default'. The default is 125 seconds.

		query_interval?: string

		// Restart IGMP. This is NOT idempotent as this is action only.

		restart?: bool

		// Configure a routemap for static outgoing interface (OIF) or keyword 'default'.

		oif_routemap?: string

		// This argument is deprecated, please use oif_ps instead. Configure a source for static outgoing interface (OIF).

		oif_source?: string

		// Sets the response time advertised in IGMP queries. Values can range from 1 to 25 seconds or keyword 'default'. The default is 10 seconds.

		query_mrt?: string

		// Configures report-link-local-groups. Enables sending reports for groups in 224.0.0.0/24. Reports are always sent for nonlink local groups. By default, reports are not sent for link local groups.

		report_llg?: bool

		// Enables the device to remove the group entry from the multicast routing table immediately upon receiving a leave message for the group. Use this command to minimize the leave latency of IGMPv2 group memberships on a given IGMP interface because the device does not send group-specific queries. The default is disabled.

		immediate_leave?: bool

		// The full interface name for IGMP configuration. e.g. I(Ethernet1/2).

		interface: string

		// Sets the query interval waited after sending membership reports before the software deletes the group state. Values can range from 1 to 25 seconds or keyword 'default'. The default is 1 second.

		last_member_qrt?: string

		// This argument is deprecated, please use oif_ps instead. Configure a prefix for static outgoing interface (OIF).

		oif_prefix?: string

		// Query count used when the IGMP process starts up. The range is from 1 to 10 or keyword 'default'. The default is 2.

		startup_query_count?: string

		// Manages desired state of the resource.

		state?: string

		// Sets the number of times that the software sends an IGMP query in response to a host leave message. Values can range from 1 to 5 or keyword 'default'. The default is 2.

		last_member_query_count?: string

		// IGMP version. It can be 2 or 3 or keyword 'default'.

		version?: string
	}
}

nxos_ntp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ntp: {

		// Network address of NTP peer.

		peer?: string

		// Makes given NTP server or peer the preferred NTP server or peer for the device.

		prefer?: string

		// Network address of NTP server.

		server?: string

		// Local source address from which NTP messages are sent or keyword 'default'

		source_addr?: string

		// Local source interface from which NTP messages are sent. Must be fully qualified interface name or keyword 'default'

		source_int?: string

		// Manage the state of the resource.

		state?: string

		// Makes the device communicate with the given NTP server or peer over a specific VRF or keyword 'default'.

		vrf_name?: string

		// Authentication key identifier to use with given NTP server or peer or keyword 'default'.

		key_id?: string
	}
}

nxos_rollback :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_rollback: {

		// Name of checkpoint file to create. Mutually exclusive with rollback_to.

		checkpoint_file?: string

		// Name of checkpoint file to rollback to. Mutually exclusive with checkpoint_file.

		rollback_to?: string
	}
}

nxos_udld_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_udld_interface: {

		// FULL name of the interface, i.e. Ethernet1/1-

		interface: string

		// Manages UDLD mode for an interface.

		mode: string

		// Manage the state of the resource.

		state?: string
	}
}

nxos_interface_ospf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_interface_ospf: {

		// Enables or disables the usage of message digest authentication.

		message_digest?: bool

		// Algorithm used for authentication among neighboring routers within an area. Valid values are 'md5' and 'default'.

		message_digest_algorithm_type?: string

		// Specifies the scheme used for encrypting message_digest_password. Valid values are '3des' or 'cisco_type_7' encryption or 'default'.

		message_digest_encryption_type?: string

		// The cost associated with this cisco_interface_ospf instance.

		cost?: string

		// Name of this cisco_interface resource. Valid value is a string.

		interface: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// Ospf area associated with this cisco_interface_ospf instance. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer.

		area: string

		// Enable or disable passive-interface state on this interface. true - (enable) Prevent OSPF from establishing an adjacency or sending routing updates on this interface. false - (disable) Override global 'passive-interface default' for this interface.

		passive_interface?: bool

		// Specifies interface ospf network type. Valid values are 'point-to-point' or 'broadcast'.

		network?: string

		// Name of the ospf instance.

		ospf: string

		// Enables bfd at interface level. This overrides the bfd variable set at the ospf router level.
		// Valid values are 'enable', 'disable' or 'default'.
		// Dependency: 'feature bfd'

		bfd?: string

		// Time between sending successive hello packets. Valid values are an integer or the keyword 'default'.

		hello_interval?: string

		// Specifies the message_digest password. Valid value is a string.

		message_digest_password?: string

		// Time interval an ospf neighbor waits for a hello packet before tearing down adjacencies. Valid values are an integer or the keyword 'default'.

		dead_interval?: string

		// Md5 authentication key-id associated with the ospf instance. If this is present, message_digest_encryption_type, message_digest_algorithm_type and message_digest_password are mandatory. Valid value is an integer and 'default'.

		message_digest_key_id?: string
	}
}

nxos_l2_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_l2_interfaces: {

		// A dictionary of Layer-2 interface options

		config?: [...{...}]

		// The state of the configuration after module completion.

		state?: string
	}
}

nxos_udld :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_udld: {

		// Toggles aggressive mode.

		aggressive?: string

		// Message time in seconds for UDLD packets or keyword 'default'.

		msg_time?: string

		// Ability to reset all ports shut down by UDLD. 'state' parameter cannot be 'absent' when this is present.

		reset?: bool

		// Manage the state of the resource. When set to 'absent', aggressive and msg_time are set to their default values.

		state?: string
	}
}

nxos_vlans :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vlans: {

		// A dictionary of Vlan options

		config?: [...]

		// The state of the configuration after module completion.

		state?: string
	}
}

nxos_vtp_password :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vtp_password: {

		// VTP password

		vtp_password?: string

		// Manage the state of the resource

		state?: string
	}
}

nxos_banner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_banner: {

		// Specifies which banner that should be configured on the remote device.

		banner: string

		// Specifies whether or not the configuration is present in the current devices active running configuration.

		state?: string

		// The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines. Requires I(state=present).

		text?: string
	}
}

nxos_bfd_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bfd_interfaces: {

		// The provided configuration

		config?: [...{...}]

		// The state of the configuration after module completion

		state?: string
	}
}

nxos_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_config: {

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

		before?: string

		// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

		match?: string

		// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct. replace I(config) is supported only on Nexus 9K device.

		replace?: string

		// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
		// When this option is configure as I(startup), the module will return the diff of the running-config against the startup-config.
		// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
		// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.

		diff_against?: string

		// Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.

		diff_ignore_lines?: string

		// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

		lines?: string

		// The I(replace_src) argument provides path to the configuration file to load into the remote system. This argument is used to replace the entire config with a flat-file. This is used with argument I(replace) with value I(config). This is mutually exclusive with the I(lines) and I(src) arguments. This argument is supported on Nexus 9K device. Use I(nxos_file_copy) module to copy the flat file to remote device and then use the path with this argument.

		replace_src?: string

		// The I(src) argument provides a path to the configuration file to load into the remote system.  The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) and I(parents) arguments.

		src?: string

		// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

		parents?: string

		// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the startup-config and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the startup-config if it has changed since the last save to startup-config.  If the argument is set to I(never), the running-config will never be copied to the startup-config.  If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change. I(changed) was added in Ansible 2.6.

		save_when?: string

		// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

		after?: string

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(True), if C(backup) is set to I(false) this option will be silently ignored.

		backup_options?: {...}

		// The I(defaults) argument will influence how the running-config is collected from the device.  When the value is set to true, the command used to collect the running-config is append with the all keyword.  When the value is set to false, the command is issued without the all keyword

		defaults?: bool

		// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

		intended_config?: string

		// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

		running_config?: string
	}
}

nxos_evpn_vni :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_evpn_vni: {

		// The VPN Route Distinguisher (RD). The RD is combined with the IPv4 or IPv6 prefix learned by the PE router to create a globally unique address.

		route_distinguisher: string

		// Enables/Disables route-target settings for both import and export target communities using a single property.

		route_target_both?: string

		// Sets the route-target 'export' extended communities.

		route_target_export?: string

		// Sets the route-target 'import' extended communities.

		route_target_import?: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// The EVPN VXLAN Network Identifier.

		vni: string
	}
}

nxos_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_interfaces: {

		// A dictionary of interface options

		config?: [...{...}]

		// The state of the configuration after module completion

		state?: string
	}
}

nxos_logging :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_logging: {

		// Set logging severity levels for facility based log messages.

		facility_level?: string

		// Add interface description to interface syslogs. Does not work with version 6.0 images using nxapi as a transport.

		interface_message?: string

		// Destination of the logs.

		dest?: string

		// Hostname or IP Address for remote logging (when dest is 'server').

		remote_server?: string

		// State of the logging configuration.

		state?: string

		// VRF to be used while configuring remote logging (when dest is 'server').

		use_vrf?: string

		// Link/trunk enable/default interface configuration logging

		event?: string

		// Facility name for logging.

		facility?: string

		// Interface to be used while configuring source-interface for logging (e.g., 'Ethernet1/2', 'mgmt0')

		interface?: string

		// Remove any switch logging configuration that does not match what has been configured Not supported for ansible_connection local. All nxos_logging tasks must use the same ansible_connection type.

		purge?: bool

		// Set logging timestamp format

		timestamp?: string

		// List of logging definitions.

		aggregate?: string

		// Set logging severity levels.

		dest_level?: string

		// Set logging facility ethpm link status. Not idempotent with version 6.0 images.

		facility_link_status?: string

		// Set logfile size

		file_size?: string

		// If value of C(dest) is I(logfile) it indicates file-name.

		name?: string
	}
}

nxos_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vrf: {

		// List of VRFs definitions.

		aggregate?: string

		// Name of VRF to be managed.

		name: string

		// Administrative state of the VRF.

		admin_state?: string

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.

		delay?: string

		// Description of the VRF or keyword 'default'.

		description?: string

		// List of interfaces to check the VRF has been configured correctly or keyword 'default'.

		interfaces?: string

		// Purge VRFs not defined in the I(aggregate) parameter.

		purge?: bool

		// VPN Route Distinguisher (RD). Valid values are a string in one of the route-distinguisher formats (ASN2:NN, ASN4:NN, or IPV4:NN); the keyword 'auto', or the keyword 'default'.

		rd?: string

		// Manages desired state of the resource.

		state?: string

		// Specify virtual network identifier. Valid values are Integer or keyword 'default'.

		vni?: string

		// This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.

		associated_interfaces?: string
	}
}

nxos_vxlan_vtep_vni :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vxlan_vtep_vni: {

		// Interface name for the VXLAN Network Virtualization Endpoint.

		interface: string

		// Set the ingress-replication static peer list. Valid values are an array, a space-separated string of ip addresses, or the keyword 'default'.

		peer_list?: string

		// ID of the Virtual Network Identifier.

		vni: string

		// This attribute is used to identify and separate processing VNIs that are associated with a VRF and used for routing. The VRF and VNI specified with this command must match the configuration of the VNI under the VRF.

		assoc_vrf?: bool

		// The multicast group (range) of the VNI. Valid values are string and keyword 'default'.

		multicast_group?: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// Suppress arp under layer 2 VNI.

		suppress_arp?: bool

		// Overrides the global ARP suppression config. This is available on NX-OS 9K series running 9.2.x or higher.

		suppress_arp_disable?: bool

		// Specifies mechanism for host reachability advertisement.

		ingress_replication?: string
	}
}

nxos_feature :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_feature: {

		// Name of feature.

		feature: string

		// Desired state of the feature.

		state?: string
	}
}

nxos_file_copy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_file_copy: {

		// Use this parameter to set timeout in seconds, when transferring large files or when the network is slow.
		// When (file_pull is False), this is not used.

		file_pull_timeout?: string

		// The remote file system on the nxos device. If omitted, devices that support a I(file_system) parameter will use their default values.

		file_system?: string

		// When (file_pull is True) file is copied from a remote SCP server to the NXOS device, and written to this directory on the NXOS device. If the directory does not exist, it will be created under the file_system. This is an optional parameter.
		// When (file_pull is False), this is not used.

		local_file_directory?: string

		// The remote scp server password when file_pull is True. This is required if file_pull is True.
		// When (file_pull is False), this is not used.

		remote_scp_server_password?: string

		// The remote scp server username when file_pull is True. This is required if file_pull is True.
		// When (file_pull is False), this is not used.

		remote_scp_server_user?: string

		// SSH server port used for file transfer.

		connect_ssh_port?: string

		// When (False) file is copied from the Ansible controller to the NXOS device.
		// When (True) file is copied from a remote SCP server to the NXOS device. In this mode, the file copy is initiated from the NXOS device.
		// If the file is already present on the device it will be overwritten and therefore the operation is NOT idempotent.

		file_pull?: bool

		// When file_pull is True, this is used to compact nxos image files. This option can only be used with nxos image files.
		// When (file_pull is False), this is not used.

		file_pull_compact?: bool

		// The remote scp server address when file_pull is True. This is required if file_pull is True.
		// When (file_pull is False), this is not used.

		remote_scp_server?: string

		// The VRF used to pull the file. Useful when no vrf management is defined

		vrf?: string

		// When file_pull is True, this can be used to speed up file copies when the nxos running image supports the use-kstack option.
		// When (file_pull is False), this is not used.

		file_pull_kstack?: bool

		// When (file_pull is False) this is the path to the local file on the Ansible controller. The local directory must exist.
		// When (file_pull is True) this is the target file name on the NXOS device.

		local_file?: string

		// When (file_pull is False) this is the remote file path on the NXOS device. If omitted, the name of the local file will be used. The remote directory must exist.
		// When (file_pull is True) this is the full path to the file on the remote SCP server to be copied to the NXOS device.

		remote_file?: string
	}
}

nxos_ntp_auth :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ntp_auth: {

		// MD5 String.

		md5string?: string

		// Manage the state of the resource.

		state?: string

		// Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.

		trusted_key?: string

		// Whether the given md5string is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.

		auth_type?: string

		// Turns NTP authentication on or off.

		authentication?: string

		// Authentication key identifier (numeric).

		key_id?: string
	}
}

nxos_ping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ping: {

		// Outgoing VRF.

		vrf?: string

		// Number of packets to send.

		count?: string

		// IP address or hostname (resolvable by switch) of remote node.

		dest: string

		// Source IP Address or hostname (resolvable by switch)

		source?: string

		// Determines if the expected result is success or fail.

		state?: string
	}
}

nxos_bgp_neighbor :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bgp_neighbor: {

		// Specify whether or not to shut down this neighbor under memory pressure.

		low_memory_exempt?: bool

		// Specify the password for neighbor. Valid value is string.

		pwd?: string

		// Configure to suppress 4-byte AS Capability.

		suppress_4_byte_as?: bool

		// Specify keepalive timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 60.

		timers_keepalive?: string

		// Specify whether or not to only allow passive connection setup. Valid values are 'true', 'false', and 'default', which defaults to 'false'. This property can only be configured when the neighbor is in 'ip' address format without prefix length.

		transport_passive_only?: bool

		// Specify multihop TTL for a remote peer. Valid values are integers between 2 and 255, or keyword 'default' to disable this property.

		ebgp_multihop?: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// Name of the VRF. The name 'default' is a valid VRF representing the global bgp.

		vrf?: string

		// Specify the encryption type the password will use. Valid values are '3des' or 'cisco_type_7' encryption or keyword 'default'.

		pwd_type?: string

		// Enables/Disables BFD for a given neighbor.
		// Dependency: 'feature bfd'

		bfd?: string

		// Configure whether or not to enable dynamic capability.

		dynamic_capability?: bool

		// Specify the local-as number for the eBGP neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.

		local_as?: string

		// Neighbor Identifier. Valid values are string. Neighbors may use IPv4 or IPv6 notation, with or without prefix length.

		neighbor: string

		// Configure to administratively shutdown this neighbor.

		shutdown?: bool

		// BGP autonomous system number. Valid values are string, Integer in ASPLAIN or ASDOT notation.

		asn: string

		// Configure whether or not to check for directly connected peer.

		connected_check?: bool

		// Description of the neighbor.

		description?: string

		// Specify whether or not to enable log messages for neighbor up/down event.

		log_neighbor_changes?: string

		// Specify Maximum number of peers for this neighbor prefix Valid values are between 1 and 1000, or 'default', which does not impose the limit. Note that this parameter is accepted only on neighbors with address/prefix.

		maximum_peers?: string

		// Specify Autonomous System Number of the neighbor. Valid values are String or Integer in ASPLAIN or ASDOT notation, or 'default', which means not to configure it.

		remote_as?: string

		// Specify the config to remove private AS number from outbound updates. Valid values are 'enable' to enable this config, 'disable' to disable this config, 'all' to remove all private AS number, or 'replace-as', to replace the private AS number.

		remove_private_as?: string

		// Specify holdtime timer value. Valid values are integers between 0 and 3600 in terms of seconds, or 'default', which is 180.

		timers_holdtime?: string

		// Configure whether or not to negotiate capability with this neighbor.

		capability_negotiation?: bool

		// Specify source interface of BGP session and updates.

		update_source?: string
	}
}

nxos_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_command: {

		// The commands to send to the remote NXOS device.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retires as expired.
		// The I(commands) argument also accepts an alternative form that allows for complex values that specify the command to run and the output format to return.   This can be done on a command by command basis.  The complex argument supports the keywords C(command) and C(output) where C(command) is the command to run and C(output) is one of 'text' or 'json'.

		commands: string

		// Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.

		interval?: string

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should by tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

		retries?: string

		// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.

		wait_for?: string
	}
}

nxos_nxapi :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_nxapi: {

		// Controls the operating state of the HTTP protocol as one of the underlying transports for NXAPI.  By default, NXAPI will enable the HTTP transport when the feature is first configured.  To disable the use of the HTTP transport, set the value of this argument to False.

		http?: bool

		// The NXAPI feature provides a web base UI for developers for entering commands.  This feature is initially disabled when the NXAPI feature is configured for the first time.  When the C(sandbox) argument is set to True, the developer sandbox URL will accept requests and when the value is set to False, the sandbox URL is unavailable. This is supported on NX-OS 7K series.

		sandbox?: bool

		// Controls the use of whether strong or weak ciphers are configured. By default, this feature is disabled and weak ciphers are configured.  To enable the use of strong ciphers, set the value of this argument to True.

		ssl_strong_ciphers?: bool

		// Controls the use of the Transport Layer Security version 1.0 is configured.  By default, this feature is enabled.  To disable the use of TLSV1.0, set the value of this argument to True.

		tlsv1_0?: bool

		// Controls the use of the Transport Layer Security version 1.1 is configured.  By default, this feature is disabled.  To enable the use of TLSV1.1, set the value of this argument to True.

		tlsv1_1?: bool

		// Configure the port with which the HTTP server will listen on for requests.  By default, NXAPI will bind the HTTP service to the standard HTTP port 80.  This argument accepts valid port values in the range of 1 to 65535.

		http_port?: string

		// Controls the operating state of the HTTPS protocol as one of the underlying transports for NXAPI.  By default, NXAPI will disable the HTTPS transport when the feature is first configured.  To enable the use of the HTTPS transport, set the value of this argument to True.

		https?: bool

		// Configure the port with which the HTTPS server will listen on for requests.  By default, NXAPI will bind the HTTPS service to the standard HTTPS port 443.  This argument accepts valid port values in the range of 1 to 65535.

		https_port?: string

		// The C(state) argument controls whether or not the NXAPI feature is configured on the remote device.  When the value is C(present) the NXAPI feature configuration is present in the device running-config.  When the values is C(absent) the feature configuration is removed from the running-config.

		state?: string

		// Controls the use of the Transport Layer Security version 1.2 is configured.  By default, this feature is disabled.  To enable the use of TLSV1.2, set the value of this argument to True.

		tlsv1_2?: bool
	}
}

nxos_pim_rp_address :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_pim_rp_address: {

		// Prefix list policy for static RP. Valid values are prefix-list policy names.

		prefix_list?: string

		// Route map policy for static RP. Valid values are route-map policy names.

		route_map?: string

		// Configures a Protocol Independent Multicast (PIM) static rendezvous point (RP) address. Valid values are unicast addresses.

		rp_address: string

		// Specify desired state of the resource.

		state: string

		// Group range is treated in PIM bidirectional mode.

		bidir?: bool

		// Group range for static RP. Valid values are multicast addresses.

		group_list?: string
	}
}

nxos_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_interface: {

		// Associate SVI with anycast gateway under VLAN configuration mode. Applicable for SVI interface only.

		fabric_forwarding_anycast_gateway?: bool

		// Manage Layer 2 or Layer 3 state of the interface. This option is supported for ethernet and portchannel interface. Applicable for ethernet and portchannel interface only.

		mode?: string

		// MTU for a specific interface. Must be an even number between 576 and 9216. Applicable for ethernet interface only.

		mtu?: string

		// Check the operational state of given interface C(name) for LLDP neighbor.
		// The following suboptions are available. This is state check parameter only.

		neighbors?: string

		// Administrative state of the interface.

		admin_state?: string

		// Interface description.

		description?: string

		// Receiver rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		rx_rate?: string

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.

		delay?: string

		// Interface type to be unconfigured from the device.

		interface_type?: string

		// Enable/Disable ip forward feature on SVIs.

		ip_forward?: string

		// Specify desired state of the resource.

		state?: string

		// Full name of interface, i.e. Ethernet1/1, port-channel10.

		name: string

		// Interface link speed. Applicable for ethernet interface only.

		speed?: string

		// Transmit rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		tx_rate?: string

		// List of Interfaces definitions.

		aggregate?: string

		// Interface link status. Applicable for ethernet interface only.

		duplex?: string
	}
}

nxos_lacp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_lacp: {

		// LACP global options.

		config?: {...}

		// The state of the configuration after module completion.

		state?: string
	}
}

nxos_lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_lldp: {

		state?: string

		// State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.
	}
}

nxos_reboot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_reboot: {

		confirm?: bool

		// Safeguard boolean. Set to true if you're sure you want to reboot.
	}
}

nxos_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_user: {

		// The C(state) argument configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

		state?: string

		// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

		update_password?: string

		// The set of username objects to be configured on the remote Cisco Nexus device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(name) argument.

		aggregate?: string

		// The password to be configured on the network device. The password needs to be provided in cleartext and it will be encrypted on the device. Please note that this option is not same as C(provider password).

		configured_password?: string

		// The username to be configured on the remote Cisco Nexus device.  This argument accepts a string value and is mutually exclusive with the C(aggregate) argument.

		name?: string

		// The C(purge) argument instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per nxos constraints.

		purge?: bool

		// The C(role) argument configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.

		role?: string

		// The C(sshkey) argument defines the SSH public key to configure for the username.  This argument accepts a valid SSH key value.

		sshkey?: string
	}
}

nxos_lldp_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_lldp_global: {

		// A list of link layer discovery configurations

		config?: {...}

		// The state of the configuration after module completion

		state?: string
	}
}

nxos_snmp_community :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_community: {

		// Case-sensitive community string.

		community: string

		// Group to which the community belongs.

		group?: string

		// Manage the state of the resource.

		state?: string

		// Access type for community.

		access?: string

		// ACL name to filter snmp requests or keyword 'default'.

		acl?: string
	}
}

nxos_aaa_server :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_aaa_server: {

		// Enables direct authentication requests to AAA server or keyword 'default' Device default is disabled.

		directed_request?: string

		// The state of encryption applied to the entered global key. O clear text, 7 encrypted. Type-6 encryption is not supported.

		encrypt_type?: string

		// Global AAA shared secret or keyword 'default'.

		global_key?: string

		// Global AAA server timeout period, in seconds or keyword 'default. Range is 1-60. Device default is 5.

		server_timeout?: string

		// The server type is either radius or tacacs.

		server_type: string

		// Manage the state of the resource.

		state?: string

		// Duration for which a non-reachable AAA server is skipped, in minutes or keyword 'default. Range is 1-1440. Device default is 0.

		deadtime?: string
	}
}

nxos_acl_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_acl_interface: {

		// Direction ACL to be applied in on the interface.

		direction: string

		// Full name of interface, e.g. I(Ethernet1/1).

		interface: string

		// Case sensitive name of the access list (ACL).

		name: string

		// Specify desired state of the resource.

		state?: string
	}
}

nxos_evpn_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_evpn_global: {

		nv_overlay_evpn: bool

		// EVPN control plane.
	}
}

nxos_gir :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_gir: {

		// Keeps the switch in maintenance mode for a specified number of minutes. Range is 5-65535.

		system_mode_maintenance_timeout?: string

		// Specify desired state of the resource.

		state: string

		// When C(system_mode_maintenance=true) it puts all enabled protocols in maintenance mode (using the isolate command). When C(system_mode_maintenance=false) it puts all enabled protocols in normal mode (using the no isolate command).

		system_mode_maintenance?: bool

		// When C(system_mode_maintenance_dont_generate_profile=true) it prevents the dynamic searching of enabled protocols and executes commands configured in a maintenance-mode profile. Use this option if you want the system to use a maintenance-mode profile that you have created. When C(system_mode_maintenance_dont_generate_profile=false) it prevents the dynamic searching of enabled protocols and executes commands configured in a normal-mode profile. Use this option if you want the system to use a normal-mode profile that you have created.

		system_mode_maintenance_dont_generate_profile?: bool

		// Boots the switch into maintenance mode automatically in the event of a specified system crash. Note that not all reset reasons are applicable for all platforms. Also if reset reason is set to match_any, it is not idempotent as it turns on all reset reasons. If reset reason is match_any and state is absent, it turns off all the reset reasons.

		system_mode_maintenance_on_reload_reset_reason?: string

		// Shuts down all protocols, vPC domains, and interfaces except the management interface (using the shutdown command). This option is disruptive while C(system_mode_maintenance) (which uses the isolate command) is not.

		system_mode_maintenance_shutdown?: bool
	}
}

nxos_hsrp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_hsrp: {

		// Specify desired state of the resource.

		state?: string

		// HSRP virtual IP address or keyword 'default'

		vip?: string

		// Authentication type.

		auth_type?: string

		// HSRP group number.

		group: string

		// Full name of interface that is being managed for HSRP.

		interface: string

		// Enable/Disable preempt.

		preempt?: string

		// Authentication string. If this needs to be hidden(for md5 type), the string should be 7 followed by the key string. Otherwise, it can be 0 followed by key string or just key string (for backward compatibility). For text type, this should be just be a key string. if this is 'default', authentication is removed.

		auth_string?: string

		// HSRP priority or keyword 'default'.

		priority?: string

		// HSRP version.

		version?: string
	}
}

nxos_l3_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_l3_interfaces: {

		// A dictionary of Layer-3 interface options

		config?: [...{...}]

		// The state of the configuration after module completion.

		state?: string
	}
}

nxos_snmp_traps :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_traps: {

		// Case sensitive group.

		group: string

		// Manage the state of the resource.

		state?: string
	}
}

nxos_snmp_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_user: {

		// Group to which the user will belong to. If state = present, and the user is existing, the group is added to the user. If the user is not existing, user entry is created with this group argument. If state = absent, only the group is removed from the user entry. However, to maintain backward compatibility, if the existing user belongs to only one group, and if group argument is same as the existing user's group, then the user entry also is deleted.

		group?: string

		// Privacy password for the user. This is not idempotent

		privacy?: string

		// Authentication password when using md5 or sha. This is not idempotent

		pwd?: string

		// Manage the state of the resource.

		state?: string

		// Name of the user.

		user: string

		// Authentication parameters for the user.

		authentication?: string

		// Enables AES-128 bit encryption when using privacy password.

		encrypt?: bool
	}
}

nxos_vpc_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vpc_interface: {

		// Set to true/false for peer link config on associated portchannel.

		peer_link?: bool

		// Group number of the portchannel that will be configured.

		portchannel: string

		// Manages desired state of the resource.

		state: string

		// VPC group/id that will be configured on associated portchannel.

		vpc?: string
	}
}

nxos_vrrp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vrrp: {

		// Clear text authentication string or 'default' keyword

		authentication?: string

		// Enable/Disable preempt.

		preempt?: bool

		// VRRP priority or 'default' keyword

		priority?: string

		// Used to enable or disable the VRRP process.

		admin_state?: string

		// Full name of interface that is being managed for VRRP.

		interface: string

		// Time interval between advertisement or 'default' keyword

		interval?: string

		// Specify desired state of the resource.

		state?: string

		// VRRP virtual IP address or 'default' keyword

		vip?: string

		// VRRP group number.

		group: string
	}
}

nxos_pim_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_pim_interface: {

		// Full name of the interface such as Ethernet1/33.

		interface: string

		// Policy for join-prune messages (inbound).

		jp_policy_in?: string

		// Policy for join-prune messages (outbound).

		jp_policy_out?: string

		// Type of policy mapped to C(jp_policy_in).

		jp_type_in?: string

		// Enable/disable sparse-mode on the interface.

		sparse?: bool

		// Configures interface to be a boundary of a PIM domain.

		border?: bool

		// Configures priority for PIM DR election on interface.

		dr_prio?: string

		// Hello interval in milliseconds for this interface.

		hello_interval?: int

		// Authentication for hellos on this interface.

		hello_auth_key?: string

		// Manages desired state of the resource.

		state?: string

		// Type of policy mapped to neighbor_policy.

		neighbor_type?: string

		// Enables BFD for PIM at the interface level. This overrides the bfd variable set at the pim global level.
		// Valid values are 'enable', 'disable' or 'default'.
		// Dependency: 'feature bfd'

		bfd?: string

		// Type of policy mapped to C(jp_policy_out).

		jp_type_out?: string

		// Configures a neighbor policy for filtering adjacencies.

		neighbor_policy?: string
	}
}

nxos_system :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_system: {

		// Enables or disables the DNS lookup feature in Cisco NXOS.  This argument accepts boolean values.  When enabled, the system will try to resolve hostnames using DNS and when disabled, hostnames will not be resolved.

		domain_lookup?: bool

		// Configures the default domain name suffix to be used when referencing this node by its FQDN.  This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.

		domain_name?: string

		// Configures a list of domain name suffixes to search when performing DNS name resolution. This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.

		domain_search?: string

		// Configure the device hostname parameter. This option takes an ASCII string value or keyword 'default'

		hostname?: string

		// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers or a list of hashes that configure the name server and VRF name or keyword 'default'. See examples.

		name_servers?: string

		// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

		state?: string

		// Specifies the mtu, must be an integer or keyword 'default'.

		system_mtu?: string
	}
}

nxos_aaa_server_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_aaa_server_host: {

		// Address or name of the radius or tacacs host.

		address: string

		// Alternate UDP port for RADIUS authentication or keyword 'default'.

		auth_port?: string

		// The state of encryption applied to the entered key. O for clear text, 7 for encrypted. Type-6 encryption is not supported.

		encrypt_type?: string

		// The server type is either radius or tacacs.

		server_type: string

		// Alternate TCP port TACACS Server or keyword 'default'.

		tacacs_port?: string

		// Alternate UDP port for RADIUS accounting or keyword 'default'.

		acct_port?: string

		// Timeout period for specified host, in seconds or keyword 'default. Range is 1-60.

		host_timeout?: string

		// Shared secret for the specified host or keyword 'default'.

		key?: string

		// Manage the state of the resource.

		state?: string
	}
}

nxos_bgp_neighbor_af :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bgp_neighbor_af: {

		// Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the non-exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_non_exist_map']. This command is mutually exclusive with the advertise_map_exist property.

		advertise_map_non_exist?: string

		// Activate the next-hop-third-party feature.

		next_hop_third_party?: bool

		// suppress-inactive feature.

		suppress_inactive?: bool

		// Conditional route advertisement. This property requires two route maps, an advertise-map and an exist-map. Valid values are an array specifying both the advertise-map name and the exist-map name, or simply 'default' e.g. ['my_advertise_map', 'my_exist_map']. This command is mutually exclusive with the advertise_map_non_exist property.

		advertise_map_exist?: string

		// send-community attribute.

		send_community?: string

		// Site-of-origin. Valid values are a string defining a VPN extcommunity or 'default'.

		soo?: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).

		additional_paths_receive?: string

		// Activate allowas-in property

		allowas_in?: bool

		// Valid values are a string defining a prefix-list name, or 'default'.

		prefix_list_out?: string

		// Router reflector client.

		route_reflector_client?: bool

		// Activate the default-originate feature.

		default_originate?: bool

		// Valid values are a string defining a route-map name, or 'default'.

		route_map_out?: string

		// unsuppress-map. Valid values are a string defining a route-map name or 'default'.

		unsuppress_map?: string

		// Valid values are 'enable' for basic command enablement; 'always' to add the always keyword to the basic command; and 'inherit' to remove the command at this level (the command value is inherited from a higher BGP layer).

		soft_reconfiguration_in?: string

		// Weight value. Valid values are an integer value or 'default'.

		weight?: string

		// Max-occurrences value for allowas_in. Valid values are an integer value or 'default'. This is mutually exclusive with allowas_in.

		allowas_in_max?: string

		// BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.

		asn: string

		// Valid values are a string defining a filter-list name, or 'default'.

		filter_list_out?: string

		// Sub Address Family Identifier.

		safi: string

		// Valid values are enable for basic command enablement; disable for disabling the command at the neighbor af level (it adds the disable keyword to the basic command); and inherit to remove the command at this level (the command value is inherited from a higher BGP layer).

		additional_paths_send?: string

		// Route-map for the default_originate property. Valid values are a string defining a route-map name, or 'default'. This is mutually exclusive with default_originate.

		default_originate_route_map?: string

		// Disable checking of peer AS-number while advertising

		disable_peer_as_check?: bool

		// Optional warning-only keyword. Requires max_prefix_limit. May not be combined with max_prefix_interval.

		max_prefix_warning?: bool

		// Activate the next-hop-self feature.

		next_hop_self?: bool

		// Valid values are a string defining a prefix-list name, or 'default'.

		prefix_list_in?: string

		// Name of the VRF. The name 'default' is a valid VRF representing the global bgp.

		vrf?: string

		// Optional restart interval. Valid values are an integer. Requires max_prefix_limit. May not be combined with max_prefix_warning.

		max_prefix_interval?: string

		// maximum-prefix limit value. Valid values are an integer value or 'default'.

		max_prefix_limit?: string

		// Optional threshold percentage at which to generate a warning. Valid values are an integer value. Requires max_prefix_limit.

		max_prefix_threshold?: string

		// Neighbor Identifier. Valid values are string. Neighbors may use IPv4 or IPv6 notation, with or without prefix length.

		neighbor: string

		// Address Family Identifier.

		afi: string

		// Activate the as-override feature.

		as_override?: bool

		// Valid values are a string defining a filter-list name, or 'default'.

		filter_list_in?: string

		// Valid values are a string defining a route-map name, or 'default'.

		route_map_in?: string
	}
}

nxos_igmp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_igmp: {

		// Removes routes when the IGMP process is restarted. By default, routes are not flushed.

		flush_routes?: bool

		// Restarts the igmp process (using an exec config command).

		restart?: bool

		// Manages desired state of the resource.

		state?: string

		// Enables or disables the enforce router alert option check for IGMPv2 and IGMPv3 packets.

		enforce_rtr_alert?: bool
	}
}

nxos_igmp_snooping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_igmp_snooping: {

		// Group membership timeout value for all VLANs on the device. Accepted values are integer in range 1-10080, I(never) and I(default).

		group_timeout?: string

		// Global link-local groups suppression.

		link_local_grp_supp?: bool

		// Global IGMPv1/IGMPv2 Report Suppression.

		report_supp?: bool

		// Enables/disables IGMP snooping on the switch.

		snooping?: bool

		// Manage the state of the resource.

		state?: string

		// Global IGMPv3 Report Suppression and Proxy Reporting.

		v3_report_supp?: bool
	}
}

nxos_ospf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ospf: {

		// Name of the ospf instance.

		ospf: string

		// Determines whether the config should be present or not on the device.

		state?: string
	}
}

nxos_ospf_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ospf_vrf: {

		// Specify initial Shortest Path First (SPF) schedule delay. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_spf_start?: string

		// Name of the resource instance. Valid value is a string. The name 'default' is a valid VRF representing the global OSPF.

		vrf?: string

		// Specifies the reference bandwidth used to assign OSPF cost. Valid values are an integer, in Mbps, or the keyword 'default'.

		auto_cost?: string

		// Name of the OSPF instance.

		ospf: string

		// State of ospf vrf configuration.

		state?: string

		// Specify the max interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_lsa_max?: string

		// Enables BFD on all OSPF interfaces.
		// Dependency: 'feature bfd'

		bfd?: string

		// Setting to C(yes) will suppress routing update on interface.

		passive_interface?: bool

		// Specify the maximum wait time between Shortest Path First (SPF) calculations. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_spf_max?: string

		// Specify the default Metric value. Valid values are an integer or the keyword 'default'.

		default_metric?: string

		// Specify minimum hold time between Shortest Path First (SPF) calculations. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_spf_hold?: string

		// Specify the hold interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_lsa_hold?: string

		// Specify the start interval for rate-limiting Link-State Advertisement (LSA) generation. Valid values are an integer, in milliseconds, or the keyword 'default'.

		timer_throttle_lsa_start?: string

		// Controls the level of log messages generated whenever a neighbor changes state. Valid values are 'log', 'detail', and 'default'.

		log_adjacency?: string

		// Router Identifier (ID) of the OSPF router VRF instance.

		router_id?: string
	}
}

nxos_gir_profile_management :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_gir_profile_management: {

		// List of commands to be included into the profile.

		commands?: string

		// Configure the profile as Maintenance or Normal mode.

		mode: string

		// Specify desired state of the resource.

		state?: string
	}
}

nxos_install_os :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_install_os: {

		// Name of the kickstart image file on flash. (Not required on all Nexus platforms)

		kickstart_image_file?: string

		// Name of the system (or combined) image file on flash.

		system_image_file: string

		// Upgrade using In Service Software Upgrade (ISSU). (Supported on N5k, N7k, N9k platforms)
		// Selecting 'required' or 'yes' means that upgrades will only proceed if the switch is capable of ISSU.
		// Selecting 'desired' means that upgrades will use ISSU if possible but will fall back to disruptive upgrade if needed.
		// Selecting 'no' means do not use ISSU. Forced disruptive.

		issu?: string
	}
}

nxos_smu :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_smu: {

		// The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.

		file_system?: string

		// Name of the remote package.

		pkg: string
	}
}

nxos_snmp_contact :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_contact: {

		// Contact information.

		contact: string

		// Manage the state of the resource.

		state: string
	}
}

nxos_telemetry :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_telemetry: {

		// The provided configuration

		config?: {...}

		// Final configuration state

		state?: string
	}
}

nxos_vtp_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vtp_domain: {

		domain: string

		// VTP domain name.
	}
}

nxos_bfd_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bfd_global: {

		// BFD interval timer values.
		// Value must be a dict defining values for keys (tx, min_rx, and multiplier)

		interval?: {...}

		// BFD IPv6 interval timer values.
		// Value must be a dict defining values for keys (tx, min_rx, and multiplier).

		ipv6_interval?: {...}

		// BFD fabricpath interval timer values.
		// Value must be a dict defining values for keys (tx, min_rx, and multiplier).

		fabricpath_interval?: {...}

		// BFD fabricpath slow rate timer in milliseconds.

		fabricpath_slow_timer?: int

		// BFD IPv6 session echo receive interval in milliseconds.

		ipv6_echo_rx_interval?: int

		// BFD IPv6 slow rate timer in milliseconds.

		ipv6_slow_timer?: int

		// BFD slow rate timer in milliseconds.

		slow_timer?: int

		// BFD IPv4 interval timer values.
		// Value must be a dict defining values for keys (tx, min_rx, and multiplier).

		ipv4_interval?: {...}

		// BFD IPv4 slow rate timer in milliseconds.

		ipv4_slow_timer?: int

		// BFD delayed startup timer in seconds.
		// Not supported on N5K/N6K/N7K

		startup_timer?: int

		// Loopback interface used for echo frames.
		// Valid values are loopback interface name or 'deleted'.
		// Not supported on N5K/N6K

		echo_interface?: string

		// BFD Echo receive interval in milliseconds.

		echo_rx_interval?: int

		// BFD fabricpath control vlan.

		fabricpath_vlan?: int

		// BFD IPv4 session echo receive interval in milliseconds.

		ipv4_echo_rx_interval?: int
	}
}

nxos_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_facts: {

		// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'bfd_interfaces', 'lag_interfaces', 'telemetry', 'vlans', 'lacp', 'lacp_interfaces', 'interfaces', 'l3_interfaces', 'l2_interfaces', 'lldp_global'.

		gather_network_resources?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, legacy, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

		gather_subset?: string
	}
}

nxos_lag_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_lag_interfaces: {

		// The state of the configuration after module completion.

		state?: string

		// A list of link aggregation group configurations.

		config?: [...]
	}
}

nxos_rpm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_rpm: {

		// List of RPM/patch definitions.

		aggregate?: string

		// The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.

		file_system?: string

		// Name of the RPM package.

		pkg: string

		// If the state is present, the rpm will be installed, If the state is absent, it will be removed.

		state?: string
	}
}

nxos_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vlan: {

		// Manage the vlan operational state of the VLAN

		vlan_state?: string

		// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.

		associated_interfaces?: [...]

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.

		delay?: int

		// Range of VLANs such as 2-10 or 2,5,10-15, etc.

		vlan_range?: string

		// The Virtual Network Identifier (VNI) ID that is mapped to the VLAN. Valid values are integer and keyword 'default'. Range 4096-16773119.

		mapped_vni?: string

		// Set VLAN mode to classical ethernet or fabricpath. This is a valid option for Nexus 5000 and 7000 series.

		mode?: string

		// Name of VLAN or keyword 'default'.

		name?: string

		// Purge VLANs not defined in the I(aggregate) parameter. This parameter can be used without aggregate as well.
		// Removal of Vlan 1 is not allowed and will be ignored by purge.

		purge?: bool

		// Manage the state of the resource.

		state?: string

		// Manage the VLAN administrative state of the VLAN equivalent to shut/no shut in VLAN config mode.

		admin_state?: string

		// List of VLANs definitions.

		aggregate?: [...]

		// List of interfaces that should be associated to the VLAN or keyword 'default'.

		interfaces?: [...]

		// Single VLAN ID.

		vlan_id?: int
	}
}

nxos_l3_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_l3_interface: {

		// IPv6 of the L3 interface.

		ipv6?: string

		// Name of the L3 interface.

		name?: string

		// State of the L3 interface configuration.

		state?: string

		// List of L3 interfaces definitions.

		aggregate?: string

		// IPv4 of the L3 interface.

		ipv4?: string
	}
}

nxos_lacp_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_lacp_interfaces: {

		// A dictionary of LACP interfaces options.

		config?: [...{...}]

		// The state of the configuration after module completion.

		state?: string
	}
}

nxos_overlay_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_overlay_global: {

		anycast_gateway_mac: string

		// Anycast gateway mac of the switch.
	}
}

nxos_pim :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_pim: {

		// Enables BFD on all PIM interfaces.
		// Dependency: 'feature bfd'

		bfd?: string

		// Configure group ranges for Source Specific Multicast (SSM). Valid values are multicast addresses or the keyword C(none) or keyword C(default). C(none) removes all SSM group ranges. C(default) will set ssm_range to the default multicast address. If you set multicast address, please ensure that it is not the same as the C(default), otherwise use the C(default) option.

		ssm_range: string
	}
}

nxos_ntp_options :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_ntp_options: {

		// Sets whether NTP logging is enabled on the device.

		logging?: bool

		// Sets whether the device is an authoritative NTP server.

		master?: bool

		// Manage the state of the resource.

		state?: string

		// If C(master=true), an optional stratum can be supplied (1-15). The device default is 8.

		stratum?: string
	}
}

nxos_snapshot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snapshot: {

		// Specify the tags used to distinguish among row entries, to be used when C(action=add).

		element_key2?: string

		// Specify the path of the file where new created snapshot or snapshots comparison will be stored, to be used when C(action=create) and C(save_snapshot_locally=true) or C(action=compare).

		path?: string

		// Specifies the tag of each row entry of the show command's XML output, to be used when C(action=add).

		row_id?: string

		// Specify to locally store a new created snapshot, to be used when C(action=create).

		save_snapshot_locally?: bool

		// Second snapshot to be used when C(action=compare).

		snapshot2?: string

		// Snapshot options to be used when C(action=compare).

		compare_option?: string

		// Used to name the show command output, to be used when C(action=add).

		section?: string

		// Specify a new show command, to be used when C(action=add).

		show_command?: string

		// Define what snapshot action the module would perform.

		action: string

		// Snapshot description to be used when C(action=create).

		description?: string

		// Specify the tags used to distinguish among row entries, to be used when C(action=add).

		element_key1?: string

		// Name of the file where snapshots comparison will be stored when C(action=compare).

		comparison_results_file?: string

		// Snapshot name, to be used when C(action=create) or C(action=delete).

		snapshot_name?: string

		// First snapshot to be used when C(action=compare).

		snapshot1?: string
	}
}

nxos_l2_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_l2_interface: {

		// Mode in which interface needs to be configured.

		mode?: string

		// Full name of the interface excluding any logical unit number, i.e. Ethernet1/1.

		name: string

		// Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.

		native_vlan?: string

		// Manage the state of the Layer-2 Interface configuration.

		state?: string

		// List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the only VLANs that will be configured on the trunk, i.e. "2-10,15".

		trunk_allowed_vlans?: string

		// List of VLANs to be configured in trunk port. If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk.

		trunk_vlans?: string

		// Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.

		access_vlan?: string

		// List of Layer-2 interface definitions.

		aggregate?: string
	}
}

nxos_linkagg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_linkagg: {

		// When true it forces link aggregation group members to match what is declared in the members param. This can be used to remove members.

		force?: bool

		// Channel-group number for the port-channel Link aggregation group.

		group: string

		// List of interfaces that will be managed in the link aggregation group.

		members?: [...]

		// Minimum number of ports required up before bringing up the link aggregation group.

		min_links?: int

		// Mode for the link aggregation group.

		mode?: string

		// Purge links not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the link aggregation group.

		state?: string

		// List of link aggregation definitions.

		aggregate?: [...]
	}
}

nxos_vpc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vpc: {

		// Enables/Disables auto recovery on platforms that support disable
		// timers are not modifiable with this attribute
		// mutually exclusive with auto_recovery_reload_delay

		auto_recovery?: bool

		// manages delay restore command and config value in seconds

		delay_restore?: string

		// manages delay restore interface-vlan command and config value in seconds
		// not supported on all platforms

		delay_restore_interface_vlan?: string

		// manages delay restore orphan-port command and config value in seconds
		// not supported on all platforms

		delay_restore_orphan_port?: string

		// VPC domain

		domain: string

		// Destination (remote) IP address used for peer keepalive link
		// pkl_dest is required whenever pkl options are used.

		pkl_dest?: string

		// System priority device.  Remember they must match between peers.

		system_priority?: string

		// Manages auto-recovery reload-delay timer in seconds
		// mutually exclusive with auto_recovery

		auto_recovery_reload_delay?: string

		// Enables/Disables peer gateway

		peer_gw?: bool

		// Source IP address used for peer keepalive link

		pkl_src?: string

		// VRF used for peer keepalive link
		// The VRF must exist on the device before using pkl_vrf.
		// (Note) 'default' is an overloaded term: Default vrf context for pkl_vrf is 'management'; 'pkl_vrf: default' refers to the literal 'default' rib.

		pkl_vrf?: string

		// Role priority for device. Remember lower is better.

		role_priority?: string

		// Manages desired state of the resource

		state: string
	}
}

nxos_vrf_af :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vrf_af: {

		// Name of the VRF.

		vrf: string

		// Address-Family Identifier (AFI).

		afi: string

		// Enable/Disable the EVPN route-target 'auto' setting for both import and export target communities.

		route_target_both_auto_evpn?: bool

		// Determines whether the config should be present or not on the device.

		state?: string
	}
}

nxos_vtp_version :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_vtp_version: {

		version: string

		// VTP version number.
	}
}

nxos_bgp_af :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_bgp_af: {

		// Specify max suppress time for route-flap dampening stable route. Valid values are integer and keyword 'default'.

		dampening_max_suppress_time?: string

		// Specify route suppress time for route-flap dampening. Valid values are integer and keyword 'default'.

		dampening_suppress_time?: string

		// An array of route-map names which will specify prefixes to inject. Each array entry must first specify the inject-map name, secondly an exist-map name, and optionally the copy-attributes keyword which indicates that attributes should be copied from the aggregate. For example [['lax_inject_map', 'lax_exist_map'], ['nyc_inject_map', 'nyc_exist_map', 'copy-attributes'], ['fsd_inject_map', 'fsd_exist_map']].

		inject_map?: string

		// A list of redistribute directives. Multiple redistribute entries are allowed. The list must be in the form of a nested array. the first entry of each array defines the source-protocol to redistribute from; the second entry defines a route-map name. A route-map is highly advised but may be optional on some platforms, in which case it may be omitted from the array list. For example [['direct', 'rm_direct'], ['lisp', 'rm_lisp']].

		redistribute?: string

		// Name of the VRF. The name 'default' is a valid VRF representing the global bgp.

		vrf: string

		// Specify dampen value for IGP metric-related changes, in seconds. Valid values are integer and keyword 'default'.

		dampen_igp_metric?: string

		// Specify decay half-life in minutes for route-flap dampening. Valid values are integer and keyword 'default'.

		dampening_half_time?: string

		// Configures the capability of selecting additional paths for a prefix. Valid values are a string defining the name of the route-map.

		additional_paths_selection?: string

		// Advertise evpn routes.

		advertise_l2vpn_evpn?: bool

		// Configures the maximum number of equal-cost paths for load sharing. Valid value is an integer in the range 1-64.

		maximum_paths?: string

		// Enables the receive capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.

		additional_paths_receive?: bool

		// Networks to configure. Valid value is a list of network prefixes to advertise. The list must be in the form of an array. Each entry in the array must include a prefix address and an optional route-map. For example [['10.0.0.0/16', 'routemap_LA'], ['192.168.1.1', 'Chicago'], ['192.168.2.0/24'], ['192.168.3.0/24', 'routemap_NYC']].

		networks?: string

		// Sub Address Family Identifier.

		safi: string

		// Advertises only active routes to peers.

		suppress_inactive?: bool

		// Filters routes rejected by the route-map and does not download them to the RIB.

		table_map_filter?: bool

		// Sets default metrics for routes redistributed into BGP. Valid values are Integer or keyword 'default'

		default_metric?: string

		// Specify route-map for route-flap dampening. Valid values are a string defining the name of the route-map.

		dampening_routemap?: string

		// Sets the administrative distance for eBGP routes. Valid values are Integer or keyword 'default'.

		distance_ebgp?: string

		// Configures the maximum number of ibgp equal-cost paths for load sharing. Valid value is an integer in the range 1-64.

		maximum_paths_ibgp?: string

		// Configure a route-map for valid nexthops. Valid values are a string defining the name of the route-map.

		next_hop_route_map?: string

		// Install a backup path into the forwarding table and provide prefix independent convergence (PIC) in case of a PE-CE link failure.

		additional_paths_install?: bool

		// Enable/disable route-flap dampening.

		dampening_state?: bool

		// Default information originate.

		default_information_originate?: bool

		// Sets the administrative distance for iBGP routes. Valid values are Integer or keyword 'default'.

		distance_ibgp?: string

		// Sets the administrative distance for local BGP routes. Valid values are Integer or keyword 'default'.

		distance_local?: string

		// Determines whether the config should be present or not on the device.

		state?: string

		// Apply table-map to filter routes downloaded into URIB. Valid values are a string.

		table_map?: string

		// Address Family Identifier.

		afi: string

		// BGP autonomous system number. Valid values are String, Integer in ASPLAIN or ASDOT notation.

		asn: string

		// Configure client-to-client route reflection.

		client_to_client?: bool

		// Specify route reuse time for route-flap dampening. Valid values are integer and keyword 'default'.

		dampening_reuse_time?: string

		// Enables the send capability of additional paths for all of the neighbors under this address family for which the capability has not been disabled.

		additional_paths_send?: bool
	}
}

nxos_snmp_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_snmp_host: {

		// SNMP version. If this is not specified, v1 is used.

		version?: string

		// VRF to use to source traffic to source. If state = absent, the vrf is removed.

		vrf?: string

		// Name of VRF to filter. If state = absent, the vrf is removed from the filter.

		vrf_filter?: string

		// Community string or v3 username.

		community?: string

		// Manage the state of the resource. If state = present, the host is added to the configuration. If only vrf and/or vrf_filter and/or src_intf are given, they will be added to the existing host configuration. If state = absent, the host is removed if community parameter is given. It is possible to remove only vrf and/or src_int and/or vrf_filter by providing only those parameters and no community parameter.

		state?: string

		// UDP port number (0-65535).

		udp?: string

		// Use this when verion is v3. SNMPv3 Security level.

		v3?: string

		// IP address of hostname of target host.

		snmp_host: string

		// type of message to send to host. If this is not specified, trap type is used.

		snmp_type?: string

		// Source interface. Must be fully qualified interface name. If state = absent, the interface is removed.

		src_intf?: string
	}
}

nxos_static_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nxos_static_route: {

		// Next hop address or interface of static route. If interface, it must be the fully-qualified interface name.

		next_hop: string

		// Track value (range 1 - 512). Track must already be configured on the device before adding the route.

		track?: string

		// Name of the route or keyword 'default'. Used with the name parameter on the CLI.

		route_name?: string

		// Manage the state of the resource.

		state?: string

		// Route tag value (numeric) or keyword 'default'.

		tag?: string

		// VRF for static route.

		vrf?: string

		// List of static route definitions

		aggregate?: string

		// Preference or administrative difference of route (range 1-255) or keyword 'default'.

		pref?: string

		// Destination prefix of static route.

		prefix: string
	}
}
