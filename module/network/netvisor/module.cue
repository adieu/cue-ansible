package netvisor

pn_vrouter_interface_ip :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_interface_ip: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

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
	}
}

pn_access_list_ip :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_access_list_ip: {

		// State the action to perform. Use 'present' to add access-list-ip and 'absent' to remove access-list-ip.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// IP associated with the access list.

		pn_ip?: string

		// Access List Name.

		pn_name?: string
	}
}

pn_admin_service :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_admin_service: {

		// Network File System (NFS) to enable or disable.

		pn_nfs?: bool

		// Simple Network Monitoring Protocol (SNMP) to enable or disable.

		pn_snmp?: bool

		// Web logging to enable or disable.

		pn_web_log?: bool

		// Web (HTTP) port to enable or disable.

		pn_web_port?: string

		// administrative service interface.

		pn__if?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Internet Message Control Protocol (ICMP) to enable or disable.

		pn_icmp?: bool

		// Netvisor API to enable or disable APIs.

		pn_net_api?: bool

		// Web SSL (HTTPS) port to enable or disable.

		pn_web_ssl_port?: string

		// Secure Shell to enable or disable.

		pn_ssh?: bool

		// Web (HTTP) to enable or disable.

		pn_web?: bool

		// Web SSL (HTTPS) to enable or disable.

		pn_web_ssl?: bool

		// State the action to perform. Use C(update) to modify the admin-service.

		state: string
	}
}

pn_admin_session_timeout :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_admin_session_timeout: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Maximum time to wait for user activity before terminating login session. Minimum should be 60s.

		pn_timeout?: string

		// State the action to perform. C(update) to modify the admin-session-timeout.

		state: string
	}
}

pn_dscp_map_pri_map :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_port_cos_rate_setting :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_port_cos_rate_setting: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// cos1 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos1_rate?: string

		// cos2 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos2_rate?: string

		// cos4 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos4_rate?: string

		// State the action to perform. Use C(update) to modify the port-cos-rate-setting.

		state: string

		// cos0 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos0_rate?: string

		// cos3 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos3_rate?: string

		// cos5 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos5_rate?: string

		// cos6 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos6_rate?: string

		// cos7 rate limit (pps) unlimited or 0 to 10000000.

		pn_cos7_rate?: string

		// port.

		pn_port?: string
	}
}

pn_role :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_role: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// role name.

		pn_name: string

		// allow sudo from shell.

		pn_sudo?: bool

		// State the action to perform. Use C(present) to create role and C(absent) to delete role and C(update) to modify role.

		state: string

		// type of access.

		pn_access?: string

		// delete from users.

		pn_delete_from_users?: bool

		// display running configuration of switch.

		pn_running_config?: bool

		// local or fabric.

		pn_scope?: string

		// allow shell command.

		pn_shell?: bool
	}
}

pn_snmp_vacm :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_snmp_vacm: {

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

		// SNMP user type.

		pn_user_type?: string

		// State the action to perform. Use C(present) to create snmp-vacm and C(absent) to delete snmp-vacm and C(update) to modify snmp-vacm.

		state: string
	}
}

pn_vrouterbgp :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouterbgp: {

		// Specify BGP neighbor holdtime in seconds.

		pn_holdtime?: string

		// Specify a multi-protocol for BGP.

		pn_multiprotocol?: string

		// Specify if the next-hop is the same router or not.

		pn_next_hop_self?: bool

		// Specify a password, if desired.

		pn_password?: string

		// Specify the prefix list to filter traffic inbound.

		pn_prefix_listin?: string

		// Specify the prefix list to filter traffic outbound.

		pn_prefix_listout?: string

		// Specify inbound route map for neighbor.

		pn_route_mapin?: string

		// Specify if you want announce default routes to the neighbor or not.

		pn_default_originate?: bool

		// Specify if you want a soft reconfiguration of inbound traffic.

		pn_soft_reconfig?: bool

		// Specify if a route reflector client is used.

		pn_route_reflector?: bool

		// Specify the maximum number of prefixes.

		pn_max_prefix?: string

		// Specify a neighbor IP address to use for BGP.
		// Required for vrouter-bgp-add.

		pn_neighbor?: string

		// Specify if you want to override capability.

		pn_override_capability?: bool

		// Specify the remote Autonomous System(AS) number. This value is between 1 and 4294967295.
		// Required for vrouter-bgp-add.

		pn_remote_as?: string

		// Specify a name for the vRouter service.

		pn_vrouter_name: string

		// Specify a default weight value between 0 and 65535 for the neighbor routes.

		pn_weight?: string

		// Specify if you want BFD protocol support for fault detection.

		pn_bfd?: bool

		// Specify BGP neighbor keepalive interval in seconds.

		pn_keepalive?: string

		// Specify if you want a warning message when the maximum number of prefixes is exceeded.

		pn_max_prefix_warn?: bool

		// State the action to perform. Use 'present' to add bgp, 'absent' to remove bgp and 'update' to modify bgp.

		state: string

		// Specify a value for external BGP to accept or attempt BGP connections to external peers, not directly connected, on the network. This is a value between 1 and 255.

		pn_ebgp?: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify outbound route map for neighbor.

		pn_route_mapout?: string

		// Provide login password if user is not root.

		pn_clipassword?: string
	}
}

pn_vrouterif :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouterif: {

		// Specify the VXLAN identifier. This is a value between 1 and 16777215.

		pn_vxlan?: string

		// Specify the DHCP method for IP address assignment.

		pn_assignment?: string

		// Specify a Layer 3 port for the interface.

		pn_l3port?: string

		// Specify the VLAN identifier. This is a value between 1 and 4092.

		pn_vlan?: string

		// Specify a VRRP advertisement interval in milliseconds. The range is from 30 to 40950 with a default value of 1000.

		pn_vrrp_adv_int?: string

		// State the action to perform. Use 'present' to add vrouter interface, 'absent' to remove vrouter interface and 'update' to modify vrouter interface.

		state: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify if the interface is exclusive to the configuration. Exclusive means that other configurations cannot use the interface. Exclusive is specified when you configure the interface as span interface and allows higher throughput through the interface.

		pn_exclusive?: bool

		// Specify if the NIC is enabled or not

		pn_nic_enable?: bool

		// Specify the type of NIC. Used for vrouter-interface remove/modify.

		pn_nic_str?: string

		// Specify an alias for the interface.

		pn_alias?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch to run the cli on.

		pn_cliswitch?: string

		// Specify if the interface is management, data or span interface.

		pn_interface?: string

		// Specify the IP address of the interface in x.x.x.x/n format.

		pn_interface_ip?: string

		// Specify a secondary MAC address for the interface.

		pn_secondary_macs?: string

		// Specify the name of the vRouter interface.

		pn_vrouter_name: string

		// Specify the ID for the VRRP interface. The IDs on both vRouters must be the same IS number.

		pn_vrrp_id?: string

		// Specify the priority for the VRRP interface. This is a value between 1 (lowest) and 255 (highest).

		pn_vrrp_priority?: string
	}
}

pn_ipv6security_raguard :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_ipv6security_raguard: {

		// RA Guard Policy Name.

		pn_name: string

		// RA Guard Prefix List.

		pn_prefix_list?: string

		// RA Guard Router Priority.

		pn_router_priority?: string

		// ipv6security-raguard configuration command.

		state?: string

		// RA Guard Access List of Source IPs.

		pn_access_list?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// RA Guard Device. host or router.

		pn_device?: string
	}
}

pn_ipv6security_raguard_vlan :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_ipv6security_raguard_vlan: {

		// Vlans attached to RA Guard Policy.

		pn_vlans: string

		// ipv6security-raguard-vlan configuration command.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// RA Guard Policy Name.

		pn_name: string
	}
}

pn_log_audit_exception :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_port_config :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_port_config: {

		// DSCP map name to enable on port.

		pn_dscp_map?: string

		// Fabric guard configuration.

		pn_fabric_guard?: bool

		// physical port pause.

		pn_pause?: bool

		// physical port reflection.

		pn_reflect?: bool

		// physical port edge switch.

		pn_edge_switch?: bool

		// physical port enable.

		pn_enable?: bool

		// jumbo frames on physical port.

		pn_jumbo?: bool

		// physical port vxlan termination setting.

		pn_vxlan_termination?: bool

		// State the action to perform. Use C(update) to modify the port-config.

		state: string

		// defer port bringup.

		pn_defer_bringup?: bool

		// physical port.

		pn_port?: string

		// send port.

		pn_send_port?: string

		// no-local-switching port cannot bridge traffic to another no-local-switching port.

		pn_local_switching?: bool

		// physical port mirror only.

		pn_mirror_only?: bool

		// routing.

		pn_routing?: bool

		// physical port autonegotiation.

		pn_autoneg?: bool

		// physical port description.

		pn_description?: string

		// LACP priority from 1 to 65535.

		pn_lacp_priority?: string

		// CRC check on ingress and rewrite on egress.

		pn_crc_check_enable?: bool

		// physical Ethernet mode.

		pn_eth_mode?: string

		// physical interface.

		pn_intf?: string

		// Allowed TPID in addition to 0x8100 on Vlan header.

		pn_allowed_tpid?: string

		// max egress port data rate limit.

		pn_egress_rate_limit?: string

		// physical port loopback.

		pn_loopback?: bool

		// physical port speed.

		pn_speed?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Host facing port control setting.

		pn_host_enable?: bool

		// physical port MAC Address.

		pn_port_mac_address?: string

		// looping vlans.

		pn_loop_vlans?: string
	}
}

pn_prefix_list_network :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_vlan :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vlan: {

		// Specify if you want to collect statistics for a VLAN. Statistic collection is enabled by default.

		pn_stats?: bool

		// State the action to perform. Use 'present' to create vlan and 'absent' to delete vlan.

		state: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify a description for the VLAN.

		pn_description?: string

		// Specifies the ports that should have untagged packets mapped to the VLAN. Untagged packets are packets that do not contain IEEE 802.1Q VLAN tags.

		pn_untagged_ports?: string

		// Specify a VLAN identifier for the VLAN. This is a value between 2 and 4092.

		pn_vlanid: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Specifies the switch network data port number, list of ports, or range of ports. Port numbers must ne in the range of 1 to 64.

		pn_ports?: string

		// Specify a scope for the VLAN.
		// Required for vlan-create.

		pn_scope?: string
	}
}

pn_vrouter_bgp :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_bgp: {

		// soft reset to reconfigure inbound traffic.

		pn_soft_reconfig_inbound?: bool

		// warn if the maximum number of prefixes is exceeded.

		pn_max_prefix_warn_only?: bool

		// BGP Keepalive interval (seconds).

		pn_neighbor_keepalive_interval?: string

		// Remove egress route-map from BGP neighbor.

		pn_no_route_map_out?: string

		// prefixes used for filtering.

		pn_prefix_list_in?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// BGP remote AS from 1 to 4294967295.

		pn_remote_as?: string

		// route map out for nbr.

		pn_route_map_out?: string

		// Multi-protocol features.

		pn_multi_protocol?: string

		// IP address for BGP neighbor.

		pn_neighbor: string

		// password for MD5 BGP.

		pn_password?: string

		// name of service config.

		pn_vrouter_name: string

		// value for external BGP from 1 to 255.

		pn_ebgp_multihop?: string

		// route map in for nbr.

		pn_route_map_in?: string

		// vrouter-bgp configuration command.

		state?: string

		// BGP Holdtime (seconds).

		pn_neighbor_holdtime?: string

		// BGP next hop is self or not.

		pn_next_hop_self?: bool

		// IP address of BGP packets required for peering over loopback interface.

		pn_update_source?: string

		// default weight value between 0 and 65535 for the neighbor's routes.

		pn_weight?: string

		// Minimum interval between sending BGP routing updates.

		pn_advertisement_interval?: string

		// Allow/reject routes with local AS in AS_PATH.

		pn_allowas_in?: bool

		// announce default routes to the neighbor or not.

		pn_default_originate?: bool

		// prefixes used for filtering outgoing packets.

		pn_prefix_list_out?: string

		// set as route reflector client.

		pn_route_reflector_client?: bool

		// always use BFD multi-hop port for fault detection.

		pn_bfd_multihop?: bool

		// maximum number of prefixes.

		pn_max_prefix?: string

		// Remove ingress route-map from BGP neighbor.

		pn_no_route_map_in?: string

		// override capability.

		pn_override_capability?: bool

		// BFD protocol support for fault detection.

		pn_bfd?: bool

		// BGP Connect retry interval (seconds).

		pn_connect_retry_interval?: string

		// Interface to reach the neighbor.

		pn_interface?: string

		// send any community attribute to neighbor.

		pn_send_community?: bool
	}
}

pn_connection_stats_settings :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_connection_stats_settings: {

		// maximum memory for client server statistics.

		pn_client_server_stats_max_memory?: string

		// Enable backup for connection statistics collection.

		pn_connection_backup_enable?: bool

		// maximum memory allowed for connection statistics.

		pn_connection_max_memory?: string

		// State the action to perform. Use C(update) to modify the connection-stats-settings.

		state: string

		// disk-space allocated for statistics (including rotated log files).

		pn_client_server_stats_log_disk_space?: string

		// interval to collect statistics.

		pn_client_server_stats_log_interval?: string

		// enable or disable statistics.

		pn_connection_stats_log_enable?: bool

		// Enable or disable collecting connections statistics.

		pn_enable?: bool

		// backup interval for fabric connection statistics collection.

		pn_fabric_connection_backup_interval?: string

		// maximum memory allowed for fabric connection statistics.

		pn_fabric_connection_max_memory?: string

		// maximum memory allowed for service statistics.

		pn_service_stat_max_memory?: string

		// Enable or disable statistics.

		pn_client_server_stats_log_enable?: bool

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// disk-space allocated for statistics (including rotated log files).

		pn_connection_stats_log_disk_space?: string

		// enable backup for fabric connection statistics collection.

		pn_fabric_connection_backup_enable?: bool

		// backup interval for connection statistics collection.

		pn_connection_backup_interval?: string

		// interval to collect statistics.

		pn_connection_stats_log_interval?: string

		// maximum memory allowed for connection statistics.

		pn_connection_stats_max_memory?: string
	}
}

pn_cpu_class :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_port_cos_bw :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_port_cos_bw: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

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
	}
}

pn_vrouter_loopback_interface :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_vtep :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vtep: {

		// Tells whether switch in cluster or not.

		pn_switch_in_cluster?: bool

		// Virtual/Secondary IP address.

		pn_virtual_ip?: string

		// name of the vrouter service.

		pn_vrouter_name?: string

		// vtep configuration command.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Primary IP address.

		pn_ip?: string

		// switch name.

		pn_location?: string

		// vtep name.

		pn_name?: string
	}
}

pn_vrouterlbif :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouterlbif: {

		// Specify the interface index from 1 to 255.

		pn_index?: string

		// Specify the IP address.

		pn_interface_ip: string

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
	}
}

pn_access_list :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_access_list: {

		// State the action to perform. Use 'present' to create access-list and 'absent' to delete access-list.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Access List Name.

		pn_name?: string

		// scope. Available valid values - local or fabric.

		pn_scope?: string
	}
}

pn_cpu_mgmt_class :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_igmp_snooping :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_igmp_snooping: {

		// State the action to perform. Use C(update) to modify the igmp-snooping.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// VLANs on which to use IGMPv3 protocol.

		pn_igmpv3_vlans?: string

		// Remove snooping of link-local groups(224.0.0.0/24) on these vlans.

		pn_no_snoop_linklocal_vlans?: string

		// IGMP query interval in seconds.

		pn_query_interval?: string

		// IGMP snooping scope - fabric or local.

		pn_scope?: string

		// Allow snooping of link-local groups(224.0.0.0/24) on these vlans.

		pn_snoop_linklocal_vlans?: string

		// enable or disable IGMP snooping on vxlans.

		pn_vxlan?: bool

		// enable or disable IGMP snooping.

		pn_enable?: bool

		// enable per VLAN IGMP snooping.

		pn_enable_vlans?: string

		// VLANs on which to use IGMPv2 protocol.

		pn_igmpv2_vlans?: string

		// maximum response time, in seconds, advertised in IGMP queries.

		pn_query_max_response_time?: string
	}
}

pn_ospfarea :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_ospfarea: {

		// Login password.

		pn_clipassword: string

		// Specify the OSPF area number.

		pn_ospf_area: string

		// OSPF prefix list for filtering incoming packets.

		pn_prefix_listin?: string

		// State the action to perform. Use 'present' to add ospf-area, 'absent' to remove ospf-area and 'update' to modify ospf-area.

		state: string

		// Target switch(es) to run the CLI on.

		pn_cliswitch?: string

		// Login username.

		pn_cliusername: string

		// OSPF prefix list for filtering outgoing packets.

		pn_prefix_listout?: string

		// Enable/disable system information.

		pn_quiet?: bool

		// Specify the OSPF stub type.

		pn_stub_type?: string

		// Specify the name of the vRouter.

		pn_vrouter_name: string
	}
}

pn_stp :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_stp: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// enable or disable STP

		pn_enable?: bool

		// STP forwarding delay between 4 and 30 secs.

		pn_forwarding_delay?: string

		// STP hello time between 1 and 10 secs.

		pn_hello_time?: string

		// Name for MST Configuration Instance.

		pn_mst_config_name?: string

		// maximum hop count for mstp bpdu.

		pn_mst_max_hops?: string

		// STP mode.

		pn_stp_mode?: string

		// STP bridge id.

		pn_bridge_id?: string

		// STP bridge priority.

		pn_bridge_priority?: string

		// maximum age time between 6 and 40 secs.

		pn_max_age?: string

		// root guard wait time between 0 and 300 secs. 0 to disable wait.

		pn_root_guard_wait_time?: string

		// State the action to perform. Use C(update) to stp.

		state: string

		// BPDU packets to bridge specific port.

		pn_bpdus_bridge_ports?: bool
	}
}

pn_vrouter :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter: {

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Specifies the VRRP ID for a hardware vrouter.

		pn_hw_vrrp_id?: string

		// Specify if the vRouter is a dedicated or shared VNET service.

		pn_service_type?: string

		// Specify the name of the VNET.
		// Required for vrouter-create.

		pn_vnet?: string

		// Specify how BGP routes are redistributed.

		pn_bgp_redistribute?: string

		// Target switch(es) to run the CLI on.

		pn_cliswitch?: string

		// Specify other OSPF options as a whitespaces separated string within single quotes ''.

		pn_ospf_options?: string

		// Specify to enable or disable vRouter service.

		pn_service_state?: string

		// Specify how OSPF routes are redistributed.

		pn_ospf_redistribute?: string

		// Specify how RIP routes are redistributed.

		pn_rip_redistribute?: string

		// Specify list of ports and port ranges.

		pn_vrrp_track_port?: string

		// Specify the Autonomous System Number(ASN) if the vRouter runs Border Gateway Protocol(BGP).

		pn_bgp_as?: string

		// Specify the maximum number of paths for BGP. This is a number between 1 and 255 or 0 to unset.

		pn_bgp_max_paths?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the name of the vRouter.

		pn_name: string

		// Specify other BGP options as a whitespaces separated string within single quotes ''.

		pn_bgp_options?: string

		// Specify the vRouter IP address.

		pn_router_id?: string

		// Specify if the vRouter uses software or hardware.
		// Note that if you specify hardware as router type, you cannot assign IP addresses using DHCP. You must specify a static IP address.

		pn_router_type?: string

		// State the action to perform. Use 'present' to create vrouter, 'absent' to delete vrouter and 'update' to modify vrouter.

		state: string
	}
}

pn_vrouter_bgp_network :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_bgp_network: {

		// name of service config.

		pn_vrouter_name?: string

		// State the action to perform. Use C(present) to add bgp network and C(absent) to remove bgp network.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// BGP network mask.

		pn_netmask?: string

		// IP address for BGP network.

		pn_network?: string
	}
}

pn_snmp_community :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_vrouter_ospf :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_ospf: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// OSPF network IP address netmask.

		pn_netmask?: string

		// OSPF network IP address.

		pn_network: string

		// stub area number for the configuration.

		pn_ospf_area?: string

		// name of service config.

		pn_vrouter_name: string

		// vrouter-ospf configuration command.

		state?: string
	}
}

pn_vrouter_pim_config :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_pim_config: {

		// State the action to perform. Use C(update) to modify the vrouter-pim-config.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// hello interval in seconds.

		pn_hello_interval?: string

		// igmp querier timeout in seconds.

		pn_querier_timeout?: string

		// igmp query interval in seconds.

		pn_query_interval?: string

		// name of service config.

		pn_vrouter_name?: string
	}
}

pn_cluster :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_cluster: {

		// Validate the inter-switch links and state of switches in the cluster.

		pn_validate?: bool

		// Specify action to perform. Use 'present' to create cluster and 'absent' to delete cluster.

		state: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Target switch to run the cli on.

		pn_cliswitch?: string

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
	}
}

pn_dscp_map :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_dscp_map: {

		// Scope for dscp map.

		pn_scope?: string

		// State the action to perform. Use C(present) to create dscp-map and C(absent) to delete.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Name for the DSCP map.

		pn_name?: string
	}
}

pn_ospf :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_user :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_user: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// initial role for user.

		pn_initial_role?: string

		// username.

		pn_name?: string

		// plain text password.

		pn_password?: string

		// local or fabric.

		pn_scope?: string

		// State the action to perform. Use C(present) to create user and C(absent) to delete user C(update) to update user.

		state: string
	}
}

pn_vlag :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vlag: {

		// Specify the local VLAG port.
		// Required for vlag-create.

		pn_port?: string

		// State the action to perform. Use 'present' to create vlag, 'absent' to delete vlag and 'update' to modify vlag.

		state: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify the failover action as move or ignore.

		pn_failover_action?: string

		// Specify the LACP fallback mode as bundles or individual.

		pn_lacp_fallback?: string

		// Specify the LACP timeout as slow(30 seconds) or fast(4 seconds).

		pn_lacp_timeout?: string

		// Specify the peer VLAG port.
		// Required for vlag-create.

		pn_peer_port?: string

		// Specify the fabric-name of the peer switch.

		pn_peer_switch?: string

		// Specify the LACP mode.

		pn_lacp_mode?: string

		// The C(pn_name) takes a valid name for vlag configuration.

		pn_name: string

		// Target switch(es) to run this command on.

		pn_cliswitch?: string

		// Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.

		pn_lacp_fallback_timeout?: string

		// Specify the mode for the VLAG. Active-standby indicates one side is active and the other side is in standby mode. Active-active indicates that both sides of the vlag are up by default.

		pn_mode?: string

		// Provide login password if user is not root.

		pn_clipassword?: string
	}
}

pn_vrouter_ospf6 :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vrouter_ospf6: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// OSPF6 control for this interface.

		pn_nic?: string

		// area id for this interface in IPv4 address format.

		pn_ospf6_area?: string

		// name of service config.

		pn_vrouter_name?: string

		// State the action to perform. Use C(present) to add vrouter-ospf6 and C(absent) to remove interface from vrouter-ospf6.

		state: string
	}
}

pn_vrouter_packet_relay :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_admin_syslog :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_admin_syslog: {

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

		// State the action to perform. Use C(present) to create admin-syslog and C(absent) to delete admin-syslog C(update) to modify the admin-syslog.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Hostname to log system events.

		pn_host?: string
	}
}

pn_dhcp_filter :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_dhcp_filter: {

		// name of the DHCP filter.

		pn_name?: string

		// trusted ports of dhcp config.

		pn_trusted_ports?: string

		// State the action to perform. Use C(present) to create dhcp-filter and C(absent) to delete dhcp-filter C(update) to modify the dhcp-filter.

		state: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string
	}
}

pn_fabric_local :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_fabric_local: {

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

		// network to send fabric advertisements on.

		pn_fabric_advertisement_network?: string
	}
}

pn_show :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_show: {

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

		// Display output using a specific parameter. Use 'all' to display possible output. List of comma separated parameters.

		pn_parameters?: string
	}
}

pn_snmp_trap_sink :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_stp_port :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_stp_port: {

		// State the action to perform. Use C(update) to update stp-port.

		state: string

		// Specify if a STP port blocks BPDUs.

		pn_block?: bool

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// STP port is an edge port.

		pn_edge?: bool

		// STP port.

		pn_port?: string

		// STP port priority from 0 to 240.

		pn_priority?: string

		// STP port Root guard.

		pn_root_guard?: bool

		// STP port BPDU guard.

		pn_bpdu_guard?: bool

		// STP port cost from 1 to 200000000.

		pn_cost?: string

		// STP port filters BPDUs.

		pn_filter?: bool
	}
}

pn_trunk :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_trunk: {

		// Specify if the switch is an edge switch.

		pn_edge_switch?: bool

		// Host facing port control setting.

		pn_host?: bool

		// Specify the name for the trunk configuration.

		pn_name: string

		// Target switch(es) to run the cli on.

		pn_cliswitch?: string

		// Specify a description for the trunk configuration.

		pn_description?: string

		// Specify if the port can receive jumbo frames.

		pn_jumbo?: bool

		// Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.

		pn_lacp_fallback_timeout?: string

		// Specify the LACP priority. This is a number between 1 and 65535 with a default value of 32768.

		pn_lacp_priority?: string

		// Specify the LACP time out as slow (30 seconds) or fast (4seconds). The default value is slow.

		pn_lacp_timeout?: string

		// Specify if pause frames are sent.

		pn_pause?: bool

		// Specify the MAC address of the port.

		pn_port_macaddr?: string

		// Provide login password if user is not root.

		pn_clipassword?: string

		// Specify if the port participates in routing on the network.

		pn_routing?: bool

		// Specify the port speed or disable the port.

		pn_speed?: string

		// Specify an unknown unicast level in percent. The default value is 100%.

		pn_unknown_ucast_level?: string

		// Specify the port number(s) for the link(s) to aggregate into the trunk.
		// Required for trunk-create.

		pn_ports?: string

		// Provide login username if user is not root.

		pn_cliusername?: string

		// Specify an egress port data rate limit for the configuration.

		pn_egress_rate_limit?: string

		// Specify the LACP mode for the configuration.

		pn_lacp_mode?: string

		// Specify if the configuration receives mirrored traffic.

		pn_mirror_receive?: bool

		// Specify an unknown multicast level in percent. The default value is 100%.

		pn_unknown_mcast_level?: string

		// State the action to perform. Use 'present' to create trunk, 'absent' to delete trunk and 'update' to modify trunk.

		state: string

		// Specify a broadcast level in percent. The default value is 100%.

		pn_broadcast_level?: string

		// Specify loopback if you want to use loopback.

		pn_loopback?: bool

		// Specify a list of looping vlans.

		pn_loopvlans?: string

		// Specify the LACP fallback mode as bundles or individual.

		pn_lacp_fallback?: string
	}
}

pn_ipv6security_raguard_port :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
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

pn_prefix_list :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_prefix_list: {

		// scope of prefix-list.

		pn_scope?: string

		// State the action to perform. Use C(present) to create prefix-list and C(absent) to delete prefix-list.

		state?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Prefix List Name.

		pn_name: string
	}
}

pn_switch_setup :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_switch_setup: {

		// Netmask.

		pn_mgmt_netmask?: string

		// IPv6 netmask.

		pn_mgmt_netmask_ip6?: string

		// NTP server.

		pn_ntp_server?: string

		// plain text password.

		pn_password?: string

		// Timezone to be configured.

		pn_timezone?: string

		// Gateway IPv6 address.

		pn_gateway_ip6?: string

		// Data in-band IPv6 netmask.

		pn_in_band_netmask_ip6?: string

		// IP address assignment.

		pn_mgmt_ip_assignment?: string

		// IPv6 address.

		pn_mgmt_ip6?: string

		// Secondary NTP server.

		pn_ntp_secondary_server?: string

		// switch name.

		pn_switch_name?: string

		// Banner to display on server-switch.

		pn_banner?: string

		// Data in-band IPv6 address.

		pn_in_band_ip6?: string

		// loopback IPv6 address.

		pn_loopback_ip6?: string

		// EULA timestamp.

		pn_eula_timestamp?: string

		// Force analytics-store change even if it involves removing data.

		pn_force?: bool

		// Accept EULA.

		pn_eula_accepted?: string

		// State the action to perform. Use C(update) to modify the switch-setup.

		state: string

		// gateway IPv4 address.

		pn_gateway_ip?: string

		// loopback IPv4 address.

		pn_loopback_ip?: string

		// type of disk storage for analytics.

		pn_analytics_store?: string

		// Enable host ports by default.

		pn_enable_host_ports?: bool

		// Data in-band netmask.

		pn_in_band_netmask?: string

		// Management IP address.

		pn_mgmt_ip?: string

		// Message of the Day.

		pn_motd?: string

		// DNS IP address.

		pn_dns_ip?: string

		// Domain name.

		pn_domain_name?: string

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// Data IPv6 address assignment.

		pn_in_band_ip6_assign?: string

		// data in-band IP address.

		pn_in_band_ip?: string

		// IPv6 address assignment.

		pn_mgmt_ip6_assignment?: string

		// Date.

		pn_date?: string

		// secondary DNS IP address.

		pn_dns_secondary_ip?: string
	}
}

pn_vflow_table_profile :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	pn_vflow_table_profile: {

		// Target switch to run the CLI on.

		pn_cliswitch?: string

		// enable or disable vflow profile table.

		pn_enable?: bool

		// hardware table used by vFlow.

		pn_hw_tbl?: string

		// type of vFlow profile.

		pn_profile?: string

		// State the action to perform. Use C(update) to modify the vflow-table-profile.

		state: string
	}
}
