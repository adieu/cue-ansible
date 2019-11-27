package netvisor

pn_prefix_list_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_prefix_list_network: {

		// Prefix List Name.

		pn_name?: string

		// netmask of the network associated the prefix list.

		pn_netmask?: string

		// network associated with the prefix list.

		pn_network?: string

		// State the action to perform. Use C(present) to create prefix-list-network and C(absent) to delete prefix-list-network.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_stp_port :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_stp_port: {

		// STP port filters BPDUs.

		pn_filter?: bool

		// STP port.

		pn_port?: string

		// STP port priority from 0 to 240.

		pn_priority?: string

		// STP port Root guard.

		pn_root_guard?: bool

		// State the action to perform. Use C(update) to update stp-port.

		state: string

		// Specify if a STP port blocks BPDUs.

		pn_block?: bool

		// STP port BPDU guard.

		pn_bpdu_guard?: bool

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// STP port cost from 1 to 200000000.

		pn_cost?: string

		// STP port is an edge port.

		pn_edge?: bool
	}
}

pn_vrouter_bgp_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_bgp_network: {

		// State the action to perform. Use C(present) to add bgp network and C(absent) to remove bgp network.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// BGP network mask.

		pn_netmask?: string

		// IP address for BGP network.

		pn_network?: string

		// name of service config.

		pn_vrouter_name?: string
	}
}

pn_vrouter_interface_ip :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_interface_ip: {

		// IP address.

		pn_ip?: string

		// netmask.

		pn_netmask?: string

		// virtual NIC assigned to interface.

		pn_nic?: string

		// interface VLAN VNET.

		pn_vnet?: string

		// name of service config.

		pn_vrouter_name?: string

		// State the action to perform. Use C(present) to addvrouter-interface-ip and C(absent) to remove vrouter-interface-ip.

		state: string

		// interface Bridge Domain.

		pn_bd?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_ipv6security_raguard :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_ipv6security_raguard: {

		// RA Guard Access List of Source IPs.

		pn_access_list?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// RA Guard Device. host or router.

		pn_device?: string

		// RA Guard Policy Name.

		pn_name: string

		// RA Guard Prefix List.

		pn_prefix_list?: string

		// RA Guard Router Priority.

		pn_router_priority?: string

		// ipv6security-raguard configuration command.

		state?: string
	}
}

pn_switch_setup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_switch_setup: {

		// Date.

		pn_date?: string

		// DNS IP address.

		pn_dns_ip?: string

		// loopback IPv6 address.

		pn_loopback_ip6?: string

		// IPv6 address.

		pn_mgmt_ip6?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Enable host ports by default.

		pn_enable_host_ports?: bool

		// gateway IPv4 address.

		pn_gateway_ip?: string

		// Data in-band IPv6 netmask.

		pn_in_band_netmask_ip6?: string

		// Message of the Day.

		pn_motd?: string

		// Timezone to be configured.

		pn_timezone?: string

		// EULA timestamp.

		pn_eula_timestamp?: string

		// Accept EULA.

		pn_eula_accepted?: string

		// IPv6 address assignment.

		pn_mgmt_ip6_assignment?: string

		// Domain name.

		pn_domain_name?: string

		// Data IPv6 address assignment.

		pn_in_band_ip6_assign?: string

		// loopback IPv4 address.

		pn_loopback_ip?: string

		// secondary DNS IP address.

		pn_dns_secondary_ip?: string

		// Force analytics-store change even if it involves removing data.

		pn_force?: bool

		// Gateway IPv6 address.

		pn_gateway_ip6?: string

		// Data in-band IPv6 address.

		pn_in_band_ip6?: string

		// switch name.

		pn_switch_name?: string

		// State the action to perform. Use C(update) to modify the switch-setup.

		state: string

		// Banner to display on server-switch.

		pn_banner?: string

		// Netmask.

		pn_mgmt_netmask?: string

		// IPv6 netmask.

		pn_mgmt_netmask_ip6?: string

		// plain text password.

		pn_password?: string

		// type of disk storage for analytics.

		pn_analytics_store?: string

		// Data in-band netmask.

		pn_in_band_netmask?: string

		// Management IP address.

		pn_mgmt_ip?: string

		// IP address assignment.

		pn_mgmt_ip_assignment?: string

		// Secondary NTP server.

		pn_ntp_secondary_server?: string

		// NTP server.

		pn_ntp_server?: string

		// data in-band IP address.

		pn_in_band_ip?: string
	}
}

pn_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_user: {

		// plain text password.

		pn_password?: string

		// local or fabric.

		pn_scope?: string

		// State the action to perform. Use C(present) to create user and C(absent) to delete user C(update) to update user.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// initial role for user.

		pn_initial_role?: string

		// username.

		pn_name?: string
	}
}

pn_vrouter_loopback_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_loopback_interface: {

		// loopback IP address.

		pn_ip: string

		// name of service config.

		pn_vrouter_name: string

		// State the action to perform. Use C(present) to add vrouter-loopback-interface and C(absent) to remove vrouter-loopback-interface.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// loopback index from 1 to 255.

		pn_index?: string
	}
}

pn_vrouter_ospf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_ospf: {

		// OSPF network IP address.

		pn_network: string

		// stub area number for the configuration.

		pn_ospf_area?: string

		// name of service config.

		pn_vrouter_name: string

		// vrouter-ospf configuration command.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// OSPF network IP address netmask.

		pn_netmask?: string
	}
}

pn_access_list :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_access_list: {

		// Access List Name.

		pn_name?: string

		// scope. Available valid values - local or fabric.

		pn_scope?: string

		// State the action to perform. Use 'present' to create access-list and 'absent' to delete access-list.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vlan: {

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify a description for the VLAN.

		pn_description?: string

		// Specifies the switch network data port number, list of ports, or range of ports. Port numbers must ne in the range of 1 to 64.

		pn_ports?: string

		// Specify a scope for the VLAN.
		// Required for vlan-create.

		pn_scope?: string

		// Specifies the ports that should have untagged packets mapped to the VLAN. Untagged packets are packets that do not contain IEEE 802.1Q VLAN tags.

		pn_untagged_ports?: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Specify if you want to collect statistics for a VLAN. Statistic collection is enabled by default.

		pn_stats?: bool

		// Specify a VLAN identifier for the VLAN. This is a value between 2 and 4092.

		pn_vlanid: string

		// State the action to perform. Use 'present' to create vlan and 'absent' to delete vlan.

		state: string
	}
}

pn_ipv6security_raguard_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_ipv6security_raguard_vlan: {

		// RA Guard Policy Name.

		pn_name: string

		// Vlans attached to RA Guard Policy.

		pn_vlans: string

		// ipv6security-raguard-vlan configuration command.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_ospf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_ospf: {

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the network IP (IPv4 or IPv6) address.

		pn_network_ip: string

		// Stub area number for the configuration. Required for vrouter-ospf-add.

		pn_ospf_area?: string

		// Specify the name of the vRouter.

		pn_vrouter_name: string

		// Assert the state of the ospf. Use 'present' to add ospf and 'absent' to remove ospf.

		state: string
	}
}

pn_port_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_port_config: {

		// no-local-switching port cannot bridge traffic to another no-local-switching port.

		pn_local_switching?: bool

		// physical port loopback.

		pn_loopback?: bool

		// physical port reflection.

		pn_reflect?: bool

		// defer port bringup.

		pn_defer_bringup?: bool

		// jumbo frames on physical port.

		pn_jumbo?: bool

		// LACP priority from 1 to 65535.

		pn_lacp_priority?: string

		// looping vlans.

		pn_loop_vlans?: string

		// physical port.

		pn_port?: string

		// Allowed TPID in addition to 0x8100 on Vlan header.

		pn_allowed_tpid?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// physical port enable.

		pn_enable?: bool

		// routing.

		pn_routing?: bool

		// physical port speed.

		pn_speed?: string

		// State the action to perform. Use C(update) to modify the port-config.

		state: string

		// physical port autonegotiation.

		pn_autoneg?: bool

		// DSCP map name to enable on port.

		pn_dscp_map?: string

		// Host facing port control setting.

		pn_host_enable?: bool

		// physical interface.

		pn_intf?: string

		// CRC check on ingress and rewrite on egress.

		pn_crc_check_enable?: bool

		// physical port vxlan termination setting.

		pn_vxlan_termination?: bool

		// physical port description.

		pn_description?: string

		// physical port edge switch.

		pn_edge_switch?: bool

		// Fabric guard configuration.

		pn_fabric_guard?: bool

		// send port.

		pn_send_port?: string

		// max egress port data rate limit.

		pn_egress_rate_limit?: string

		// physical Ethernet mode.

		pn_eth_mode?: string

		// physical port mirror only.

		pn_mirror_only?: bool

		// physical port pause.

		pn_pause?: bool

		// physical port MAC Address.

		pn_port_mac_address?: string
	}
}

pn_port_cos_bw :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_port_cos_bw: {

		// CoS priority.

		pn_cos?: string

		// Maximum b/w in percentage.

		pn_max_bw_limit?: string

		// Minimum b/w in percentage.

		pn_min_bw_guarantee?: string

		// physical port number.

		pn_port?: string

		// Scheduling weight (1 to 127) after b/w guarantee met.

		pn_weight?: string

		// State the action to perform. Use C(update) to modify the port-cos-bw.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_snmp_trap_sink :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_snmp_trap_sink: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// community type.

		pn_community?: string

		// destination host.

		pn_dest_host?: string

		// destination port.

		pn_dest_port?: string

		// trap type.

		pn_type?: string

		// State the action to perform. Use C(present) to create snmp-trap-sink and C(absent) to delete snmp-trap-sink.

		state: string
	}
}

pn_vrouterif :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouterif: {

		// Specify a secondary MAC address for the interface.

		pn_secondary_macs?: string

		// Specify the name of the vRouter interface.

		pn_vrouter_name: string

		// Specify the ID for the VRRP interface. The IDs on both vRouters must be the same IS number.

		pn_vrrp_id?: string

		// Specify the priority for the VRRP interface. This is a value between 1 (lowest) and 255 (highest).

		pn_vrrp_priority?: string

		// Specify if the interface is exclusive to the configuration. Exclusive means that other configurations cannot use the interface. Exclusive is specified when you configure the interface as span interface and allows higher throughput through the interface.

		pn_exclusive?: bool

		// Specify an alias for the interface.

		pn_alias?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify if the interface is management, data or span interface.

		pn_interface?: string

		// Specify the IP address of the interface in x.x.x.x/n format.

		pn_interface_ip?: string

		// Specify if the NIC is enabled or not

		pn_nic_enable?: bool

		// Specify the type of NIC. Used for vrouter-interface remove/modify.

		pn_nic_str?: string

		// State the action to perform. Use 'present' to add vrouter interface, 'absent' to remove vrouter interface and 'update' to modify vrouter interface.

		state: string

		// Specify the DHCP method for IP address assignment.

		pn_assignment?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch to run the cli on.

		pn_cliswitch?: string

		// Specify a Layer 3 port for the interface.

		pn_l3port?: string

		// Specify the VLAN identifier. This is a value between 1 and 4092.

		pn_vlan?: string

		// Specify a VRRP advertisement interval in milliseconds. The range is from 30 to 40950 with a default value of 1000.

		pn_vrrp_adv_int?: string

		// Specify the VXLAN identifier. This is a value between 1 and 16777215.

		pn_vxlan?: string
	}
}

pn_admin_session_timeout :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_admin_session_timeout: {

		// State the action to perform. C(update) to modify the admin-session-timeout.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Maximum time to wait for user activity before terminating login session. Minimum should be 60s.

		pn_timeout?: string
	}
}

pn_dhcp_filter :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_dhcp_filter: {

		// State the action to perform. Use C(present) to create dhcp-filter and C(absent) to delete dhcp-filter C(update) to modify the dhcp-filter.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// name of the DHCP filter.

		pn_name?: string

		// trusted ports of dhcp config.

		pn_trusted_ports?: string
	}
}

pn_fabric_local :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_fabric_local: {

		// network to send fabric advertisements on.

		pn_fabric_advertisement_network?: string

		// fabric administration network.

		pn_fabric_network?: string

		// VLAN assigned to fabric.

		pn_vlan?: string

		// State the action to perform. Use C(update) to modify the fabric-local.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch: string

		// control plane network.

		pn_control_network?: string
	}
}

pn_igmp_snooping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_igmp_snooping: {

		// IGMP snooping scope - fabric or local.

		pn_scope?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// enable or disable IGMP snooping.

		pn_enable?: bool

		// IGMP query interval in seconds.

		pn_query_interval?: string

		// maximum response time, in seconds, advertised in IGMP queries.

		pn_query_max_response_time?: string

		// Allow snooping of link-local groups(224.0.0.0/24) on these vlans.

		pn_snoop_linklocal_vlans?: string

		// enable or disable IGMP snooping on vxlans.

		pn_vxlan?: bool

		// State the action to perform. Use C(update) to modify the igmp-snooping.

		state: string

		// enable per VLAN IGMP snooping.

		pn_enable_vlans?: string

		// VLANs on which to use IGMPv2 protocol.

		pn_igmpv2_vlans?: string

		// VLANs on which to use IGMPv3 protocol.

		pn_igmpv3_vlans?: string

		// Remove snooping of link-local groups(224.0.0.0/24) on these vlans.

		pn_no_snoop_linklocal_vlans?: string
	}
}

pn_vflow_table_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vflow_table_profile: {

		// hardware table used by vFlow.

		pn_hw_tbl?: string

		// type of vFlow profile.

		pn_profile?: string

		// State the action to perform. Use C(update) to modify the vflow-table-profile.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// enable or disable vflow profile table.

		pn_enable?: bool
	}
}

pn_vlag :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vlag: {

		// Target switch(es) to run this command on.

		pn_cliswitch?: string

		// Specify the LACP mode.

		pn_lacp_mode?: string

		// Specify the fabric-name of the peer switch.

		pn_peer_switch?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the LACP timeout as slow(30 seconds) or fast(4 seconds).

		pn_lacp_timeout?: string

		// The C(pn_name) takes a valid name for vlag configuration.

		pn_name: string

		// Specify the failover action as move or ignore.

		pn_failover_action?: string

		// Specify the peer VLAG port.
		// Required for vlag-create.

		pn_peer_port?: string

		// Specify the local VLAG port.
		// Required for vlag-create.

		pn_port?: string

		// State the action to perform. Use 'present' to create vlag, 'absent' to delete vlag and 'update' to modify vlag.

		state: string

		// Specify the LACP fallback mode as bundles or individual.

		pn_lacp_fallback?: string

		// Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.

		pn_lacp_fallback_timeout?: string

		// Specify the mode for the VLAG. Active-standby indicates one side is active and the other side is in standby mode. Active-active indicates that both sides of the vlag are up by default.

		pn_mode?: string
	}
}

pn_admin_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_admin_service: {

		// Network File System (NFS) to enable or disable.

		pn_nfs?: bool

		// Web SSL (HTTPS) to enable or disable.

		pn_web_ssl?: bool

		// State the action to perform. Use C(update) to modify the admin-service.

		state: string

		// administrative service interface.

		pn__if?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Netvisor API to enable or disable APIs.

		pn_net_api?: bool

		// Web (HTTP) to enable or disable.

		pn_web?: bool

		// Web logging to enable or disable.

		pn_web_log?: bool

		// Web (HTTP) port to enable or disable.

		pn_web_port?: string

		// Web SSL (HTTPS) port to enable or disable.

		pn_web_ssl_port?: string

		// Internet Message Control Protocol (ICMP) to enable or disable.

		pn_icmp?: bool

		// Simple Network Monitoring Protocol (SNMP) to enable or disable.

		pn_snmp?: bool

		// Secure Shell to enable or disable.

		pn_ssh?: bool
	}
}

pn_cpu_class :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_cpu_class: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// enable host-based hog protection.

		pn_hog_protect?: string

		// name for the CPU class.

		pn_name?: string

		// rate-limit for CPU class.

		pn_rate_limit?: string

		// scope for CPU class.

		pn_scope?: string

		// State the action to perform. Use C(present) to create cpu-class and C(absent) to delete cpu-class C(update) to modify the cpu-class.

		state: string
	}
}

pn_dscp_map_pri_map :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_dscp_map_pri_map: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// DSCP value(s).

		pn_dsmap?: string

		// Name for the DSCP map.

		pn_name?: string

		// CoS priority.

		pn_pri?: string

		// State the action to perform. Use C(update) to modify the dscp-map-pri-map.

		state: string
	}
}

pn_snmp_vacm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_snmp_vacm: {

		// SNMP user type.

		pn_user_type?: string

		// State the action to perform. Use C(present) to create snmp-vacm and C(absent) to delete snmp-vacm and C(update) to modify snmp-vacm.

		state: string

		// authentication required.

		pn_auth?: bool

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// restrict OID.

		pn_oid_restrict?: string

		// privileges.

		pn_priv?: bool

		// SNMP administrator name.

		pn_user_name?: string
	}
}

pn_vrouterbgp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouterbgp: {

		// Specify if you want to override capability.

		pn_override_capability?: bool

		// Specify the prefix list to filter traffic inbound.

		pn_prefix_listin?: string

		// Specify the remote Autonomous System(AS) number. This value is between 1 and 4294967295.
		// Required for vrouter-bgp-add.

		pn_remote_as?: string

		// Specify a name for the vRouter service.

		pn_vrouter_name: string

		// Specify a default weight value between 0 and 65535 for the neighbor routes.

		pn_weight?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Specify BGP neighbor keepalive interval in seconds.

		pn_keepalive?: string

		// Specify the maximum number of prefixes.

		pn_max_prefix?: string

		// State the action to perform. Use 'present' to add bgp, 'absent' to remove bgp and 'update' to modify bgp.

		state: string

		// Specify a multi-protocol for BGP.

		pn_multiprotocol?: string

		// Specify the prefix list to filter traffic outbound.

		pn_prefix_listout?: string

		// Specify if a route reflector client is used.

		pn_route_reflector?: bool

		// Specify if you want a soft reconfiguration of inbound traffic.

		pn_soft_reconfig?: bool

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify if you want a warning message when the maximum number of prefixes is exceeded.

		pn_max_prefix_warn?: bool

		// Specify if you want BFD protocol support for fault detection.

		pn_bfd?: bool

		// Specify if you want announce default routes to the neighbor or not.

		pn_default_originate?: bool

		// Specify a neighbor IP address to use for BGP.
		// Required for vrouter-bgp-add.

		pn_neighbor?: string

		// Specify a password, if desired.

		pn_password?: string

		// Specify inbound route map for neighbor.

		pn_route_mapin?: string

		// Specify outbound route map for neighbor.

		pn_route_mapout?: string

		// Specify a value for external BGP to accept or attempt BGP connections to external peers, not directly connected, on the network. This is a value between 1 and 255.

		pn_ebgp?: string

		// Specify BGP neighbor holdtime in seconds.

		pn_holdtime?: string

		// Specify if the next-hop is the same router or not.

		pn_next_hop_self?: bool
	}
}

pn_vtep :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vtep: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Primary IP address.

		pn_ip?: string

		// switch name.

		pn_location?: string

		// vtep name.

		pn_name?: string

		// Tells whether switch in cluster or not.

		pn_switch_in_cluster?: bool

		// Virtual/Secondary IP address.

		pn_virtual_ip?: string

		// name of the vrouter service.

		pn_vrouter_name?: string

		// vtep configuration command.

		state?: string
	}
}

pn_connection_stats_settings :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_connection_stats_settings: {

		// enable backup for fabric connection statistics collection.

		pn_fabric_connection_backup_enable?: bool

		// interval to collect statistics.

		pn_client_server_stats_log_interval?: string

		// maximum memory for client server statistics.

		pn_client_server_stats_max_memory?: string

		// disk-space allocated for statistics (including rotated log files).

		pn_connection_stats_log_disk_space?: string

		// enable or disable statistics.

		pn_connection_stats_log_enable?: bool

		// maximum memory allowed for fabric connection statistics.

		pn_fabric_connection_max_memory?: string

		// maximum memory allowed for service statistics.

		pn_service_stat_max_memory?: string

		// Enable or disable statistics.

		pn_client_server_stats_log_enable?: bool

		// Enable backup for connection statistics collection.

		pn_connection_backup_enable?: bool

		// maximum memory allowed for connection statistics.

		pn_connection_max_memory?: string

		// backup interval for connection statistics collection.

		pn_connection_backup_interval?: string

		// State the action to perform. Use C(update) to modify the connection-stats-settings.

		state: string

		// maximum memory allowed for connection statistics.

		pn_connection_stats_max_memory?: string

		// Enable or disable collecting connections statistics.

		pn_enable?: bool

		// backup interval for fabric connection statistics collection.

		pn_fabric_connection_backup_interval?: string

		// disk-space allocated for statistics (including rotated log files).

		pn_client_server_stats_log_disk_space?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// interval to collect statistics.

		pn_connection_stats_log_interval?: string
	}
}

pn_admin_syslog :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_admin_syslog: {

		// State the action to perform. Use C(present) to create admin-syslog and C(absent) to delete admin-syslog C(update) to modify the admin-syslog.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Hostname to log system events.

		pn_host?: string

		// message-format for log events - structured or legacy.

		pn_message_format?: string

		// name of the system log.

		pn_name?: string

		// Host port.

		pn_port?: string

		// Scope of the system log.

		pn_scope?: string

		// Transport for log events - tcp/tls or udp.

		pn_transport?: string
	}
}

pn_cluster :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_cluster: {

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the name of the first switch in the cluster.
		// Required for 'cluster-create'.

		pn_cluster_node1?: string

		// Specify the name of the second switch in the cluster.
		// Required for 'cluster-create'.

		pn_cluster_node2?: string

		// Specify the name of the cluster.

		pn_name: string

		// Validate the inter-switch links and state of switches in the cluster.

		pn_validate?: bool

		// Specify action to perform. Use 'present' to create cluster and 'absent' to delete cluster.

		state: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch to run the cli on.

		pn_cliswitch?: string
	}
}

pn_ipv6security_raguard_port :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_ipv6security_raguard_port: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// RA Guard Policy Name.

		pn_name: string

		// Ports attached to RA Guard Policy.

		pn_ports: string

		// ipv6security-raguard-port configuration command.

		state?: string
	}
}

pn_snmp_community :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_snmp_community: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// community name.

		pn_community_string?: string

		// community type.

		pn_community_type?: string

		// State the action to perform. Use C(present) to create snmp-community and C(absent) to delete snmp-community C(update) to update snmp-community.

		state: string
	}
}

pn_stp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_stp: {

		// STP bridge id.

		pn_bridge_id?: string

		// STP bridge priority.

		pn_bridge_priority?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// STP hello time between 1 and 10 secs.

		pn_hello_time?: string

		// STP mode.

		pn_stp_mode?: string

		// root guard wait time between 0 and 300 secs. 0 to disable wait.

		pn_root_guard_wait_time?: string

		// State the action to perform. Use C(update) to stp.

		state: string

		// BPDU packets to bridge specific port.

		pn_bpdus_bridge_ports?: bool

		// enable or disable STP

		pn_enable?: bool

		// STP forwarding delay between 4 and 30 secs.

		pn_forwarding_delay?: string

		// maximum age time between 6 and 40 secs.

		pn_max_age?: string

		// Name for MST Configuration Instance.

		pn_mst_config_name?: string

		// maximum hop count for mstp bpdu.

		pn_mst_max_hops?: string
	}
}

pn_trunk :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_trunk: {

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Specify if the switch is an edge switch.

		pn_edge_switch?: bool

		// Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.

		pn_lacp_fallback_timeout?: string

		// Specify a list of looping vlans.

		pn_loopvlans?: string

		// Specify if pause frames are sent.

		pn_pause?: bool

		// Specify a broadcast level in percent. The default value is 100%.

		pn_broadcast_level?: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the LACP fallback mode as bundles or individual.

		pn_lacp_fallback?: string

		// Specify the LACP mode for the configuration.

		pn_lacp_mode?: string

		// Specify the name for the trunk configuration.

		pn_name: string

		// Specify if the port participates in routing on the network.

		pn_routing?: bool

		// Specify an egress port data rate limit for the configuration.

		pn_egress_rate_limit?: string

		// Specify the LACP priority. This is a number between 1 and 65535 with a default value of 32768.

		pn_lacp_priority?: string

		// Specify if the configuration receives mirrored traffic.

		pn_mirror_receive?: bool

		// Specify the port number(s) for the link(s) to aggregate into the trunk.
		// Required for trunk-create.

		pn_ports?: string

		// Specify an unknown multicast level in percent. The default value is 100%.

		pn_unknown_mcast_level?: string

		// Specify a description for the trunk configuration.

		pn_description?: string

		// Host facing port control setting.

		pn_host?: bool

		// Specify if the port can receive jumbo frames.

		pn_jumbo?: bool

		// Specify the LACP time out as slow (30 seconds) or fast (4seconds). The default value is slow.

		pn_lacp_timeout?: string

		// Specify loopback if you want to use loopback.

		pn_loopback?: bool

		// Specify the MAC address of the port.

		pn_port_macaddr?: string

		// Specify the port speed or disable the port.

		pn_speed?: string

		// Specify an unknown unicast level in percent. The default value is 100%.

		pn_unknown_ucast_level?: string

		// State the action to perform. Use 'present' to create trunk, 'absent' to delete trunk and 'update' to modify trunk.

		state: string
	}
}

pn_vrouter_ospf6 :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_ospf6: {

		// OSPF6 control for this interface.

		pn_nic?: string

		// area id for this interface in IPv4 address format.

		pn_ospf6_area?: string

		// name of service config.

		pn_vrouter_name?: string

		// State the action to perform. Use C(present) to add vrouter-ospf6 and C(absent) to remove interface from vrouter-ospf6.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_access_list_ip :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_access_list_ip: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// IP associated with the access list.

		pn_ip?: string

		// Access List Name.

		pn_name?: string

		// State the action to perform. Use 'present' to add access-list-ip and 'absent' to remove access-list-ip.

		state: string
	}
}

pn_vrouter_pim_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_pim_config: {

		// igmp query interval in seconds.

		pn_query_interval?: string

		// name of service config.

		pn_vrouter_name?: string

		// State the action to perform. Use C(update) to modify the vrouter-pim-config.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// hello interval in seconds.

		pn_hello_interval?: string

		// igmp querier timeout in seconds.

		pn_querier_timeout?: string
	}
}

pn_vrouterlbif :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouterlbif: {

		// Specify the name of the vRouter.

		pn_vrouter_name: string

		// State the action to perform. Use 'present' to add vrouter loopback interface and 'absent' to remove vrouter loopback interface.

		state: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the interface index from 1 to 255.

		pn_index?: string

		// Specify the IP address.

		pn_interface_ip: string
	}
}

pn_vrouter_packet_relay :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_packet_relay: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// forwarding IP address.

		pn_forward_ip: string

		// protocol type to forward packets.

		pn_forward_proto?: string

		// NIC.

		pn_nic: string

		// name of service config.

		pn_vrouter_name: string

		// vrouter-packet-relay configuration command.

		state?: string
	}
}

pn_dscp_map :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_dscp_map: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Name for the DSCP map.

		pn_name?: string

		// Scope for dscp map.

		pn_scope?: string

		// State the action to perform. Use C(present) to create dscp-map and C(absent) to delete.

		state: string
	}
}

pn_log_audit_exception :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_log_audit_exception: {

		// Specify the access type to match exceptions.

		pn_access: string

		// Specify the type of audit exception.

		pn_audit_type?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Specify a regular expression to match exceptions.

		pn_pattern?: string

		// scope - local or fabric.

		pn_scope?: string

		// State the action to perform. Use 'present' to create audit-exception and 'absent' to delete audit-exception.

		state?: string
	}
}

pn_ospfarea :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_ospfarea: {

		// Specify the name of the vRouter.

		pn_vrouter_name: string

		// Login password.

		pn_clipassword: string

		// Login username.

		pn_cliusername: string

		// Specify the OSPF area number.

		pn_ospf_area: string

		// OSPF prefix list for filtering incoming packets.

		pn_prefix_listin?: string

		// OSPF prefix list for filtering outgoing packets.

		pn_prefix_listout?: string

		// Enable/disable system information.

		pn_quiet?: bool

		// Target switch(es) to run the CLI on.

		pn_cliswitch?: string

		// Specify the OSPF stub type.

		pn_stub_type?: string

		// State the action to perform. Use 'present' to add ospf-area, 'absent' to remove ospf-area and 'update' to modify ospf-area.

		state: string
	}
}

pn_port_cos_rate_setting :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_port_cos_rate_setting: {

		// cos1 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos1_rate?: string

		// cos3 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos3_rate?: string

		// cos4 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos4_rate?: string

		// cos7 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos7_rate?: string

		// State the action to perform. Use C(update) to modify the port-cos-rate-setting.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// cos0 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos0_rate?: string

		// cos2 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos2_rate?: string

		// cos5 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos5_rate?: string

		// cos6 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos6_rate?: string

		// port.

		pn_port?: string
	}
}

pn_prefix_list :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_prefix_list: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Prefix List Name.

		pn_name: string

		// scope of prefix-list.

		pn_scope?: string

		// State the action to perform. Use C(present) to create prefix-list and C(absent) to delete prefix-list.

		state?: string
	}
}

pn_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_role: {

		// type of access.

		pn_access?: string

		// delete from users.

		pn_delete_from_users?: bool

		// role name.

		pn_name: string

		// local or fabric.

		pn_scope?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// display running configuration of switch.

		pn_running_config?: bool

		// allow shell command.

		pn_shell?: bool

		// allow sudo from shell.

		pn_sudo?: bool

		// State the action to perform. Use C(present) to create role and C(absent) to delete role and C(update) to modify role.

		state: string
	}
}

pn_show :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_show: {

		// Display output using a specific parameter. Use 'all' to display possible output. List of comma separated parameters.

		pn_parameters?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// The C(pn_command) takes a CLI show command as value.

		pn_command: string

		// Specify formatting options.

		pn_options?: string
	}
}

pn_cpu_mgmt_class :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_cpu_mgmt_class: {

		// ingress traffic burst size (bytes) or default.

		pn_burst_size?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// mgmt port ingress traffic class.

		pn_name?: string

		// ingress rate limit on mgmt port(bps) or unlimited.

		pn_rate_limit?: string

		// State the action to perform. Use C(update) to modify cpu-mgmt-class.

		state: string
	}
}

pn_vrouter_bgp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter_bgp: {

		// route map out for nbr.

		pn_route_map_out?: string

		// send any community attribute to neighbor.

		pn_send_community?: bool

		// soft reset to reconfigure inbound traffic.

		pn_soft_reconfig_inbound?: bool

		// name of service config.

		pn_vrouter_name: string

		// vrouter-bgp configuration command.

		state?: string

		// warn if the maximum number of prefixes is exceeded.

		pn_max_prefix_warn_only?: bool

		// default weight value between 0 and 65535 for the neighbor's routes.

		pn_weight?: string

		// Minimum interval between sending BGP routing updates.

		pn_advertisement_interval?: string

		// Allow/reject routes with local AS in AS_PATH.

		pn_allowas_in?: bool

		// BGP Connect retry interval (seconds).

		pn_connect_retry_interval?: string

		// Interface to reach the neighbor.

		pn_interface?: string

		// BGP Keepalive interval (seconds).

		pn_neighbor_keepalive_interval?: string

		// override capability.

		pn_override_capability?: bool

		// prefixes used for filtering.

		pn_prefix_list_in?: string

		// route map in for nbr.

		pn_route_map_in?: string

		// BGP Holdtime (seconds).

		pn_neighbor_holdtime?: string

		// BGP next hop is self or not.

		pn_next_hop_self?: bool

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// announce default routes to the neighbor or not.

		pn_default_originate?: bool

		// value for external BGP from 1 to 255.

		pn_ebgp_multihop?: string

		// maximum number of prefixes.

		pn_max_prefix?: string

		// Multi-protocol features.

		pn_multi_protocol?: string

		// always use BFD multi-hop port for fault detection.

		pn_bfd_multihop?: bool

		// Remove ingress route-map from BGP neighbor.

		pn_no_route_map_in?: string

		// Remove egress route-map from BGP neighbor.

		pn_no_route_map_out?: string

		// prefixes used for filtering outgoing packets.

		pn_prefix_list_out?: string

		// BGP remote AS from 1 to 4294967295.

		pn_remote_as?: string

		// set as route reflector client.

		pn_route_reflector_client?: bool

		// IP address of BGP packets required for peering over loopback interface.

		pn_update_source?: string

		// BFD protocol support for fault detection.

		pn_bfd?: bool

		// IP address for BGP neighbor.

		pn_neighbor: string

		// password for MD5 BGP.

		pn_password?: string
	}
}

pn_vrouter :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pn_vrouter: {

		// Specify how OSPF routes are redistributed.

		pn_ospf_redistribute?: string

		// Specify if the vRouter is a dedicated or shared VNET service.

		pn_service_type?: string

		// Specify the maximum number of paths for BGP. This is a number between 1 and 255 or 0 to unset.

		pn_bgp_max_paths?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Specify other OSPF options as a whitespaces separated string within single quotes ''.

		pn_ospf_options?: string

		// Specify the name of the vRouter.

		pn_name: string

		// Specify to enable or disable vRouter service.

		pn_service_state?: string

		// Specify list of ports and port ranges.

		pn_vrrp_track_port?: string

		// State the action to perform. Use 'present' to create vrouter, 'absent' to delete vrouter and 'update' to modify vrouter.

		state: string

		// Specify other BGP options as a whitespaces separated string within single quotes ''.

		pn_bgp_options?: string

		// Target switch(es) to run the CLI on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the Autonomous System Number(ASN) if the vRouter runs Border Gateway Protocol(BGP).

		pn_bgp_as?: string

		// Specify how BGP routes are redistributed.

		pn_bgp_redistribute?: string

		// Specify the name of the VNET.
		// Required for vrouter-create.

		pn_vnet?: string

		// Specify if the vRouter uses software or hardware.
		// Note that if you specify hardware as router type, you cannot assign IP addresses using DHCP. You must specify a static IP address.

		pn_router_type?: string

		// Specifies the VRRP ID for a hardware vrouter.

		pn_hw_vrrp_id?: string

		// Specify how RIP routes are redistributed.

		pn_rip_redistribute?: string

		// Specify the vRouter IP address.

		pn_router_id?: string
	}
}
