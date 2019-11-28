package onyx

onyx_linkagg :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_linkagg: {

		// Mode of the link aggregation group. A value of C(on) will enable LACP. C(active) configures the link to actively information about the state of the link, or it can be configured in C(passive) mode ie. send link state information only when received them from another link.

		mode?: string

		// Name of the link aggregation group.

		name: string

		// Purge link aggregation groups not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the link aggregation group.

		state?: string

		// List of link aggregation definitions.

		aggregate?: string

		// List of members interfaces of the link aggregation group. The value can be single interface or list of interfaces.

		members: string
	}
}

onyx_command :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_command: {

		// List of commands to send to the remote Mellanox ONYX network device. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.

		commands: string

		// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: string

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

		retries?: string

		// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

		wait_for?: string
	}
}

onyx_igmp_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_igmp_interface: {

		// interface name that we want to configure IGMP on it

		name: string

		// IGMP Interface state.

		state?: string
	}
}

onyx_pfc_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_pfc_interface: {

		// List of interfaces PFC should be configured on.

		aggregate?: string

		// Name of the interface PFC should be configured on.

		name?: string

		// Purge interfaces not defined in the aggregate parameter.

		purge?: bool

		// State of the PFC configuration.

		state?: string
	}
}

onyx_protocol :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_protocol: {

		// BGP protocol

		bgp?: string

		// IP IGMP snooping

		igmp_snooping?: string

		// IP L3 support

		ip_l3?: string

		// LLDP protocol

		lldp?: string

		// nve protocol

		nve?: string

		// OSPF protocol

		ospf?: string

		// DCB priority flow control

		dcb_pfc?: string

		// IP routing support

		ip_routing?: string

		// LACP protocol

		lacp?: string

		// MAGP protocol

		magp?: string

		// MLAG protocol

		mlag?: string

		// Spanning Tree support

		spanning_tree?: string
	}
}

onyx_wjh :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_wjh: {

		// wjh group auto export pcap file status

		auto_export?: bool

		// clear pcap file by group

		clear_group?: string

		// wjh group status

		enabled?: bool

		// wjh group auto export group

		export_group?: string

		// Name of wjh group.

		group?: string
	}
}

onyx_buffer_pool :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_buffer_pool: {

		// memory percent.

		memory_percent?: string

		// pool name.

		name: string

		// pool type.

		pool_type?: string

		// switch priority, range 1-7.

		switch_priority?: string
	}
}

onyx_igmp :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_igmp: {

		// Configure ip igmp snooping proxy and enable reporting mode

		proxy_reporting?: string

		// Configure the report suppression interval, range 1-25

		report_suppression_interval?: string

		// IGMP state.

		state: string

		// Configure the unregistered multicast mode Flood unregistered multicast Forward unregistered multicast to mrouter ports

		unregistered_multicast?: string

		// Configure the default operating version of the IGMP snooping

		default_version?: string

		// Configure the last member query interval, range 1-25

		last_member_query_interval?: string

		// Configure the mrouter timeout, range 60-600

		mrouter_timeout?: string

		// Configure the host port purge timeout, range 130-1225

		port_purge_timeout?: string
	}
}

onyx_vxlan :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_vxlan: {

		// nve interface ID.

		nve_id: string

		// Each item in the list has two attributes vlan_id, vni_id.

		vni_vlan_list?: string

		// A flag telling if to configure arp suppression.

		arp_suppression?: bool

		// configure bgp on nve interface.

		bgp?: bool

		// loopback interface ID.

		loopback_id?: string

		// vxlan Mlag tunnel IP

		mlag_tunnel_ip?: string
	}
}

onyx_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_interface: {

		// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

		state?: string

		// List of Interfaces definitions.

		aggregate?: string

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down).

		delay?: string

		// Interface link status

		duplex?: string

		// Interface link status.

		enabled?: bool

		// Maximum size of transmit packet.

		mtu?: string

		// Purge Interfaces not defined in the aggregate parameter. This applies only for logical interface.

		purge?: bool

		// Receiver rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		rx_rate?: string

		// Description of Interface.

		description?: string

		// Name of the Interface.

		name: string

		// Interface link speed.

		speed?: string

		// Transmit rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		tx_rate?: string
	}
}

onyx_magp :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_magp: {

		// MAGP router MAC address.

		router_mac?: string

		// MAGP state.

		state?: string

		// VLAN Interface name.

		interface: string

		// MAGP instance number 1-255

		magp_id: string

		// MAGP router IP address.

		router_ip?: string
	}
}

onyx_vlan :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_vlan: {

		// State of the VLAN configuration.

		state?: string

		// ID of the VLAN.

		vlan_id?: string

		// List of VLANs definitions.

		aggregate?: string

		// Name of the VLAN.

		name?: string

		// Purge VLANs not defined in the I(aggregate) parameter.

		purge?: bool
	}
}

onyx_l3_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_l3_interface: {

		// IPv6 of the L3 interface (not supported for now).

		ipv6?: string

		// Name of the L3 interface.

		name?: string

		// Purge L3 interfaces not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the L3 interface configuration.

		state?: string

		// List of L3 interfaces definitions

		aggregate?: string

		// IPv4 of the L3 interface.

		ipv4?: string
	}
}

onyx_ospf :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_ospf: {

		// OSPF state.

		state?: string

		// List of interfaces and areas. Required if I(state=present).

		interfaces?: string

		// OSPF instance number 1-65535

		ospf: string

		// OSPF router ID. Required if I(state=present).

		router_id?: string
	}
}

onyx_qos :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_qos: {

		// rewrite with type dscp.

		rewrite_dscp?: string

		// rewrite with type pcp.

		rewrite_pcp?: string

		// trust type.

		trust?: string

		// list of interfaces name.

		interfaces: string
	}
}

onyx_igmp_vlan :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_igmp_vlan: {

		// IGMP snooping operation version on this vlan

		version?: string

		// VLAN ID, vlan should exist.

		vlan_id: string

		// Configure ip igmp snooping mrouter port on vlan

		mrouter?: string

		// Configure the IGMP querier parameters

		querier?: string

		// IGMP state.

		state?: string

		// List of IGMP static groups.

		static_groups?: string
	}
}

onyx_mlag_vip :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_mlag_vip: {

		// MLAG system MAC address. Required if I(state=present).

		mac_address?: string

		// MLAG VIP state.

		state?: string

		// Delay interval, in seconds, waiting for the changes on mlag VIP to take effect.

		delay?: string

		// MLAG group name. Required if I(state=present).

		group_name?: string

		// Virtual IP address of the MLAG. Required if I(state=present).

		ipaddress?: string
	}
}

onyx_ptp_global :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_ptp_global: {

		// set PTP domain number Range 0-127

		domain?: string

		// NTP state.

		ntp_state?: string

		// set PTP primary priority Range 0-225

		primary_priority?: string

		// PTP state.

		ptp_state?: string

		// set PTP secondary priority Range 0-225

		secondary_priority?: string
	}
}

onyx_ptp_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_ptp_interface: {

		// configure PTP sync interval, Range -7--1

		sync_interval?: string

		// configure PTP announce setting for interval, Range -3-1

		announce_interval?: string

		// configure PTP announce setting for timeout, Range 2-10

		announce_timeout?: string

		// configure PTP delay request interval, Range 0-5

		delay_request?: string

		// ethernet or vlan interface name that we want to configure PTP on it

		name: string

		// Enable/Disable PTP on Interface

		state?: string
	}
}

onyx_bgp :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_bgp: {

		// List of advertised networks.

		networks?: string

		// will remove all neighbors when it is True.

		purge?: bool

		// vrf name.

		vrf?: string

		// Maximum bgp paths.

		max_paths?: string

		// List of neighbors. Required if I(state=present).

		neighbors?: string

		// Router IP address.

		router_id?: string

		// BGP state.

		state?: string

		// Local AS number.

		as_number: string

		// Enables ECMP across AS paths.

		ecmp_bestpath?: bool

		// Configure evpn peer-group.

		evpn?: bool

		// will configure fast_external_fallover when it is True.

		fast_external_fallover?: bool
	}
}

onyx_l2_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_l2_interface: {

		// Mode in which interface needs to be configured.

		mode?: string

		// Name of the interface.

		name?: string

		// State of the Layer-2 Interface configuration.

		state?: string

		// List of allowed VLANs in a given trunk port.

		trunk_allowed_vlans?: string

		// Configure given VLAN in access port.

		access_vlan?: string

		// List of Layer-2 interface definitions.

		aggregate?: string
	}
}

onyx_lldp :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_lldp: {

		state?: string

		// State of the LLDP protocol configuration.
	}
}

onyx_lldp_interface :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_lldp_interface: {

		// List of interfaces LLDP should be configured on.

		aggregate?: string

		// Name of the interface LLDP should be configured on.

		name?: string

		// Purge interfaces not defined in the aggregate parameter.

		purge?: bool

		// State of the LLDP configuration.

		state?: string
	}
}

onyx_facts :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_facts: {

		gather_subset?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, version, module, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
	}
}

onyx_mlag_ipl :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_mlag_ipl: {

		// Name of the IPL vlan interface.

		vlan_interface?: string

		// Name of the interface (port-channel) IPL should be configured on.

		name: string

		// IPL peer IP address.

		peer_address?: string

		// IPL state.

		state?: string
	}
}

onyx_traffic_class :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_traffic_class: {

		// configure congestion control on interface.

		congestion_control?: string

		// configure dcb control on interface.

		dcb?: string

		// list of interfaces name.

		interfaces: string

		// enable congestion control on interface.

		state?: string

		// traffic class, range 0-7.

		tc: string
	}
}

onyx_config :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onyx_config: {

		// The C(config) argument allows the playbook designer to supply the base configuration to be used to validate configuration changes necessary.  If this argument is provided, the module will not download the running-config from the remote node.

		config?: string

		// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

		lines?: string

		// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct

		replace?: string

		// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

		after?: string

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

		before?: string

		// The C(save) argument instructs the module to save the running- config to the startup-config at the conclusion of the module running.  If check mode is specified, this argument is ignored.

		save?: bool

		// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

		src?: string

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory.  If the directory does not exist, it is created.

		backup?: bool

		// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

		match?: string

		// The ordered set of parents that uniquely identify the section the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

		parents?: string
	}
}
