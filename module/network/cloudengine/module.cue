package cloudengine

ce_lacp :: {

	// Value of preemption delay time.

	preempt_delay?: int

	// Specifies lacp preempt enable of Eth-Trunk lacp. The value is an boolean 'true' or 'false'.

	preempt_enable?: bool

	// Select priority or speed to preempt.

	select?: string

	// Lacp timeout type,that may be 'Fast' or 'Slow'.

	timeout_type?: string

	// Configure lacp priority on system-view.

	global_priority?: int

	// Value of max active linknumber.

	mixed_rate_link_enable?: bool

	// Specifies the working mode of an Eth-Trunk interface.

	mode?: string

	// The priority of eth-trunk member interface.

	priority?: int

	// Value of delay time in units of 10 microseconds.

	collector_delay?: int

	// When lacp timeout type is 'Fast', user-defined time can be a number(3~90).

	fast_timeout?: int

	// Lacp dampening state-flapping.

	state_flapping?: bool

	// Link Aggregation Control Protocol System ID,interface Eth-Trunk View.
	// Formate 'X-X-X',X is hex(a,aa,aaa, or aaaa)

	system_id?: string

	// Manage the state of the resource.

	state?: string

	// Eth-Trunk interface number. The value is an integer. The value range depends on the assign forward eth-trunk mode command. When 256 is specified, the value ranges from 0 to 255. When 512 is specified, the value ranges from 0 to 511. When 1024 is specified, the value ranges from 0 to 1023.

	trunk_id?: int

	// Lacp dampening unexpected-mac disable.

	unexpected_mac_disable?: bool

	// Max active linknumber in link aggregation group.

	max_active_linknumber?: int

	// Enable the function of extending the LACP negotiation port number.

	port_id_extension_enable?: bool
}

ce_netconf :: {

	// The config xml string.

	cfg_xml: string

	// The type of rpc.

	rpc: string
}

ce_ntp :: {

	// Authentication key identifier to use with given NTP server or peer.

	key_id?: string

	// Network address of NTP peer.

	peer?: string

	// Network address of NTP server.

	server?: string

	// Local source interface from which NTP messages are sent. Must be fully qualified interface name, i.e. C(40GE1/0/22), C(vlanif10). Interface types, such as C(10GE), C(40GE), C(100GE), C(Eth-Trunk), C(LoopBack), C(MEth), C(NULL), C(Tunnel), C(Vlanif).

	source_int?: string

	// Manage the state of the resource.

	state?: string

	// Makes the device communicate with the given NTP server or peer over a specific vpn.

	vpn_name?: string

	// Makes given NTP server or peer the preferred NTP server or peer for the device.

	is_preferred?: string
}

ce_vrf :: {

	// Description of the vrf, the string length is 1 - 242 .

	description?: string

	// Manage the state of the resource.

	state?: string

	// VPN instance, the length of vrf name is 1 - 31, i.e. "test", but can not be C(_public_).

	vrf: string
}

ce_evpn_bgp :: {

	// Specifies integral AS number. The value is an integer ranging from 1 to 4294967295.

	as_number?: string

	// Specifies the IPv4 address of a BGP EVPN peer. The value is in dotted decimal notation.

	peer_address?: string

	// Manage the state of the resource.

	state?: string

	// Enable or disable a device to advertise IP routes imported to a VPN instance to its EVPN instance.

	advertise_l2vpn_evpn?: string

	// Configures a device to advertise routes to its BGP EVPN peers.

	advertise_router_type?: string

	// Specify the name of a peer group that BGP peers need to join. The value is a string of 1 to 47 case-sensitive characters, spaces not supported.

	peer_group_name?: string

	// Associates a specified VPN instance with the IPv4 address family. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.

	vpn_name?: string

	// Name of a BGP instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.

	bgp_instance: string

	// Enable or disable a BGP device to exchange routes with a specified peer or peer group in the address family view.

	peer_enable?: string
}

ce_mlag_config :: {

	// IP address bound to the DFS group. The value is in dotted decimal notation.

	ip_address?: string

	// A pseudo nickname of a DFS group. The value is an integer that ranges from 1 to 65471.

	pseudo_nickname?: string

	// Priority of a DFS group. The value is an integer that ranges from 1 to 254. The default value is 100.

	priority_id?: string

	// The priority of a pseudo nickname. The value is an integer that ranges from 128 to 255. The default value is 192. A larger value indicates a higher priority.

	pseudo_priority?: string

	// Specify desired state of the resource.

	state?: string

	// Name of the VPN instance bound to the DFS group. The value is a string of 1 to 31 case-sensitive characters without spaces. If the character string is quoted by double quotation marks, the character string can contain spaces. The value _public_ is reserved and cannot be used as the VPN instance name.

	vpn_instance_name?: string

	// ID of a DFS group. The value is 1.

	dfs_group_id?: string

	// Name of the peer-link interface. The value is in the range from 0 to 511.

	eth_trunk_id?: string

	// The nickname bound to a DFS group. The value is an integer that ranges from 1 to 65471.

	nickname?: string

	// Number of the peer-link interface. The value is 1.

	peer_link_id?: string
}

ce_snmp_community :: {

	// Mib view name for notification.

	notify_view?: string

	// Mib view name for read.

	read_view?: string

	// Security level indicating whether to use authentication and encryption.

	security_level?: string

	// Manage the state of the resource.

	state?: string

	// Access right read or write.

	access_right?: string

	// Mib view name.

	community_mib_view?: string

	// Unique name to identify the community.

	community_name?: string

	// Unique name to identify the SNMPv3 group.

	group_name?: string

	// Access control list number.

	acl_number?: string

	// Mib view name for write.

	write_view?: string
}

ce_aaa_server_host :: {

	// Specify desired state of the resource.

	state?: string

	// The type of local user login through, such as ftp ssh snmp telnet.

	local_service_type?: string

	// Name of the user group where the user belongs. The user inherits all the rights of the user group. The value is a string of 1 to 32 characters.

	local_user_group?: string

	// Login level of a local user. The value is an integer ranging from 0 to 15.

	local_user_level?: string

	// RADIUS server group's name. The value is a string of 1 to 32 case-insensitive characters.

	radius_group_name?: string

	// Hostname of configured server. The value is a string of 0 to 255 case-sensitive characters.

	radius_server_name?: string

	// Server IPv6 address. Must be a valid unicast IP address. The total length is 128 bits.

	hwtacacs_server_ipv6?: string

	// Hwtacacs server type.

	hwtacacs_server_type?: string

	// Configured primary or secondary server for a particular server.

	radius_server_mode?: string

	// IPv4 address of configured server. The value is a string of 0 to 255 characters, in dotted decimal notation.

	radius_server_ip?: string

	// IPv6 address of configured server. The total length is 128 bits.

	radius_server_ipv6?: string

	// Configured server port for a particular server. The value is an integer ranging from 1 to 65535.

	radius_server_port?: string

	// Whether the server is secondary.

	hwtacacs_is_secondary_server?: bool

	// VPN instance name.

	hwtacacs_vpn_name?: string

	// FTP user directory. The value is a string of 1 to 255 characters.

	local_ftp_dir?: string

	// Login password of a user. The password can contain letters, numbers, and special characters. The value is a string of 1 to 255 characters.

	local_password?: string

	// Name of a local user. The value is a string of 1 to 253 characters.

	local_user_name?: string

	// Set VPN instance. The value is a string of 1 to 31 case-sensitive characters.

	radius_vpn_name?: string

	// Set the public-net.

	hwtacacs_is_public_net?: bool

	// Hwtacacs server host name.

	hwtacacs_server_host_name?: string

	// Server IPv4 address. Must be a valid unicast IP address. The value is a string of 0 to 255 characters, in dotted decimal notation.

	hwtacacs_server_ip?: string

	// Name of a HWTACACS template. The value is a string of 1 to 32 case-insensitive characters.

	hwtacacs_template?: string

	// Type of Radius Server.

	radius_server_type?: string
}

ce_dldp :: {

	// Set global DLDP work-mode.

	work_mode?: string

	// Specifies authentication algorithm of DLDP.

	auth_mode?: string

	// Specifies authentication password. The value is a string of 1 to 16 case-sensitive plaintexts or 24/32/48/108/128 case-sensitive encrypted characters. The string excludes a question mark (?).

	auth_pwd?: string

	// Set global DLDP enable state.

	enable?: string

	// Specify whether reset DLDP state of disabled interfaces.

	reset?: string

	// Specifies the interval for sending Advertisement packets. The value is an integer ranging from 1 to 100, in seconds. The default interval for sending Advertisement packets is 5 seconds.

	time_internal?: string
}

ce_dldp_interface :: {

	// Set interface DLDP enable state.

	enable?: string

	// Must be fully qualified interface name, i.e. GE1/0/1, 10GE1/0/1, 40GE1/0/22, 100GE1/0/1.

	interface: string

	// Set the source MAC address for DLDP packets sent in the DLDP-compatible mode. The value of MAC address is in H-H-H format. H contains 1 to 4 hexadecimal digits.

	local_mac?: string

	// Set DLDP compatible-mode enable state.

	mode_enable?: string

	// Specify whether reseting interface DLDP state.

	reset?: string

	// Manage the state of the resource.

	state?: string
}

ce_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}

ce_vrrp :: {

	// Configured VRRP priority. The value ranges from 1 to 254. The default value is 100. A larger value indicates a higher priority.

	priority?: string

	// Tracked mVRRP interface name. The value is a string of 1 to 63 characters.

	admin_interface?: string

	// mVRRP's fast resume mode.

	fast_resume?: string

	// Select the display mode of an authentication key. By default, an authentication key is displayed in ciphertext.

	is_plain?: bool

	// Name of an interface. The value is a string of 1 to 63 characters.

	interface?: string

	// Preemption delay. The value is an integer ranging from 0 to 3600. The default value is 0.

	preempt_timer_delay?: string

	// Specify desired state of the resource.

	state?: string

	// VRRP backup group ID. The value is an integer ranging from 1 to 255.

	vrid?: string

	// Type of a VRRP backup group.

	vrrp_type?: string

	// Disable the flowdown function for service VRRP.

	admin_flowdown?: bool

	// This object is set based on the authentication type. When noAuthentication is specified, the value is empty. When simpleTextPassword or md5Authentication is specified, the value is a string of 1 to 8 characters in plaintext and displayed as a blank text for security.

	auth_key?: string

	// Authentication type used for VRRP packet exchanges between virtual routers. The values are noAuthentication, simpleTextPassword, md5Authentication. The default value is noAuthentication.

	auth_mode?: string

	// Delay in recovering after an interface goes Up. The delay is used for interface flapping suppression. The value is an integer ranging from 0 to 3600. The default value is 0 seconds.

	recover_delay?: string

	// VRRP version. The default version is v2.

	version?: string

	// Virtual IP address. The value is a string of 0 to 255 characters.

	virtual_ip?: string

	// Tracked mVRRP ID. The value is an integer ranging from 1 to 255.

	admin_vrid?: string

	// Configured interval between sending advertisements, in milliseconds. Only the master router sends VRRP advertisements. The default value is 1000 milliseconds.

	advertise_interval?: string

	// The configured holdMultiplier.The value is an integer ranging from 3 to 10. The default value is 3.

	holding_multiplier?: string

	// mVRRP ignores an interface Down event.

	admin_ignore_if_down?: bool

	// Interval at which gratuitous ARP packets are sent, in seconds. The value ranges from 30 to 1200.The default value is 300.

	gratuitous_arp_interval?: string
}

ce_vxlan_gateway :: {

	// Determines whether the config should be present or not on the device.

	state?: string

	// Specifies a MAC address for a VBDIF interface. The value is in the format of H-H-H. Each H is a 4-digit hexadecimal number, such as C(00e0) or C(fc01). If an H contains less than four digits, 0s are added ahead. For example,  C(e0) is equal to C(00e0). A MAC address cannot be all 0s or 1s or a multicast MAC address.

	vbdif_mac?: string

	// Specifies a VNI ID. Binds a VXLAN network identifier (VNI) to a virtual private network (VPN) instance. The value is an integer ranging from 1 to 16000000.

	vpn_vni?: string

	// Specifies the name of the VPN instance that is associated with the interface. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.

	vbdif_bind_vpn?: string

	// Full name of VBDIF interface, i.e. Vbdif100.

	vbdif_name?: string

	// Enable the distributed gateway function on VBDIF interface.

	arp_distribute_gateway?: string

	// Creates all-active gateways.

	dfs_all_active?: string

	// Specifies the ID of a DFS group. The value must be 1.

	dfs_id?: string

	// Specifies the IPv4 address bound to a DFS group. The value is in dotted decimal notation.

	dfs_source_ip?: string

	// Specifies the name of a VPN instance bound to a DFS group. The value is a string of 1 to 31 case-sensitive characters without spaces. If the character string is quoted by double quotation marks, the character string can contain spaces. The value C(_public_) is reserved and cannot be used as the VPN instance name.

	dfs_source_vpn?: string

	// Specifies the UDP port number of the DFS group. The value is an integer that ranges from 1025 to 65535.

	dfs_udp_port?: string

	// Enable VLINK direct route on VBDIF interface.

	arp_direct_route?: string

	// Configure the IP address of an all-active gateway peer. The value is in dotted decimal notation.

	dfs_peer_ip?: string

	// Specifies the name of the VPN instance that is associated with all-active gateway peer. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.

	dfs_peer_vpn?: string

	// Specifies the name of a VPN instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.

	vpn_instance?: string
}

ce_sflow :: {

	// Specifies the maximum length of sFlow packets sent from an sFlow agent to an sFlow collector. The value is an integer, in bytes. It ranges from 1024 to 8100. The default value is 1400.

	collector_datagram_size?: string

	// Configures the device to send sFlow packets through service interfaces, enhancing the sFlow packet forwarding capability. The enhanced parameter is optional. No matter whether you configure the enhanced mode, the switch determines to send sFlow packets through service cards or management port based on the routing information on the collector. When the value is meth, the device forwards sFlow packets at the control plane. When the value is enhanced, the device forwards sFlow packets at the forwarding plane to enhance the sFlow packet forwarding capacity.

	collector_meth?: string

	// Configures the sFlow packets sent by the switch not to carry routing information.

	export_route?: string

	// Specifies the flow sampling rate in the format 1/rate. The value is an integer and ranges from 1 to 4294967295. The default value is 8192.

	sample_rate?: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// Specifies the IPv4/IPv6 address of an sFlow agent.

	agent_ip?: string

	// Specifies the UDP destination port number of sFlow packets. The value is an integer that ranges from 1 to 65535. The default value is 6343.

	collector_udp_port?: string

	// Specifies the IPv4/IPv6 address of the sFlow collector.

	collector_ip?: string

	// Indicates the ID list of the counter collector.

	counter_collector?: string

	// Specifies the rate of sFlow packets sent from a card to the control plane. The value is an integer that ranges from 100 to 1500, in pps.

	rate_limit?: string

	// Specifies the slot where the rate of output sFlow packets is limited. If this parameter is not specified, the rate of sFlow packets sent from all cards to the control plane is limited. The value is an integer or a string of characters.

	rate_limit_slot?: string

	// Specifies the maximum length of sampled packets. The value is an integer and ranges from 18 to 512, in bytes. The default value is 128.

	sample_length?: string

	// Full name of interface for Flow Sampling or Counter. It must be a physical interface, Eth-Trunk, or Layer 2 subinterface.

	sflow_interface?: string

	// Specifies the source IPv4/IPv6 address of sFlow packets.

	source_ip?: string

	// Specifies the description of an sFlow collector. The value is a string of 1 to 255 case-sensitive characters without spaces.

	collector_description?: string

	// Specifies the ID of an sFlow collector. This ID is used when you specify the collector in subsequent sFlow configuration.

	collector_id?: string

	// Specifies the name of a VPN instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value C(_public_) is reserved and cannot be used as the VPN instance name.

	collector_ip_vpn?: string

	// Indicates the counter sampling interval. The value is an integer that ranges from 10 to 4294967295, in seconds. The default value is 20.

	counter_interval?: string

	// Enable the Embedded Network Processor (ENP) chip function. The switch uses the ENP chip to perform sFlow sampling, and the maximum sFlow sampling interval is 65535. If you set the sampling interval to be larger than 65535, the switch automatically restores it to 65535. The value is an integer or 'all'.

	forward_enp_slot?: string

	// Indicates the ID list of the collector.

	sample_collector?: string

	// Enables flow sampling in the inbound or outbound direction.

	sample_direction?: string
}

ce_bgp :: {

	// ID of a router that is in IPv4 address format.

	router_id?: string

	// Local AS number. The value is a string of 1 to 11 characters.

	as_number?: string

	// Maximum number of AS numbers in the AS_Path attribute. The default value is 255.

	as_path_limit?: string

	// Confederation ID. The value is a string of 1 to 11 characters.

	confed_id_number?: string

	// ConnectRetry interval. The value is an integer, in seconds. The default value is 32s.

	conn_retry_time?: string

	// Type of a created address family, which can be IPv4 unicast or IPv6 unicast. The default type is IPv4 unicast.

	default_af_type?: string

	// Enable GR of the BGP speaker in the specified address family, peer address, or peer group.

	graceful_restart?: string

	// Min hold time, in seconds. The value of the hold time can be 0 or range from 20 to 65535.

	min_hold_time?: string

	// The function to automatically select router IDs for all VPN BGP instances is enabled.

	bgp_rid_auto_sel?: string

	// Peer disconnection through GR.

	gr_peer_reset?: string

	// Hold interval.

	hold_interval?: string

	// Hold time, in seconds. The value of the hold time can be 0 or range from 3 to 65535.

	hold_time?: string

	// Interrupt BGP all neighbor.

	is_shutdown?: string

	// Period of waiting for the End-Of-RIB flag. The value is an integer ranging from 3 to 3000. The default value is 600.

	time_wait_for_rib?: string

	// If the value is true, VPN BGP instances are enabled to automatically select router IDs. If the value is false, VPN BGP instances are disabled from automatically selecting router IDs.

	vrf_rid_auto_sel?: string

	// Check the first AS in the AS_Path of the update messages from EBGP peers.

	check_first_as?: string

	// Clear interval.

	clear_interval?: string

	// If the value is true, the system stores all route update messages received from all peers (groups) after BGP connection setup. If the value is false, the system stores only BGP update messages that are received from peers and pass the configured import policy.

	keep_all_routes?: string

	// Support BGP RIB memory protection.

	memory_limit?: string

	// Configure the device to be compatible with devices in a nonstandard confederation.

	confed_nonstanded?: string

	// Confederation AS number, in two-byte or four-byte format. The value is a string of 1 to 11 characters.

	confed_peer_as_num?: string

	// If the value is true, After the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are deleted immediately when the interface goes Down. If the value is  false, After the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are not deleted immediately when the interface goes Down.

	ebgp_if_sensitive?: string

	// If the value of a timer changes, the BGP peer relationship between the routers is disconnected. The value is an integer ranging from 0 to 21845. The default value is 60.

	keepalive_time?: string

	// Specify desired state of the resource.

	state?: string

	// Suppress interval.

	suppress_interval?: string

	// Name of a BGP instance. The name is a case-sensitive string of characters.

	vrf_name?: string
}

ce_link_status :: {

	// For the interface parameter, you can enter C(all) to display information about all interfaces, an interface type such as C(40GE) to display information about interfaces of the specified type, or full name of an interface such as C(40GE1/0/22) or C(vlanif10) to display information about the specific interface.

	interface: string
}

ce_mtu :: {

	// Full name of interface, i.e. 40GE1/0/22.

	interface?: string

	// Maximum frame size. The default value is 9216. The value is an integer and expressed in bytes. The value range is 1536 to 12224 for the CE12800 and 1536 to 12288 for ToR switches.

	jumbo_max?: string

	// Non-jumbo frame size threshold. The default value is 1518. The value is an integer that ranges from 1518 to jumbo_max, in bytes.

	jumbo_min?: string

	// MTU for a specific interface. The value is an integer ranging from 46 to 9600, in bytes.

	mtu?: string

	// Specify desired state of the resource.

	state?: string
}

ce_netstream_aging :: {

	// Specifies the slot number of netstream manual timeout.

	manual_slot?: string

	// Specify desired state of the resource.

	state?: string

	// Netstream timeout interval. If is active type the interval is 1-60. If is inactive ,the interval is 5-600.

	timeout_interval?: string

	// Netstream timeout type.

	timeout_type?: string

	// Specifies the packet type of netstream timeout active interval.

	type?: string
}

ce_aaa_server :: {

	// Name of a domain. The value is a string of 1 to 64 characters.

	domain_name?: string

	// Preferred authorization mode.

	first_author_mode?: string

	// Name of the user group where the user belongs. The user inherits all the rights of the user group. The value is a string of 1 to 32 characters.

	local_user_group?: string

	// RADIUS server group's name. The value is a string of 1 to 32 case-insensitive characters.

	radius_server_group?: string

	// Accounting scheme name. The value is a string of 1 to 32 characters.

	acct_scheme_name?: string

	// Name of an authentication scheme. The value is a string of 1 to 32 characters.

	authen_scheme_name?: string

	// Preferred authentication mode.

	first_authen_mode?: string

	// Name of a HWTACACS template. The value is a string of 1 to 32 case-insensitive characters.

	hwtacas_template?: string

	// Specify desired state of the resource.

	state?: string

	// Accounting Mode.

	accounting_mode?: string

	// Name of an authorization scheme. The value is a string of 1 to 32 characters.

	author_scheme_name?: string
}

ce_bfd_view :: {

	// Specifies the name of a BFD session. The value is a string of 1 to 15 case-sensitive characters without spaces.

	session_name: string

	// Enables the BFD session to enter the AdminDown state. By default, a BFD session is enabled. The default value is bool type.

	admin_down?: bool

	// Specifies the local detection multiplier of a BFD session. The value is an integer that ranges from 3 to 50.

	detect_multi?: string

	// Specifies the local discriminator of a BFD session. The value is an integer that ranges from 1 to 16384.

	local_discr?: string

	// Specifies the minimum interval for sending BFD packets. The value is an integer that ranges from 50 to 1000, in milliseconds.

	min_rx_interval?: string

	// Specifies a priority for BFD control packets. The value is an integer ranging from 0 to 7. The default value is 7, which is the highest priority.

	tos_exp?: string

	// Specifies the WTR time of a BFD session. The value is an integer that ranges from 1 to 60, in minutes. The default value is 0.

	wtr_interval?: string

	// Specifies the description of a BFD session. The value is a string of 1 to 51 case-sensitive characters with spaces.

	description?: string

	// Specifies the minimum interval for receiving BFD packets. The value is an integer that ranges from 50 to 1000, in milliseconds.

	min_tx_interval?: string

	// Specifies the remote discriminator of a BFD session. The value is an integer that ranges from 1 to 4294967295.

	remote_discr?: string

	// Determines whether the config should be present or not on the device.

	state?: string
}

ce_eth_trunk :: {

	// List of interfaces that will be managed in a given Eth-Trunk. The interface name must be full name.

	members?: string

	// Specifies the minimum number of Eth-Trunk member links in the Up state. The value is an integer ranging from 1 to the maximum number of interfaces that can be added to a Eth-Trunk interface.

	min_links?: string

	// Specifies the working mode of an Eth-Trunk interface.

	mode?: string

	// Manage the state of the resource.

	state?: string

	// Eth-Trunk interface number. The value is an integer. The value range depends on the assign forward eth-trunk mode command. When 256 is specified, the value ranges from 0 to 255. When 512 is specified, the value ranges from 0 to 511. When 1024 is specified, the value ranges from 0 to 1023.

	trunk_id: string

	// When true it forces Eth-Trunk members to match what is declared in the members param. This can be used to remove members.

	force?: bool

	// Hash algorithm used for load balancing among Eth-Trunk member interfaces.

	hash_type?: string
}

ce_snmp_location :: {

	// Location information.

	location: string

	// Manage the state of the resource.

	state?: string
}

ce_lldp :: {

	// Binding interface name.

	bind_name?: string

	// The number of LLDP messages sent to the neighbor nodes by the specified device.

	fast_count?: int

	// Set global MDN enable state.

	mdnstatus?: string

	// Suppression time for sending LLDP alarm.

	notification_interval?: int

	// Manage the state of the resource.

	state?: string

	// Delay time for sending LLDP messages.

	transmit_delay?: int

	// Time multiplier for device information in neighbor devices.

	hold_multiplier?: int

	// Frequency at which LLDP advertisements are sent (in seconds).

	interval?: int

	// Set global LLDP enable state.

	lldpenable?: string

	// The management IP address of LLDP.

	management_address?: string

	// Delay time for sending MDN neighbor information change alarm.

	mdn_notification_interval?: int

	// Specifies the delay time of the interface LLDP module from disabled state to re enable.

	restart_delay?: int
}

ce_reboot :: {

	// Safeguard boolean. Set to true if you're sure you want to reboot.

	confirm: bool

	// Flag indicating whether to save the configuration.

	save_config?: bool
}

ce_vxlan_vap :: {

	// Specifies an Sub-Interface full name, i.e. "10GE1/0/41.1". The value is a string of 1 to 63 case-insensitive characters, spaces supported.

	l2_sub_interface?: string

	// When I(encapsulation) is 'qinq', specifies an inner VLAN ID for double-tagged packets to be received by a Layer 2 sub-interface. The value is an integer ranging from 1 to 4094.

	pe_vid?: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// Specifies the VLAN binding to a BD(Bridge Domain). The value is an integer ranging ranging from 1 to 4094.

	bind_vlan_id?: string

	// Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.

	bridge_domain_id?: string

	// When I(encapsulation) is 'dot1q', specifies a VLAN ID in the outer VLAN tag. When I(encapsulation) is 'qinq', specifies an outer VLAN ID for double-tagged packets to be received by a Layer 2 sub-interface. The value is an integer ranging from 1 to 4094.

	ce_vid?: string

	// Specifies an encapsulation type of packets allowed to pass through a Layer 2 sub-interface.

	encapsulation?: string
}

ce_command :: {

	// Specifies the number of retries a command should by tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

	retries?: string

	// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.

	wait_for?: string

	// The commands to send to the remote HUAWEI CloudEngine device over the configured provider.  The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.

	commands: string

	// Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.

	interval?: string

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

	match?: string
}

ce_config :: {

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// This argument will cause the module to create a full backup of the current C(current-configuration) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.

	backup?: bool

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the current-configuration on the remote device.

	match?: string

	// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// The C(save) argument instructs the module to save the current-configuration to saved-configuration.  This operation is performed after any changes are made to the current running config.  If no changes are made, the configuration is still saved to the startup config.  This option will always cause the module to return changed.

	save?: bool

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// The module, by default, will connect to the remote device and retrieve the current current-configuration to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current-configuration for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	config?: string

	// The I(defaults) argument will influence how the current-configuration is collected from the device.  When the value is set to true, the command used to collect the current-configuration is append with the all keyword.  When the value is set to false, the command is issued without the all keyword.

	defaults?: bool

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device current-configuration.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// The I(src) argument provides a path to the configuration file to load into the remote system.  The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) and I(parents) arguments.

	src?: string
}

ce_file_copy :: {

	// The remote file system of the device. If omitted, devices that support a I(file_system) parameter will use their default values. File system indicates the storage medium and can be set to as follows, 1) C(flash) is root directory of the flash memory on the master MPU. 2) C(slave#flash) is root directory of the flash memory on the slave MPU. If no slave MPU exists, this drive is unavailable. 3) C(chassis ID/slot number#flash) is root directory of the flash memory on a device in a stack. For example, C(1/5#flash) indicates the flash memory whose chassis ID is 1 and slot number is 5.

	file_system?: string

	// Path to local file. Local directory must exist. The maximum length of I(local_file) is C(4096).

	local_file: string

	// Remote file path of the copy. Remote directories must exist. If omitted, the name of the local file will be used. The maximum length of I(remote_file) is C(4096).

	remote_file?: string
}

ce_info_center_trap :: {

	// Whether a device is enabled to output alarms.

	trap_enable?: string

	// Trap level permitted to output.

	trap_level?: string

	// Timestamp format of alarm information.

	trap_time_stamp?: string

	// Number of a channel. The value is an integer ranging from 0 to 9. The default value is 0.

	channel_id?: string

	// Module name of the rule. The value is a string of 1 to 31 case-insensitive characters. The default value is default. Please use lower-case letter, such as [aaa, acl, arp, bfd].

	module_name?: string

	// Specify desired state of the resource.

	state?: string

	// Whether a trap buffer is enabled to output information.

	trap_buff_enable?: string

	// Size of a trap buffer. The value is an integer ranging from 0 to 1024. The default value is 256.

	trap_buff_size?: string
}

ce_switchport :: {

	// Manage the state of the resource.

	state?: string

	// If C(mode=hybrid), used as the VLAN range to ADD or REMOVE from the trunk, such as 2-10 or 2,5,10-15, etc.

	tagged_vlans?: string

	// If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk, such as 2-10 or 2,5,10-15, etc.

	trunk_vlans?: string

	// If C(mode=hybrid), used as the VLAN range to ADD or REMOVE from the trunk, such as 2-10 or 2,5,10-15, etc.

	untagged_vlans?: string

	// If C(mode=access, or mode=dot1qtunnel), used as the access VLAN ID, in the range from 1 to 4094.

	default_vlan?: string

	// Full name of the interface, i.e. 40GE1/0/22.

	interface: string

	// The link type of an interface.

	mode?: string

	// If C(mode=trunk, or mode=hybrid), used as the trunk native VLAN ID, in the range from 1 to 4094.

	pvid_vlan?: string
}

ce_bfd_session :: {

	// Specifies the peer IP address type.

	addr_type?: string

	// Specifies the peer IP address bound to the BFD session.

	dest_addr?: string

	// Specifies the type and number of the interface bound to the BFD session.

	out_if_name?: string

	// Indicates the default multicast IP address that is bound to a BFD session. By default, BFD uses the multicast IP address 224.0.0.184. You can set the multicast IP address by running the default-ip-address command. The value is a bool type.

	use_default_ip?: bool

	// BFD session creation mode, the currently created BFD session only supports static or static auto-negotiation mode.

	create_type?: string

	// The BFD session local identifier does not need to be configured when the mode is auto.

	local_discr?: string

	// The BFD session remote identifier does not need to be configured when the mode is auto.

	remote_discr?: string

	// Specifies the name of a BFD session. The value is a string of 1 to 15 case-sensitive characters without spaces.

	session_name: string

	// Indicates the source IP address carried in BFD packets.

	src_addr?: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// Specifies the name of a Virtual Private Network (VPN) instance that is bound to a BFD session. The value is a string of 1 to 31 case-sensitive characters, spaces not supported. When double quotation marks are used around the string, spaces are allowed in the string. The value _public_ is reserved and cannot be used as the VPN instance name.

	vrf_name?: string
}

ce_static_route_bfd :: {

	// Configure the BFD multiplier (range 3-50).

	detect_multiplier?: int

	// Specify desired state of the resource.

	state?: string

	// Destination ip address family type of static route.

	aftype: string

	// Name of the route. Used with the name parameter on the CLI.

	description?: string

	// Destination ip mask of static route.

	mask?: string

	// Set the minimum BFD session sending interval (range 50-1000).

	min_tx_interval?: int

	// Destination ip address of static route.

	prefix: string

	// Route tag value (numeric).

	tag?: int

	// VPN instance of destination ip address.

	vrf?: string

	// bfd name (range 1-15).

	bfd_session_name?: string

	// Incoming command line is used to send sys,undo ip route-static default-bfd,commit.

	commands?: [..._]

	// VPN instance of next hop ip address.

	destvrf?: string

	// Used to distinguish between command line functions.

	function_flag: string

	// Next hop address of static route.

	next_hop?: string

	// Next hop interface full name of static route.

	nhp_interface?: string

	// Set the minimum BFD receive interval (range 50-1000).

	min_rx_interval?: int

	// Preference or administrative difference of route (range 1-255).

	pref?: int
}

ce_netstream_global :: {

	// Specifies the netstream sampler direction.

	sampler_direction?: string

	// Specifies the netstream sampler interval, length is 1 - 65535.

	sampler_interval?: string

	// Specify desired state of the resource.

	state?: string

	// Specifies the netstream statistic direction.

	statistics_direction?: string

	// Specifies the flexible netstream statistic record, length is 1 - 32.

	statistics_record?: string

	// Specifies the type of netstream global.

	type?: string

	// Specifies the netstream index-switch.

	index_switch?: string

	// Netstream global interface.

	interface: string
}

ce_netstream_template :: {

	// Configure flexible flow statistics template keywords.

	match?: string

	// Configure the name of netstream record. The value is a string of 1 to 32 case-insensitive characters.

	record_name?: string

	// Specify desired state of the resource.

	state?: string

	// Configure the type of netstream record.

	type: string

	// Configure the number of packets and bytes that are included in the flexible flow statistics sent to NSC.

	collect_counter?: string

	// Configure the input or output interface that are included in the flexible flow statistics sent to NSC.

	collect_interface?: string

	// Configure the description of netstream record. The value is a string of 1 to 80 case-insensitive characters.

	description?: string
}

ce_snmp_target_host :: {

	// Name of the interface to send the trap message.

	interface_name?: string

	// To enable or disable Public Net-manager for target Host.

	is_public_net?: string

	// Security level indicating whether to use authentication and encryption.

	security_level?: string

	// Security Name.

	security_name?: string

	// Version(s) Supported by SNMP Engine.

	version?: string

	// Unique name to identify target host entry.

	host_name?: string

	// Udp port used by SNMP agent to connect the Network management.

	connect_port?: string

	// To configure notify type as trap or inform.

	notify_type?: string

	// UDP Port number used by network management to receive alarm messages.

	recv_port?: string

	// Security Model.

	security_model?: string

	// Security Name V3.

	security_name_v3?: string

	// VPN instance Name.

	vpn_name?: string

	// Network Address.

	address?: string
}

ce_snmp_traps :: {

	// Interface number.

	interface_number?: string

	// Interface type.

	interface_type?: string

	// Source port number.

	port_number?: string

	// Alarm trap name.

	trap_name?: string

	// Alarm feature name.

	feature_name?: string
}

ce_bgp_neighbor_af :: {

	// null, Null. matchall, Advertise the default route if all matching conditions are met. matchany, Advertise the default route if any matching condition is met.

	default_rt_match_mode?: string

	// Specify the filtering policy applied to the routes to be advertised to a peer. The value is a string of 1 to 40 characters.

	export_rt_policy_name?: string

	// Assign a preferred value for the routes learned from a specified peer. The value is an integer ranging from 0 to 65535.

	preferred_value?: string

	// Limited use public as number.

	public_as_only_limited?: string

	// Private as replaced by public as number.

	public_as_only_replace?: string

	// Address family type of a BGP instance.

	af_type: string

	// Set the maximum number of repetitive local AS number. The value is an integer ranging from 1 to 10.

	allow_as_loop_limit?: string

	// Specify the percentage of routes when a router starts to generate an alarm. The value is an integer ranging from 1 to 100.

	route_limit_percent?: string

	// Application of a AS path list based filtering policy to the routing of a specified peer.

	export_as_path_name_or_num?: string

	// IPv4 or IPv6 peer connection address.

	remote_address: string

	// If the value is true, Non-standard capability codes are used during capability negotiation. If the value is false, RFC-defined standard ORF capability codes are used during capability negotiation.

	is_nonstd_ipprefix_mod?: string

	// Public as only skip peer as.

	public_as_only_skip_peer_as?: string

	// Specify the value of the idle-timeout timer to automatically reestablish the connections after they are cut off when the number of routes exceeds the set threshold. The value is an integer ranging from 1 to 1200.

	route_limit_idle_timeout?: string

	// If the value is true, vpls enable. If the value is false, vpls disable.

	vpls_enable?: string

	// Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created.

	vrf_name: string

	// If the value is true, the community attribute is advertised to peers. If the value is false, the community attribute is not advertised to peers.

	advertise_community?: string

	// Apply an IPv4 ACL-based filtering policy to the routes to be advertised to a specified peer. The value is a string of 1 to 32 characters.

	export_acl_name_or_num?: string

	// If the value is true, the remote next-hop attribute is advertised to peers. If the value is false, the remote next-hop attribute is not advertised to any peers.

	advertise_remote_nexthop?: string

	// If the value is true, the extended community attribute in the peer route information is discarded. If the value is false, the extended community attribute in the peer route information is not discarded.

	discard_ext_community?: string

	// If the value is true, the address prefix-based Outbound Route Filter (ORF) capability is enabled for peers. If the value is false, the address prefix-based Outbound Route Filter (ORF) capability is disabled for peers.

	ipprefix_orf_enable?: string

	// null, The next hop is not changed. local, The next hop is changed to the local IP address. invariable, Prevent the device from changing the next hop of each imported IGP route when advertising it to its BGP peers.

	nexthop_configure?: string

	// ORF mode. null, Default value. receive, ORF for incoming packets. send, ORF for outgoing packets. both, ORF for incoming and outgoing packets.

	orf_mode?: string

	// If the value is true, Application results of route announcement. If the value is false, Routing application results are not notified.

	origin_as_valid?: string

	// null, Null. receive, Support receiving Add-Path routes. send, Support sending Add-Path routes. both, Support receiving and sending Add-Path routes.

	add_path_mode?: string

	// If the value is true, advertised IRB routes are distinguished. If the value is false, advertised IRB routes are not distinguished.

	advertise_irb?: string

	// Noparameter, After the number of received routes exceeds the threshold and the timeout timer expires,no action. AlertOnly, An alarm is generated and no additional routes will be accepted if the maximum number of routes allowed have been received. IdleForever, The connection that is interrupted is not automatically re-established if the maximum number of routes allowed have been received. IdleTimeout, After the number of received routes exceeds the threshold and the timeout timer expires, the connection that is interrupted is automatically re-established.

	route_limit_type?: string

	// Specify the minimum interval at which Update packets are sent. The value is an integer, in seconds. The value is an integer ranging from 0 to 600.

	rt_updt_interval?: string

	// Configure the Site-of-Origin (SoO) extended community attribute. The value is a string of 3 to 21 characters.

	soostring?: string

	// Redirect ip.

	redirect_ip?: string

	// If the value is true, the local device functions as the route reflector and a peer functions as a client of the route reflector. If the value is false, the route reflector and client functions are not configured.

	reflect_client?: string

	// Apply an AS_Path-based filtering policy to the routes received from a specified peer. The value is an integer ranging from 1 to 256.

	import_as_path_filter?: string

	// Specify the filtering policy applied to the routes learned from a peer. The value is a string of 1 to 40 characters.

	import_rt_policy_name?: string

	// ORF Type. The value is an integer ranging from 0 to 65535.

	orftype?: string

	// If the value is true, the function to replace a specified peer's AS number in the AS-Path attribute with the local AS number is enabled. If the value is false, the function to replace a specified peer's AS number in the AS-Path attribute with the local AS number is disabled.

	substitute_as_enable?: string

	// If the value is true, the extended community attribute is advertised to peers. If the value is false, the extended community attribute is not advertised to peers.

	advertise_ext_community?: string

	// If the value is true, the function to advertise default routes to peers is enabled. If the value is false, the function to advertise default routes to peers is disabled.

	default_rt_adv_enable?: string

	// Specify the IPv4 filtering policy applied to the routes to be advertised to a specified peer. The value is a string of 1 to 169 characters.

	export_pref_filt_name?: string

	// If the value is true, sent BGP update messages carry only the public AS number but do not carry private AS numbers. If the value is false, sent BGP update messages can carry private AS numbers.

	public_as_only_force?: string

	// Configure the maximum number of routes that can be accepted from a peer. The value is an integer ranging from 1 to 4294967295.

	route_limit?: string

	// If the value is true, When the vpnv4 multicast neighbor receives and updates the message, the message has no label. If the value is false, When the vpnv4 multicast neighbor receives and updates the message, the message has label.

	update_pkt_standard_compatible?: string

	// If the value is true, enable vpls-ad. If the value is false, disable vpls-ad.

	vpls_ad_disable?: string

	// If the value is true, advertised ARP routes are distinguished. If the value is false, advertised ARP routes are not distinguished.

	advertise_arp?: string

	// Apply an AS_Path-based filtering policy to the routes to be advertised to a specified peer. The value is an integer ranging from 1 to 256.

	export_as_path_filter?: string

	// A routing strategy based on the AS path list for routing received by a designated peer.

	import_as_path_name_or_num?: string

	// If the value is true, the system stores all route update messages received from all peers (groups) after BGP connection setup. If the value is false, the system stores only BGP update messages that are received from peers and pass the configured import policy.

	keep_all_routes?: string

	// If the value is true, sent BGP update messages carry only the public AS number but do not carry private AS numbers. If the value is false, sent BGP update messages can carry private AS numbers.

	public_as_only?: string

	// Redirect ip validation.

	redirect_ip_validation?: string

	// If the value is true, repetitive local AS numbers are allowed. If the value is false, repetitive local AS numbers are not allowed.

	allow_as_loop_enable?: string

	// Specify the name of a used policy. The value is a string. The value is a string of 1 to 40 characters.

	default_rt_adv_policy?: string

	// Specify the IPv4 filtering policy applied to the routes received from a specified peer. The value is a string of 1 to 169 characters.

	import_pref_filt_name?: string

	// The number of addPath advertise route. The value is an integer ranging from 2 to 64.

	adv_add_path_num?: string

	// Apply an IPv4 ACL-based filtering policy to the routes received from a specified peer. The value is a string of 1 to 32 characters.

	import_acl_name_or_num?: string
}

ce_ip_interface :: {

	// Specify desired state of the resource.

	state?: string

	// IP address version.

	version?: string

	// IPv4 or IPv6 Address.

	addr?: string

	// Full name of interface, i.e. 40GE1/0/22, vlanif10.

	interface: string

	// Specifies an address type. The value is an enumerated type. main, primary IP address. sub, secondary IP address.

	ipv4_type?: string

	// Subnet mask for IPv4 or IPv6 Address in decimal format.

	mask?: string
}

ce_lldp_interface :: {

	// Set tx vlan name id.

	txvlannameid?: int

	// Set global LLDP enable state.

	lldpenable?: string

	// Enable MAC/PHY configuration and state TLV to be sent.

	macphytxenable?: bool

	// Make it able to send management address TLV.

	manaddrtxenable?: bool

	// Enable the ability to send protocol identity TLV.

	protoidtxenable?: bool

	// Enabling the ability to send a description of TLV.

	portdesctxenable?: bool

	// Enable port vlan tx.

	portvlantxenable?: bool

	// Enable the ability to send system name TLV.

	sysnametxenable?: bool

	// Set tx protocol vlan id.

	txprotocolvlanid?: int

	// Enable the ability to send EEE TLV.

	eee?: bool

	// Interface name.

	ifname?: string

	// Enable the ability to send link aggregation TLV.

	linkaggretxenable?: bool

	// Enable the ability to send maximum frame length TLV.

	maxframetxenable?: bool

	// Used to distinguish between command line functions.

	type_tlv_disable?: string

	// Set vlan name tx enable or not.

	vlannametxenable?: bool

	// Enable the ability to send DCBX TLV.

	dcbx?: bool

	// Enable the ability to send system capabilities TLV.

	syscaptxenable?: bool

	// LLDP send message interval.

	txinterval?: int

	// Enable the ability to send system description TLV.

	sysdesctxenable?: bool

	// Used to distinguish between command line functions.

	type_tlv_enable?: string

	// Used to distinguish between command line functions.

	function_lldp_interface_flag?: string

	// Set interface lldp enable state.

	lldpadminstatus?: string

	// Enable protocol vlan tx.

	protovlantxenable?: bool

	// Manage the state of the resource.

	state?: string
}

ce_netstream_export :: {

	// Specifies the VPN instance of the exported packets carrying flow statistics. Ensure the VPN instance has been created on the device.

	host_vpn?: string

	// Manage the state of the resource.

	state?: string

	// Specifies destination address which can be IPv6 or IPv4 of the exported NetStream packet.

	host_ip?: string

	// Specifies the destination UDP port number of the exported packets. The value is an integer that ranges from 1 to 65535.

	host_port?: string

	// Specifies source address which can be IPv6 or IPv4 of the exported NetStream packet.

	source_ip?: string

	// Specifies NetStream feature.

	type: string

	// Sets the version of exported packets.

	version?: string

	// Specifies the AS number recorded in the statistics as the original or the peer AS number.

	as_option?: string

	// Configures the statistics to carry BGP next hop information. Currently, only V9 supports the exported packets carrying BGP next hop information.

	bgp_nexthop?: string
}

ce_static_route :: {

	// Next hop address of static route.

	next_hop?: string

	// Specify desired state of the resource.

	state?: string

	// Name of the route. Used with the name parameter on the CLI.

	description?: string

	// VPN instance of next hop ip address.

	destvrf?: string

	// Destination ip mask of static route.

	mask: string

	// Next hop interface full name of static route.

	nhp_interface?: string

	// Preference or administrative difference of route (range 1-255).

	pref?: string

	// Destination ip address of static route.

	prefix: string

	// Route tag value (numeric).

	tag?: string

	// VPN instance of destination ip address.

	vrf?: string

	// Destination ip address family type of static route.

	aftype: string
}

ce_evpn_global :: {

	// Configure EVPN as the VXLAN control plane.

	evpn_overlay_enable: string
}

ce_info_center_global :: {

	// Whether the info-center function is enabled. The value is of the Boolean type.

	info_center_enable?: string

	// Use the default VPN or not.

	is_default_vpn?: bool

	// Maximum number of log files of the same type. The default value is 200.
	// The value range for log files is[3, 500], for security files is [1, 3],and for operation files is [1, 7].

	logfile_max_num?: string

	// Number of a port sending logs.The value is an integer ranging from 1 to 65535. For UDP, the default value is 514. For TCP, the default value is 601. For TSL, the default value is 6514.

	server_port?: string

	// Log source ip address, IPv4 or IPv6 type. The value is a string of 0 to 255. The value can be an valid IPv4 or IPv6 address.

	source_ip?: string

	// Whether a device is enabled to suppress duplicate statistics. The value is of the Boolean type.

	suppress_enable?: string

	// Maximum size (in MB) of a log file. The default value is 32.
	// The value range for log files is [4, 8, 16, 32], for security files is [1, 4],
	// and for operation files is [1, 4].

	logfile_max_size?: string

	// Set the priority of the syslog packet.The value is an integer ranging from 0 to 7. The default value is 0.

	packet_priority?: string

	// Channel name.The value is a string of 1 to 30 case-sensitive characters. The default value is console.

	channel_cfg_name?: string

	// Number for channel. The value is an integer ranging from 0 to 9. The default value is 0.

	channel_id?: string

	// Channel name. The value is a string of 1 to 30 case-sensitive characters.

	channel_name?: string

	// Feature name of the filtered log. The value is a string of 1 to 31 case-insensitive characters.

	filter_feature_name?: string

	// Name of the filtered log. The value is a string of 1 to 63 case-sensitive characters.

	filter_log_name?: string

	// Level of logs saved on a log server.

	level?: string

	// Server name. The value is a string of 1 to 255 case-sensitive characters.

	server_domain?: string

	// Direction of information output.

	channel_out_direct?: string

	// Log record tool.

	facility?: string

	// Log server address, IPv4 or IPv6 type. The value is a string of 0 to 255 characters. The value can be an valid IPv4 or IPv6 address.

	server_ip?: string

	// SSL policy name. The value is a string of 1 to 23 case-sensitive characters.

	ssl_policy_name?: string

	// Specify desired state of the resource.

	state?: string

	// Transport mode. The value is of the enumerated type and case-sensitive.

	transport_mode?: string

	// Log server address type, IPv4 or IPv6.

	ip_type?: string

	// Log server timestamp. The value is of the enumerated type and case-sensitive.

	timestamp?: string

	// VPN name on a log server. The value is a string of 1 to 31 case-sensitive characters. The default value is _public_.

	vrf_name?: string
}

ce_interface_ospf :: {

	// Specifies a password for MD5, HMAC-MD5, or HMAC-SHA256 authentication. The value is a string of 1 to 255 case-sensitive characters, spaces not supported.

	auth_text_md5?: string

	// Full name of interface, i.e. 40GE1/0/10.

	interface: string

	// Specifies a process ID. The value is an integer ranging from 1 to 4294967295.

	process_id: string

	// Setting to true will prevent this interface from receiving HELLO packets. Valid values are 'true' and 'false'.

	silent_interface?: bool

	// Determines whether the config should be present or not on the device.

	state?: string

	// Ospf area associated with this ospf process. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer between 1 and 4294967295.

	area: string

	// Authentication key id when C(auth_mode) is 'hmac-sha256', 'md5' or 'hmac-md5. Valid value is an integer is in the range from 1 to 255.

	auth_key_id?: string

	// Specifies the authentication type.

	auth_mode?: string

	// Specifies a password for simple authentication. The value is a string of 1 to 8 characters.

	auth_text_simple?: string

	// The cost associated with this interface. Valid values are an integer in the range from 1 to 65535.

	cost?: string

	// Time interval an ospf neighbor waits for a hello packet before tearing down adjacencies. Valid values are an integer in the range from 1 to 235926000.

	dead_interval?: string

	// Time between sending successive hello packets. Valid values are an integer in the range from 1 to 65535.

	hello_interval?: string
}

ce_acl :: {

	// Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.

	source_ip?: string

	// Specify desired state of the resource.

	state?: string

	// ACL number. The value is an integer ranging from 2000 to 2999.

	acl_num?: string

	// Type of packet fragmentation.

	frag_type?: string

	// Description about an ACL rule. The value is a string of 1 to 127 characters.

	rule_description?: string

	// Name of a basic ACL rule. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces or begin with an underscore (_).

	rule_name?: string

	// Name of a time range in which an ACL rule takes effect. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces. The name must start with an uppercase or lowercase letter. In addition, the word "all" cannot be specified as a time range name.

	time_range?: string

	// ACL description. The value is a string of 1 to 127 characters.

	acl_description?: string

	// ACL number or name. For a numbered rule group, the value ranging from 2000 to 2999 indicates a basic ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.

	acl_name: string

	// Flag of logging matched data packets.

	log_flag?: bool

	// Matching mode of basic ACL rules.

	rule_action?: string

	// ACL step. The value is an integer ranging from 1 to 20. The default value is 5.

	acl_step?: string

	// VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.

	vrf_name?: string

	// ID of a basic ACL rule in configuration mode. The value is an integer ranging from 0 to 4294967294.

	rule_id?: string

	// Mask of a source IP address. The value is an integer ranging from 1 to 32.

	src_mask?: string
}

ce_rollback :: {

	// The operation of configuration rollback.

	action: string

	// Specifies the label of the configuration rollback point to which system configurations are expected to roll back. The value is an integer that the system generates automatically.

	commit_id?: string

	// Specifies a configuration file for configuration rollback. The value is a string of 5 to 64 case-sensitive characters in the format of *.zip, *.cfg, or *.dat, spaces not supported.

	filename?: string

	// Specifies a user label for a configuration rollback point. The value is a string of 1 to 256 case-sensitive ASCII characters, spaces not supported. The value must start with a letter and cannot be presented in a single hyphen (-).

	label?: string

	// Specifies the number of configuration rollback points. The value is an integer that ranges from 1 to 80.

	last?: string

	// Specifies the number of configuration rollback points. The value is an integer that ranges from 1 to 80.

	oldest?: string
}

ce_stp :: {

	// Enable root protection on the current port.

	root_protection?: string

	// Set an operation mode for the current MSTP process. The mode can be STP, RSTP, or MSTP.

	stp_mode?: string

	// Set the time the MSTP device takes to handle the maximum number of TC BPDUs and immediately refresh forwarding entries. The value is an integer ranging from 1 to 600, in seconds.

	tc_protection_interval?: string

	// Enable or disable STP on a switch.

	stp_enable?: string

	// Configure the TC BPDU protection function for an MSTP process.

	tc_protection?: string

	// Set the maximum number of TC BPDUs that the MSTP can handle. The value is an integer ranging from 1 to 255. The default value is 1 on the switch.

	tc_protection_threshold?: string

	// Specify a port as a BPDU filter port.

	bpdu_filter?: string

	// Configure BPDU protection on an edge port. This function prevents network flapping caused by attack packets.

	bpdu_protection?: string

	// Set the current port as an edge port.

	edged_port?: string

	// STP convergence mode. Fast means set STP aging mode to Fast. Normal means set STP aging mode to Normal.

	stp_converge?: string

	// Set the path cost of the current port. The default instance is 0.

	cost?: string

	// Interface name. If the value is C(all), will apply configuration to all interfaces. if the value is a special name, only support input the full name.

	interface?: string

	// Enable loop protection on the current port.

	loop_protection?: string

	// Specify desired state of the resource.

	state?: string
}

ce_snmp_user :: {

	// Remote engine id of the USM user.

	remote_engine_id?: string

	// Name of the group where user belongs to.

	user_group?: string

	// Unique name to identify the local user.

	aaa_local_user?: string

	// Access control list number.

	acl_number?: string

	// The authentication password. Password length, 8-255 characters.

	auth_key?: string

	// The encryption password. Password length 8-255 characters.

	priv_key?: string

	// Authentication protocol.

	auth_protocol?: string

	// Encryption protocol.

	priv_protocol?: string

	// Unique name to identify the USM user.

	usm_user_name?: string
}

ce_vrf_interface :: {

	// An interface that can binding VPN instance, i.e. 40GE1/0/22, Vlanif10. Must be fully qualified interface name. Interface types, such as 10GE, 40GE, 100GE, LoopBack, MEth, Tunnel, Vlanif....

	vpn_interface: string

	// VPN instance, the length of vrf name is 1 ~ 31, i.e. "test", but can not be C(_public_).

	vrf: string

	// Manage the state of the resource.

	state?: string
}

ce_vxlan_global :: {

	// Enabling or disabling the VXLAN ACL extension function.

	nvo3_acl_extend?: string

	// Load balancing of VXLAN packets through ECMP in optimized mode.

	nvo3_ecmp_hash?: string

	// Loop prevention of VXLAN traffic in non-enhanced mode. When the device works in non-enhanced mode, inter-card forwarding of VXLAN traffic may result in loops.

	nvo3_prevent_loops?: string

	// Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.

	bridge_domain_id?: string

	// Eth-Trunk from load balancing VXLAN packets in optimized mode.

	nvo3_eth_trunk_hash?: string

	// Configuring the Layer 3 VXLAN Gateway to Work in Non-loopback Mode.

	nvo3_gw_enhanced?: string

	// Enabling or disabling the VXLAN service extension function.

	nvo3_service_extend?: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// Set the tunnel mode to VXLAN when configuring the VXLAN feature.

	tunnel_mode_vxlan?: string
}

ce_bgp_af :: {

	// If the value is true, modifying extended community attributes is allowed. If the value is false, modifying extended community attributes is not allowed.

	policy_ext_comm_enable?: string

	// If the value is true, relay delay enable. If the value is false, relay delay disable.

	relay_delay_enable?: string

	// If the value is true, the AS path attribute is ignored when BGP selects an optimal route. If the value is false, the AS path attribute is not ignored when BGP selects an optimal route. An AS path with a smaller length has a higher priority.

	as_path_neglect?: string

	// Specify the mask length of an IP address. The value is an integer ranging from 0 to 128.

	mask_len?: string

	// If the value is true, the metrics of next-hop IGP routes are not compared when BGP selects an optimal route. If the value is false, the metrics of next-hop IGP routes are not compared when BGP selects an optimal route. A route with a smaller metric has a higher priority.

	igp_metric_ignore?: string

	// Set a cluster ID. Configuring multiple RRs in a cluster can enhance the stability of the network. The value is an integer ranging from 1 to 4294967295.

	reflector_cluster_id?: string

	// Address family type of a BGP instance.

	af_type: string

	// Allow routes with BGP origin AS validation result Invalid to be selected. If the value is true, invalid routes can participate in route selection. If the value is false, invalid routes cannot participate in route selection.

	allow_invalid_as?: string

	// Specify the Multi-Exit-Discriminator (MED) of BGP routes. The value is an integer ranging from 0 to 4294967295.

	default_med?: string

	// Load balancing as path ignore.

	load_balancing_as_path_ignore?: string

	// Specify the IP address advertised by BGP. The value is a string of 0 to 255 characters.

	network_address?: string

	// If the value is true, the third-party next hop function is enabled. If the value is false, the third-party next hop function is disabled.

	nexthop_third_party?: string

	// If the value is true, BGP is enabled to advertise only optimal routes in the RM to peers. If the value is false, BGP is not enabled to advertise only optimal routes in the RM to peers.

	active_route_advertise?: string

	// Number of Add-Path routes. The value is an integer ranging from 2 to 64.

	add_path_sel_num?: string

	// ID of a router that is in IPv4 address format. The value is a string of 0 to 255 characters. The value is in dotted decimal notation.

	router_id?: string

	// If the value is true, the router ID attribute is ignored when BGP selects the optimal route. If the value is false, the router ID attribute is not ignored when BGP selects the optimal route.

	router_id_neglect?: string

	// If the value is true, the function to advertise supernetwork unicast routes is enabled. If the value is false, the function to advertise supernetwork unicast routes is disabled.

	supernet_uni_adv?: string

	// If the value is true, the next hop of an advertised route is changed to the advertiser itself in IBGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in IBGP load-balancing scenarios.

	ibgp_ecmp_nexthop_changed?: string

	// Specify the maximum number of equal-cost routes in the BGP routing table. The value is an integer ranging from 1 to 65535.

	maximum_load_balance?: string

	// Set the protocol priority of IBGP routes. The value is an integer ranging from 1 to 255.

	preference_internal?: string

	// If the value is true, route reflection is enabled between clients. If the value is false, route reflection is disabled between clients.

	reflect_between_client?: string

	// Set the Local-Preference attribute. The value is an integer. The value is an integer ranging from 0 to 4294967295.

	default_local_pref?: string

	// Ingress lsp policy name.

	ingress_lsp_policy_name?: string

	// If the value is true, the route reflector is enabled to modify route path attributes based on an export policy. If the value is false, the route reflector is disabled from modifying route path attributes based on an export policy.

	reflect_chg_path?: string

	// Process ID of an imported routing protocol. The value is an integer ranging from 0 to 4294967295.

	import_process_id?: string

	// If the value is true, when BGP selects an optimal route, the system uses 4294967295 as the MED value of a route if the route's attribute does not carry a MED value. If the value is false, the system uses 0 as the MED value of a route if the route's attribute does not carry a MED value.

	med_none_as_maximum?: string

	// Set the protocol priority of EBGP routes. The value is an integer ranging from 1 to 255.

	preference_external?: string

	// Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created. The value is a string of 1 to 31 case-sensitive characters.

	vrf_name: string

	// If the value is true, BGP auto FRR is enabled. If the value is false, BGP auto FRR is disabled.

	auto_frr_enable?: string

	// If the value is true, enable reduce priority to advertise route. If the value is false, disable reduce priority to advertise route.

	lowest_priority?: string

	// Set a routing policy to filter routes so that a configured priority is applied to the routes that match the specified policy. The value is a string of 1 to 40 characters.

	prefrence_policy_name?: string

	// If the value is true, BGP routes cannot be advertised to the IP routing table. If the value is false, Routes preferred by BGP are advertised to the IP routing table.

	rib_only_enable?: string

	// If the value is true, automatic aggregation is enabled for locally imported routes. If the value is false, automatic aggregation is disabled for locally imported routes.

	summary_automatic?: string

	// If the value is true, the MEDs of routes learned from peers in different autonomous systems are compared when BGP selects an optimal route. If the value is false, the MEDs of routes learned from peers in different autonomous systems are not compared when BGP selects an optimal route.

	always_compare_med?: string

	// Specify the name of a route-policy for route iteration. The value is a string of 1 to 40 characters.

	nhp_relay_route_policy_name?: string

	// If the value is true, importing default routes to the BGP routing table is allowed. If the value is false, importing default routes to the BGP routing table is not allowed.

	default_rt_import_enable?: string

	// If the value is true, after the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are deleted immediately when the interface goes Down. If the value is false, after the fast EBGP interface awareness function is enabled, EBGP sessions on an interface are not deleted immediately when the interface goes Down.

	ebgp_if_sensitive?: string

	// Set a cluster ipv4 address. The value is expressed in the format of an IPv4 address.

	reflector_cluster_ipv4?: string

	// Route selection delay. The value is an integer ranging from 0 to 3600.

	route_sel_delay?: string

	// Set the number of the extended community filter supported by an RR group. The value is a string of 1 to 51 characters.

	rr_filter_number?: string

	// Specify desired state of the resource.

	state?: string

	// If the value is true, the next hop of an advertised route is changed to the advertiser itself in EBGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in EBGP load-balancing scenarios.

	ebgp_ecmp_nexthop_changed?: string

	// Specify the maximum number of equal-cost EBGP routes. The value is an integer ranging from 1 to 65535.

	max_load_ebgp_num?: string

	// Next hop select depend type.

	next_hop_sel_depend_type?: string

	// Specify the name of a routing policy. The value is a string of 1 to 40 characters.

	rib_only_policy_name?: string

	// If the value is true, BGP deterministic-MED is enabled. If the value is false, BGP deterministic-MED is disabled.

	determin_med?: string

	// Originator prior.

	originator_prior?: string

	// Set the protocol priority of a local BGP route. The value is an integer ranging from 1 to 255.

	preference_local?: string

	// Routing protocol from which routes can be imported.

	import_protocol?: string

	// If the value is true, VPN-Target filtering function is performed for received VPN routes. If the value is false, VPN-Target filtering function is not performed for received VPN routes.

	policy_vpn_target?: string

	// If the value is true, the next hop of an advertised route is changed to the advertiser itself in BGP load-balancing scenarios. If the value is false, the next hop of an advertised route is not changed to the advertiser itself in BGP load-balancing scenarios.

	ecmp_nexthop_changed?: string

	// Specify the maximum number of equal-cost IBGP routes. The value is an integer ranging from 1 to 65535.

	max_load_ibgp_num?: string

	// If the value is true, the function to advertise supernetwork label is enabled. If the value is false, the function to advertise supernetwork label is disabled.

	supernet_label_adv?: string

	// If the value is true, VPN BGP instances are enabled to automatically select router IDs. If the value is false, VPN BGP instances are disabled from automatically selecting router IDs.

	vrf_rid_auto_sel?: string
}

ce_evpn_bgp_rr :: {

	// Specifies the number of the AS, in integer format. The value is an integer that ranges from 1 to 4294967295.

	as_number: string

	// Enable or disable the BGP-EVPN address family.

	bgp_evpn_enable?: string

	// Specifies the name of a BGP instance. The value of instance-name can be an integer 1 or a string of 1 to 31.

	bgp_instance?: string

	// Specifies the IPv4 address or the group name of a peer.

	peer?: string

	// Specify the peer type.

	peer_type?: string

	// Enable or disable the VPN-Target filtering.

	policy_vpn_target?: string

	// Configure the local device as the route reflector and the peer or peer group as the client of the route reflector.

	reflect_client?: string
}

ce_interface :: {

	// Specifies whether the interface is a Layer 2 sub-interface.

	l2sub?: bool

	// Manage Layer 2 or Layer 3 state of the interface.

	mode?: string

	// Specify desired state of the resource.

	state?: string

	// Specifies the interface management status. The value is an enumerated type. up, An interface is in the administrative Up state. down, An interface is in the administrative Down state.

	admin_state?: string

	// Specifies an interface description. The value is a string of 1 to 242 case-sensitive characters, spaces supported but question marks (?) not supported.

	description?: string

	// Full name of interface, i.e. 40GE1/0/10, Tunnel1.

	interface?: string

	// Interface type to be configured from the device.

	interface_type?: string
}

ce_mlag_interface :: {

	// ID of the M-LAG. The value is an integer that ranges from 1 to 2048.

	mlag_id?: string

	// M-LAG global LACP system priority. The value is an integer ranging from 0 to 65535. The default value is 32768.

	mlag_priority_id?: string

	// M-LAG global LACP system MAC address. The value is a string of 0 to 255 characters. The default value is the MAC address of the Ethernet port of MPU.

	mlag_system_id?: string

	// Specify desired state of the resource.

	state?: string

	// ID of a DFS group.The value is 1.

	dfs_group_id?: string

	// Name of the local M-LAG interface. The value is ranging from 0 to 511.

	eth_trunk_id?: string

	// Name of the interface that enters the Error-Down state when the peer-link fails. The value is a string of 1 to 63 characters.

	interface?: string

	// Configure the interface on the slave device to enter the Error-Down state.

	mlag_error_down?: string
}

ce_vrf_af :: {

	// Is extend vpn or normal vpn.

	evpn?: bool

	// VPN instance route distinguisher,the RD used to distinguish same route prefix from different vpn. The RD must be setted before setting vpn_target_value.

	route_distinguisher?: string

	// Manage the state of the af.

	state?: string

	// Manage the state of the vpn target.

	vpn_target_state?: string

	// VPN instance vpn target type.

	vpn_target_type?: string

	// VPN instance target value. Such as X.X.X.X:number<0-65535> or number<0-65535>:number<0-4294967295> or number<0-65535>.number<0-65535>:number<0-65535> or number<65536-4294967295>:number<0-65535> but not support 0:0 and 0.0:0.

	vpn_target_value?: string

	// VPN instance.

	vrf: string

	// VPN instance address family.

	vrf_aftype?: string
}

ce_acl_interface :: {

	// Interface name. Only support interface full name, such as "40GE2/0/1".

	interface: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// ACL number or name. For a numbered rule group, the value ranging from 2000 to 4999. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.

	acl_name: string

	// Direction ACL to be applied in on the interface.

	direction: string
}

ce_bfd_global :: {

	// Determines whether the config should be present or not on the device.

	state?: string

	// Indicates the priority of BFD control packets for dynamic BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.

	tos_exp_dynamic?: string

	// Indicates the priority of BFD control packets for static BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.

	tos_exp_static?: string

	// Enables the global Bidirectional Forwarding Detection (BFD) function.

	bfd_enable?: string

	// Specifies an initial flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 2000.

	damp_init_wait_time?: string

	// Specifies the default multicast IP address. The value ranges from 224.0.0.107 to 224.0.0.250.

	default_ip?: string

	// Specifies a maximum flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 15000.

	damp_max_wait_time?: string

	// Specifies a secondary flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 5000.

	damp_second_wait_time?: string

	// Specifies the delay before a BFD session becomes Up. The value is an integer ranging from 1 to 600, in seconds. The default value is 0, indicating that a BFD session immediately becomes Up.

	delay_up_time?: string
}

ce_snmp_contact :: {

	// Contact information.

	contact: string

	// Manage the state of the resource.

	state?: string
}

ce_vlan :: {

	// Single VLAN ID, in the range from 1 to 4094.

	vlan_id?: string

	// Range of VLANs such as C(2-10) or C(2,5,10-15), etc.

	vlan_range?: string

	// Specify VLAN description, minimum of 1 character, maximum of 80 characters.

	description?: string

	// Name of VLAN, minimum of 1 character, maximum of 31 characters.

	name?: string

	// Manage the state of the resource.

	state?: string
}

ce_ospf :: {

	// Specifies the address of the network segment where the interface resides. The value is in dotted decimal notation.

	addr?: string

	// Specifies the area ID. The area with the area-id being 0 is a backbone area. Valid values are a string, formatted as an IP address (i.e. "0.0.0.0") or as an integer between 1 and 4294967295.

	area?: string

	// Authentication key id when C(auth_mode) is 'hmac-sha256', 'md5' or 'hmac-md5. Valid value is an integer is in the range from 1 to 255.

	auth_key_id?: string

	// Specifies the authentication type.

	auth_mode?: string

	// Specifies a password for simple authentication. The value is a string of 1 to 8 characters.

	auth_text_simple?: string

	// IP network wildcard bits in decimal format between 0 and 32.

	mask?: string

	// The maximum number of paths for forward packets over multiple paths. Valid value is an integer in the range from 1 to 64.

	max_load_balance?: string

	// IPv4 address for configure next-hop address's weight. Valid values are a string, formatted as an IP address.

	nexthop_addr?: string

	// Indicates the weight of the next hop. The smaller the value is, the higher the preference of the route is. It is an integer that ranges from 1 to 254.

	nexthop_weight?: string

	// Specifies a process ID. The value is an integer ranging from 1 to 4294967295.

	process_id: string

	// Specifies a password for MD5, HMAC-MD5, or HMAC-SHA256 authentication. The value is a string of 1 to 255 case-sensitive characters, spaces not supported.

	auth_text_md5?: string

	// Determines whether the config should be present or not on the device.

	state?: string
}

ce_ospf_vrf :: {

	// Specifies the max interval of originate LSA . Valid value is an integer, in millisecond, from 1 to 10000, the default value is 5000.

	lsaomaxinterval?: string

	// Specifies the start interval of originate LSA . Valid value is an integer, in millisecond, from 0 to 1000, the default value is 500.

	lsaostartinterval?: string

	// Specifies the ospf private route id,. Valid values are a string, formatted as an IP address (i.e. "10.1.1.1") the length is 0 - 20.

	route_id?: string

	// Specifies the interval to calculate SPF when use second level  timer. Valid value is an integer, in second, from 1 to 10.

	spfinterval?: string

	// Specifies the mode of timer to calculate interval of arrive LSA. If set the parameter but not specifies value, the default will be used. If true use general timer. If false use intelligent timer.

	lsaalflag?: bool

	// Specifies whether cancel the interval of LSA originate or not. If set the parameter but noe specifies value, the default will be used. true:cancel the interval of LSA originate, the interval is 0. false:do not cancel the interval of LSA originate.

	lsaointervalflag?: bool

	// Specifies the start interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 500.

	lsaastartinterval?: string

	// Specifies the hold interval of originate LSA . Valid value is an integer, in millisecond, from 0 to 5000, the default value is 1000.

	lsaoholdinterval?: string

	// Specifies the max interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 20000, the default value is 5000.

	spfmaxinterval?: string

	// Specifies the start interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 1000, the default value is 50.

	spfstartinterval?: string

	// Specifies the description information of ospf process.

	description?: string

	// Specifies the interval of arrive LSA when use the general timer. Valid value is an integer, in millisecond, from 0 to 10000.

	lsaainterval?: string

	// The ID of the ospf process. Valid values are an integer, 1 - 4294967295, the default value is 1.

	ospf: string

	// Specifies the interval to calculate SPF when use millisecond level  timer. Valid value is an integer, in millisecond, from 1 to 10000.

	spfintervalmi?: string

	// Specify desired state of the resource.

	state?: string

	// Specifies the reference bandwidth used to assign ospf cost. Valid values are an integer, in Mbps, 1 - 2147483648, the default value is 100.

	bandwidth?: string

	// Specifies the hold interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 500.

	lsaaholdinterval?: string

	// Specifies the hold interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 5000, the default value is 200.

	spfholdinterval?: string

	// Specifies the mode of timer which used to calculate SPF. If set the parameter but noe specifies value, the default will be used. If is intelligent-timer, then use intelligent timer. If is timer, then use second level timer. If is millisecond, then use millisecond level timer.

	spfintervaltype?: string

	// Specifies the vpn instance which use ospf,length is 1 - 31. Valid values are a string.

	vrf?: string

	// Specifies the max interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 1000.

	lsaamaxinterval?: string

	// Specifies the interval of originate LSA . Valid value is an integer, in second, from 0 to 10, the default value is 5.

	lsaointerval?: string
}

ce_vxlan_tunnel :: {

	// Specifies the working mode of an NVE interface.

	nve_mode?: string

	// Specifies the number of an NVE interface. The value ranges from 1 to 2.

	nve_name?: string

	// Specifies the IP address of a remote VXLAN tunnel endpoints (VTEP). The value is in dotted decimal notation.

	peer_list_ip?: string

	// The operation type of routing protocol.

	protocol_type?: string

	// Specifies an IP address for a source VTEP. The value is in dotted decimal notation.

	source_ip?: string

	// Manage the state of the resource.

	state?: string

	// Specifies a VXLAN network identifier (VNI) ID. The value is an integer ranging from 1 to 16000000.

	vni_id?: string

	// Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.

	bridge_domain_id?: string
}

ce_bgp_neighbor :: {

	// Name of a BGP instance. The name is a case-sensitive string of characters. The BGP instance can be used only after the corresponding VPN instance is created.

	vrf_name: string

	// Specify the Keepalive time of a peer or peer group. The value is an integer ranging from 0 to 21845. The default value is 60.

	keep_alive_time?: string

	// Connection address of a peer, which can be an IPv4 or IPv6 address.

	peer_addr: string

	// Add the Fake AS number to received Update packets.

	prepend_fake_as?: string

	// Maximum TCP MSS value used for TCP connection establishment for a peer. The value is an integer ranging from 176 to 4096.

	tcp_MSS?: string

	// Description of a peer, which can be letters or digits. The value is a string of 1 to 80 characters.

	description?: string

	// If the value is true, BGP is enabled to advertise REFRESH packets. If the value is false, the route refresh function is enabled.

	route_refresh?: string

	// Specify desired state of the resource.

	state?: string

	// Enable GTSM on a peer or peer group. The valid-TTL-Value parameter is used to specify the number of TTL hops to be detected. The value is an integer ranging from 1 to 255.

	valid_ttl_hops?: string

	// If the value is true, peers are enabled to inherit the BFD function from the peer group. If the value is false, peers are disabled to inherit the BFD function from the peer group.

	is_bfd_block?: string

	// If the value is true, peer create MPLS Local IFNET disable. If the value is false, peer create MPLS Local IFNET enable.

	mpls_local_ifnet_disable?: string

	// The character string in a password identifies the contents of the password, spaces not supported. The value is a string of 1 to 255 characters.

	pswd_cipher_text?: string

	// AS number of a peer. The value is a string of 1 to 11 characters.

	remote_as: string

	// The value can be Connect-only, Listen-only, or Both.

	connect_mode?: string

	// Specify the minimum interval at which BFD packets are sent. The value is an integer ranging from 50 to 1000, in milliseconds.

	tx_interval?: string

	// Specify the Keychain authentication name used when BGP peers establish a TCP connection. The value is a string of 1 to 47 case-insensitive characters.

	key_chain_name?: string

	// ConnectRetry interval. The value is an integer ranging from 1 to 65535.

	conn_retry_time?: string

	// If the value is true, BFD is enabled. If the value is false, BFD is disabled.

	is_bfd_enable?: string

	// If the value is true, BGP is enabled to record peer session status and event information. If the value is false, BGP is disabled from recording peer session status and event information.

	is_log_change?: string

	// If the value is true, the system is enabled to preferentially use the single-hop mode for BFD session setup between IBGP peers. If the value is false, the system is disabled from preferentially using the single-hop mode for BFD session setup between IBGP peers.

	is_single_hop?: string

	// If the value is true, the EBGP peer can use either a fake AS number or the actual AS number. If the value is false, the EBGP peer can only use a fake AS number.

	dual_as?: string

	// Specify the Hold time of a peer or peer group. The value is 0 or an integer ranging from 3 to 65535.

	hold_time?: string

	// Name of a source interface that sends BGP packets. The value is a string of 1 to 63 characters.

	local_if_name?: string

	// Specify the Min hold time of a peer or peer group.

	min_hold_time?: string

	// Specify the detection multiplier. The default value is 3. The value is an integer ranging from 3 to 50.

	multiplier?: string

	// Add the global AS number to the Update packets to be advertised.

	prepend_global_as?: string

	// Enable BGP peers to establish a TCP connection and perform the Message Digest 5 (MD5) authentication for BGP messages.

	pswd_type?: string

	// Specify the minimum interval at which BFD packets are received. The value is an integer ranging from 50 to 1000, in milliseconds.

	rx_interval?: string

	// If the value is true, the router has all extended capabilities. If the value is false, the router does not have all extended capabilities.

	conventional?: string

	// Maximum number of hops in an indirect EBGP connection. The value is an ranging from 1 to 255.

	ebgp_max_hop?: string

	// Fake AS number that is specified for a local peer. The value is a string of 1 to 11 characters.

	fake_as?: string

	// If the value is true, the session with a specified peer is torn down and all related routing entries are cleared. If the value is false, the session with a specified peer is retained.

	is_ignore?: string
}

ce_evpn_bd_vni :: {

	// Add VPN targets to the export VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.

	vpn_target_export?: string

	// Add VPN targets to the import VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.

	vpn_target_import: string

	// Specify an existed bridge domain (BD).The value is an integer ranging from 1 to 16777215.

	bridge_domain_id: string

	// Create or delete an EVPN instance for a VXLAN in BD view.

	evpn?: string

	// Configures a route distinguisher (RD) for a BD EVPN instance. The format of an RD can be as follows
	// 1) 2-byte AS number:4-byte user-defined number, for example, 1:3. An AS number is an integer ranging from 0 to 65535, and a user-defined number is an integer ranging from 0 to 4294967295. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0:0.
	// 2) Integral 4-byte AS number:2-byte user-defined number, for example, 65537:3. An AS number is an integer ranging from 65536 to 4294967295, and a user-defined number is an integer ranging from 0 to 65535.
	// 3) 4-byte AS number in dotted notation:2-byte user-defined number, for example, 0.0:3 or 0.1:0. A 4-byte AS number in dotted notation is in the format of x.y, where x and y are integers ranging from 0 to 65535.
	// 4) A user-defined number is an integer ranging from 0 to 65535. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0.0:0.
	// 5) 32-bit IP address:2-byte user-defined number. For example, 192.168.122.15:1. An IP address ranges from 0.0.0.0 to 255.255.255.255, and a user-defined number is an integer ranging from 0 to 65535.
	// 6) 'auto' specifies the RD that is automatically generated.

	route_distinguisher?: string

	// Manage the state of the resource.

	state?: string

	// Add VPN targets to both the import and export VPN target lists of a BD EVPN instance. The format is the same as route_distinguisher.

	vpn_target_both?: string
}

ce_info_center_log :: {

	// Specifies a channel ID. The value is an integer ranging from 0 to 9.

	channel_id?: string

	// Enables the Switch to send logs to the log buffer.

	log_buff_enable?: string

	// Specifies the maximum number of logs in the log buffer. The value is an integer that ranges from 0 to 10240. If logbuffer-size is 0, logs are not displayed.

	log_buff_size?: string

	// Indicates whether log filtering is enabled.

	log_enable?: string

	// Specifies a log severity.

	log_level?: string

	// Sets the timestamp format of logs.

	log_time_stamp?: string

	// Specifies the name of a module. The value is a module name in registration logs.

	module_name?: string

	// Determines whether the config should be present or not on the device.

	state?: string
}

ce_ntp_auth :: {

	// Configure ntp authentication enable or unconfigure ntp authentication enable.

	authentication?: string

	// Authentication key identifier (numeric).

	key_id: string

	// Manage the state of the resource.

	state?: string

	// Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.

	trusted_key?: string

	// Specify authentication algorithm.

	auth_mode?: string

	// Plain text with length of 1 to 255, encrypted text with length of 20 to 392.

	auth_pwd?: string

	// Whether the given password is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.

	auth_type?: string
}

ce_acl_advance :: {

	// ACL step. The value is an integer ranging from 1 to 20. The default value is 5.

	acl_step?: string

	// Flag of logging matched data packets.

	log_flag?: bool

	// Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.

	source_ip?: string

	// Name of a source port pool. The value is a string of 1 to 32 characters.

	src_port_pool_name?: string

	// Specify desired state of the resource.

	state?: string

	// ToS value on which data packet filtering is based. The value is an integer ranging from 0 to 15.

	tos?: string

	// Match established connections.

	established?: bool

	// Protocol type.

	protocol?: string

	// Source IP address mask. The value is an integer ranging from 1 to 32.

	src_mask?: string

	// Whether TTL Expired is matched, with the TTL value of 1.

	ttl_expired?: bool

	// VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.

	vrf_name?: string

	// Destination IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.

	dest_ip?: string

	// Start port number of the destination port. The value is an integer ranging from 0 to 65535.

	dest_port_begin?: string

	// ICMP name.

	icmp_name?: string

	// Internet Group Management Protocol.

	igmp_type?: string

	// Data packets can be filtered based on the priority field. The value is an integer ranging from 0 to 7.

	precedence?: string

	// Name of a time range in which an ACL rule takes effect.

	time_range?: string

	// ACL description. The value is a string of 1 to 127 characters.

	acl_description?: string

	// Differentiated Services Code Point. The value is an integer ranging from 0 to 63.

	dscp?: string

	// Matching mode of basic ACL rules.

	rule_action?: string

	// Name of a basic ACL rule. The value is a string of 1 to 32 characters.

	rule_name?: string

	// Start port number of the source port. The value is an integer ranging from 0 to 65535.

	src_port_begin?: string

	// Range type of the source port.

	src_port_op?: string

	// TCP flag value. The value is an integer ranging from 0 to 63.

	syn_flag?: string

	// ACL number. The value is an integer ranging from 3000 to 3999.

	acl_num?: string

	// Name of a destination pool. The value is a string of 1 to 32 characters.

	dest_pool_name?: string

	// End port number of the destination port. The value is an integer ranging from 0 to 65535.

	dest_port_end?: string

	// Range type of the destination port.

	dest_port_op?: string

	// ID of a basic ACL rule in configuration mode. The value is an integer ranging from 0 to 4294967294.

	rule_id?: string

	// End port number of the source port. The value is an integer ranging from 0 to 65535.

	src_port_end?: string

	// ACL number or name. For a numbered rule group, the value ranging from 3000 to 3999 indicates a advance ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.

	acl_name: string

	// Destination IP address mask. The value is an integer ranging from 1 to 32.

	dest_mask?: string

	// Name of a destination port pool. The value is a string of 1 to 32 characters.

	dest_port_pool_name?: string

	// ICMP message code. Data packets can be filtered based on the ICMP message code. The value is an integer ranging from 0 to 255.

	icmp_code?: string

	// Description about an ACL rule.

	rule_description?: string

	// Name of a source pool. The value is a string of 1 to 32 characters.

	src_pool_name?: string

	// Type of packet fragmentation.

	frag_type?: string

	// ICMP type. This parameter is available only when the packet protocol is ICMP. The value is an integer ranging from 0 to 255.

	icmp_type?: string

	// TCP flag mask value. The value is an integer ranging from 0 to 63.

	tcp_flag_mask?: string
}

ce_info_center_debug :: {

	// Timestamp type of debugging information.

	debug_time_stamp?: string

	// Module name of the rule. The value is a string of 1 to 31 case-insensitive characters. The default value is default. Please use lower-case letter, such as [aaa, acl, arp, bfd].

	module_name?: string

	// Specify desired state of the resource.

	state?: string

	// Number of a channel. The value is an integer ranging from 0 to 9. The default value is 0.

	channel_id?: string

	// Whether a device is enabled to output debugging information.

	debug_enable?: string

	// Debug level permitted to output.

	debug_level?: string
}

ce_startup :: {

	// Name of the configuration file that is applied for the next startup. The value is a string of 5 to 255 characters.

	cfg_file?: string

	// Name of the patch file that is applied for the next startup.

	patch_file?: string

	// Position of the device.The value is a string of 1 to 32 characters. The possible value of slot is all, slave-board, or the specific slotID.

	slot?: string

	// File name of the system software that is applied for the next startup. The value is a string of 5 to 255 characters.

	software_file?: string

	// Display the startup information.

	action?: string
}

ce_vxlan_arp :: {

	// Specifies a BD(bridge domain) ID. The value is an integer ranging from 1 to 16777215.

	bridge_domain_id?: string

	// Enables EVN BGP.

	evn_bgp?: string

	// Full name of VBDIF interface, i.e. Vbdif100.

	vbdif_name?: string

	// Configures the local device as the route reflector (RR) and its peer as the client.

	evn_reflect_client?: string

	// Configures the local device as the router reflector (RR) on the EVN network.

	evn_server?: string

	// Specifies the source address of an EVN BGP peer. The value is in dotted decimal notation.

	evn_source_ip?: string

	// Enables EVN BGP or BGP EVPN to advertise host information.

	host_collect_protocol?: string

	// Determines whether the config should be present or not on the device.

	state?: string

	// Enables EVN BGP or BGP EVPN to collect host information.

	arp_collect_host?: string

	// Enables ARP broadcast suppression in a BD.

	arp_suppress?: string

	// Specifies the IP address of an EVN BGP peer. The value is in dotted decimal notation.

	evn_peer_ip?: string
}
