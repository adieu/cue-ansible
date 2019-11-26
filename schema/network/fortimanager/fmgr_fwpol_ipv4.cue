package ansible

module: fmgr_fwpol_ipv4: {
	module:        "fmgr_fwpol_ipv4"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Allows the add/delete of Firewall Policies on Packages in FortiManager."
	description: [
		"Allows the add/delete of Firewall Policies on Packages in FortiManager.",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		package_name: {
			description: [
				"The policy package you want to modify",
			]
			required: false
			default:  "default"
		}

		fail_on_missing_dependency: {
			description: [
				"Normal behavior is to \"skip\" tasks that fail dependency checks, so other tasks can run.",
				"If set to \"enabled\" if a failed dependency check happeens, Ansible will exit as with failure instead of skip.",
			]
			required: false
			default:  "disable"
			choices: ["enable", "disable"]
			version_added: "2.9"
		}

		wsso: {
			description: [
				"Enable/disable WiFi Single Sign On (WSSO).",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		webfilter_profile: {
			description: [
				"Name of an existing Web filter profile.",
			]
			required: false
		}

		webcache_https: {
			description: [
				"Enable/disable web cache for HTTPS.",
				"choice | disable | Disable web cache for HTTPS.",
				"choice | enable | Enable web cache for HTTPS.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		webcache: {
			description: [
				"Enable/disable web cache.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		wccp: {
			description: [
				"Enable/disable forwarding traffic matching this policy to a configured WCCP server.",
				"choice | disable | Disable WCCP setting.",
				"choice | enable | Enable WCCP setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		wanopt_profile: {
			description: [
				"WAN optimization profile.",
			]
			required: false
		}

		wanopt_peer: {
			description: [
				"WAN optimization peer.",
			]
			required: false
		}

		wanopt_passive_opt: {
			description: [
				"WAN optimization passive mode options. This option decides what IP address will be used to connect server.",
				"choice | default | Allow client side WAN opt peer to decide.",
				"choice | transparent | Use address of client to connect to server.",
				"choice | non-transparent | Use local FortiGate address to connect to server.",
			]
			required: false
			choices: ["default", "transparent", "non-transparent"]
		}

		wanopt_detection: {
			description: [
				"WAN optimization auto-detection mode.",
				"choice | active | Active WAN optimization peer auto-detection.",
				"choice | passive | Passive WAN optimization peer auto-detection.",
				"choice | off | Turn off WAN optimization peer auto-detection.",
			]
			required: false
			choices: ["active", "passive", "off"]
		}

		wanopt: {
			description: [
				"Enable/disable WAN optimization.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		waf_profile: {
			description: [
				"Name of an existing Web application firewall profile.",
			]
			required: false
		}

		vpntunnel: {
			description: [
				"Policy-based IPsec VPN |  name of the IPsec VPN Phase 1.",
			]
			required: false
		}

		voip_profile: {
			description: [
				"Name of an existing VoIP profile.",
			]
			required: false
		}

		vlan_filter: {
			description: [
				"Set VLAN filters.",
			]
			required: false
		}

		vlan_cos_rev: {
			description: [
				"VLAN reverse direction user priority | 255 passthrough, 0 lowest, 7 highest..",
			]
			required: false
		}

		vlan_cos_fwd: {
			description: [
				"VLAN forward direction user priority | 255 passthrough, 0 lowest, 7 highest.",
			]
			required: false
		}

		utm_status: {
			description: [
				"Enable to add one or more security profiles (AV, IPS, etc.) to the firewall policy.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		users: {
			description: [
				"Names of individual users that can authenticate with this policy.",
			]
			required: false
		}

		url_category: {
			description: [
				"URL category ID list.",
			]
			required: false
		}

		traffic_shaper_reverse: {
			description: [
				"Reverse traffic shaper.",
			]
			required: false
		}

		traffic_shaper: {
			description: [
				"Traffic shaper.",
			]
			required: false
		}

		timeout_send_rst: {
			description: [
				"Enable/disable sending RST packets when TCP sessions expire.",
				"choice | disable | Disable sending of RST packet upon TCP session expiration.",
				"choice | enable | Enable sending of RST packet upon TCP session expiration.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		tcp_session_without_syn: {
			description: [
				"Enable/disable creation of TCP session without SYN flag.",
				"choice | all | Enable TCP session without SYN.",
				"choice | data-only | Enable TCP session data only.",
				"choice | disable | Disable TCP session without SYN.",
			]
			required: false
			choices: ["all", "data-only", "disable"]
		}

		tcp_mss_sender: {
			description: [
				"Sender TCP maximum segment size (MSS).",
			]
			required: false
		}

		tcp_mss_receiver: {
			description: [
				"Receiver TCP maximum segment size (MSS).",
			]
			required: false
		}

		status: {
			description: [
				"Enable or disable this policy.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssl_ssh_profile: {
			description: [
				"Name of an existing SSL SSH profile.",
			]
			required: false
		}

		ssl_mirror_intf: {
			description: [
				"SSL mirror interface name.",
			]
			required: false
		}

		ssl_mirror: {
			description: [
				"Enable to copy decrypted SSL traffic to a FortiGate interface (called SSL mirroring).",
				"choice | disable | Disable SSL mirror.",
				"choice | enable | Enable SSL mirror.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssh_filter_profile: {
			description: [
				"Name of an existing SSH filter profile.",
			]
			required: false
		}

		srcintf: {
			description: [
				"Incoming (ingress) interface.",
			]
			required: false
		}

		srcaddr_negate: {
			description: [
				"When enabled srcaddr specifies what the source address must NOT be.",
				"choice | disable | Disable source address negate.",
				"choice | enable | Enable source address negate.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		srcaddr: {
			description: [
				"Source address and address group names.",
			]
			required: false
		}

		spamfilter_profile: {
			description: [
				"Name of an existing Spam filter profile.",
			]
			required: false
		}

		session_ttl: {
			description: [
				"TTL in seconds for sessions accepted by this policy (0 means use the system default session TTL).",
			]
			required: false
		}

		service_negate: {
			description: [
				"When enabled service specifies what the service must NOT be.",
				"choice | disable | Disable negated service match.",
				"choice | enable | Enable negated service match.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		service: {
			description: [
				"Service and service group names.",
			]
			required: false
		}

		send_deny_packet: {
			description: [
				"Enable to send a reply when a session is denied or blocked by a firewall policy.",
				"choice | disable | Disable deny-packet sending.",
				"choice | enable | Enable deny-packet sending.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		schedule_timeout: {
			description: [
				"Enable to force current sessions to end when the schedule object times out.",
				"choice | disable | Disable schedule timeout.",
				"choice | enable | Enable schedule timeout.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		schedule: {
			description: [
				"Schedule name.",
			]
			required: false
		}

		scan_botnet_connections: {
			description: [
				"Block or monitor connections to Botnet servers or disable Botnet scanning.",
				"choice | disable | Do not scan connections to botnet servers.",
				"choice | block | Block connections to botnet servers.",
				"choice | monitor | Log connections to botnet servers.",
			]
			required: false
			choices: ["disable", "block", "monitor"]
		}

		rtp_nat: {
			description: [
				"Enable Real Time Protocol (RTP) NAT.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		rtp_addr: {
			description: [
				"Address names if this is an RTP NAT policy.",
			]
			required: false
		}

		rsso: {
			description: [
				"Enable/disable RADIUS single sign-on (RSSO).",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		replacemsg_override_group: {
			description: [
				"Override the default replacement message group for this policy.",
			]
			required: false
		}

		redirect_url: {
			description: [
				"URL users are directed to after seeing and accepting the disclaimer or authenticating.",
			]
			required: false
		}

		radius_mac_auth_bypass: {
			description: [
				"Enable MAC authentication bypass. The bypassed MAC address must be received from RADIUS server.",
				"choice | disable | Disable MAC authentication bypass.",
				"choice | enable | Enable MAC authentication bypass.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		profile_type: {
			description: [
				"Determine whether the firewall policy allows security profile groups or single profiles only.",
				"choice | single | Do not allow security profile groups.",
				"choice | group | Allow security profile groups.",
			]
			required: false
			choices: ["single", "group"]
		}

		profile_protocol_options: {
			description: [
				"Name of an existing Protocol options profile.",
			]
			required: false
		}

		profile_group: {
			description: [
				"Name of profile group.",
			]
			required: false
		}

		poolname: {
			description: [
				"IP Pool names.",
			]
			required: false
		}

		policyid: {
			description: [
				"Policy ID.",
			]
			required: false
		}

		permit_stun_host: {
			description: [
				"Accept UDP packets from any Session Traversal Utilities for NAT (STUN) host.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		permit_any_host: {
			description: [
				"Accept UDP packets from any host.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		per_ip_shaper: {
			description: [
				"Per-IP traffic shaper.",
			]
			required: false
		}

		outbound: {
			description: [
				"Policy-based IPsec VPN |  only traffic from the internal network can initiate a VPN.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ntlm_guest: {
			description: [
				"Enable/disable NTLM guest user access.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ntlm_enabled_browsers: {
			description: [
				"HTTP-User-Agent value of supported browsers.",
			]
			required: false
		}

		ntlm: {
			description: [
				"Enable/disable NTLM authentication.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		np_acceleration: {
			description: [
				"Enable/disable UTM Network Processor acceleration.",
				"choice | disable | Disable UTM Network Processor acceleration.",
				"choice | enable | Enable UTM Network Processor acceleration.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		natoutbound: {
			description: [
				"Policy-based IPsec VPN |  apply source NAT to outbound traffic.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		natip: {
			description: [
				"Policy-based IPsec VPN |  source NAT IP address for outgoing traffic.",
			]
			required: false
		}

		natinbound: {
			description: [
				"Policy-based IPsec VPN |  apply destination NAT to inbound traffic.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		nat: {
			description: [
				"Enable/disable source NAT.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		name: {
			description: [
				"Policy name.",
			]
			required: false
		}

		mms_profile: {
			description: [
				"Name of an existing MMS profile.",
			]
			required: false
		}

		match_vip: {
			description: [
				"Enable to match packets that have had their destination addresses changed by a VIP.",
				"choice | disable | Do not match DNATed packet.",
				"choice | enable | Match DNATed packet.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		logtraffic_start: {
			description: [
				"Record logs when a session starts and ends.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		logtraffic: {
			description: [
				"Enable or disable logging. Log all sessions or security profile sessions.",
				"choice | disable | Disable all logging for this policy.",
				"choice | all | Log all sessions accepted or denied by this policy.",
				"choice | utm | Log traffic that has a security profile applied to it.",
			]
			required: false
			choices: ["disable", "all", "utm"]
		}

		learning_mode: {
			description: [
				"Enable to allow everything, but log all of the meaningful data for security information gathering.",
				"choice | disable | Disable learning mode in firewall policy.",
				"choice | enable | Enable learning mode in firewall policy.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		label: {
			description: [
				"Label for the policy that appears when the GUI is in Section View mode.",
			]
			required: false
		}

		ips_sensor: {
			description: [
				"Name of an existing IPS sensor.",
			]
			required: false
		}

		ippool: {
			description: [
				"Enable to use IP Pools for source NAT.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		internet_service_src_negate: {
			description: [
				"When enabled internet-service-src specifies what the service must NOT be.",
				"choice | disable | Disable negated Internet Service source match.",
				"choice | enable | Enable negated Internet Service source match.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		internet_service_src_id: {
			description: [
				"Internet Service source ID.",
			]
			required: false
		}

		internet_service_src_custom: {
			description: [
				"Custom Internet Service source name.",
			]
			required: false
		}

		internet_service_src: {
			description: [
				"Enable/disable use of Internet Services in source for this policy. If enabled, source address is not used.",
				"choice | disable | Disable use of Internet Services source in policy.",
				"choice | enable | Enable use of Internet Services source in policy.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		internet_service_negate: {
			description: [
				"When enabled internet-service specifies what the service must NOT be.",
				"choice | disable | Disable negated Internet Service match.",
				"choice | enable | Enable negated Internet Service match.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		internet_service_id: {
			description: [
				"Internet Service ID.",
			]
			required: false
		}

		internet_service_custom: {
			description: [
				"Custom Internet Service name.",
			]
			required: false
		}

		internet_service: {
			description: [
				"Enable/disable use of Internet Services for this policy. If enabled, dstaddr and service are not used.",
				"choice | disable | Disable use of Internet Services in policy.",
				"choice | enable | Enable use of Internet Services in policy.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		inbound: {
			description: [
				"Policy-based IPsec VPN |  only traffic from the remote network can initiate a VPN.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		identity_based_route: {
			description: [
				"Name of identity-based routing rule.",
			]
			required: false
		}

		icap_profile: {
			description: [
				"Name of an existing ICAP profile.",
			]
			required: false
		}

		gtp_profile: {
			description: [
				"GTP profile.",
			]
			required: false
		}

		groups: {
			description: [
				"Names of user groups that can authenticate with this policy.",
			]
			required: false
		}

		global_label: {
			description: [
				"Label for the policy that appears when the GUI is in Global View mode.",
			]
			required: false
		}

		fsso_agent_for_ntlm: {
			description: [
				"FSSO agent to use for NTLM authentication.",
			]
			required: false
		}

		fsso: {
			description: [
				"Enable/disable Fortinet Single Sign-On.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		fixedport: {
			description: [
				"Enable to prevent source NAT from changing a session's source port.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		firewall_session_dirty: {
			description: [
				"How to handle sessions if the configuration of this firewall policy changes.",
				"choice | check-all | Flush all current sessions accepted by this policy.",
				"choice | check-new | Continue to allow sessions already accepted by this policy.",
			]
			required: false
			choices: ["check-all", "check-new"]
		}

		dstintf: {
			description: [
				"Outgoing (egress) interface.",
			]
			required: false
		}

		dstaddr_negate: {
			description: [
				"When enabled dstaddr specifies what the destination address must NOT be.",
				"choice | disable | Disable destination address negate.",
				"choice | enable | Enable destination address negate.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		dstaddr: {
			description: [
				"Destination address and address group names.",
			]
			required: false
		}

		dsri: {
			description: [
				"Enable DSRI to ignore HTTP server responses.",
				"choice | disable | Disable DSRI.",
				"choice | enable | Enable DSRI.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		dscp_value: {
			description: [
				"DSCP value.",
			]
			required: false
		}

		dscp_negate: {
			description: [
				"Enable negated DSCP match.",
				"choice | disable | Disable DSCP negate.",
				"choice | enable | Enable DSCP negate.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		dscp_match: {
			description: [
				"Enable DSCP check.",
				"choice | disable | Disable DSCP check.",
				"choice | enable | Enable DSCP check.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		dnsfilter_profile: {
			description: [
				"Name of an existing DNS filter profile.",
			]
			required: false
		}

		dlp_sensor: {
			description: [
				"Name of an existing DLP sensor.",
			]
			required: false
		}

		disclaimer: {
			description: [
				"Enable/disable user authentication disclaimer.",
				"choice | disable | Disable user authentication disclaimer.",
				"choice | enable | Enable user authentication disclaimer.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		diffservcode_rev: {
			description: [
				"Change packet's reverse (reply) DiffServ to this value.",
			]
			required: false
		}

		diffservcode_forward: {
			description: [
				"Change packet's DiffServ to this value.",
			]
			required: false
		}

		diffserv_reverse: {
			description: [
				"Enable to change packet's reverse (reply) DiffServ values to the specified diffservcode-rev value.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		diffserv_forward: {
			description: [
				"Enable to change packet's DiffServ values to the specified diffservcode-forward value.",
				"choice | disable | Disable WAN optimization.",
				"choice | enable | Enable WAN optimization.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		devices: {
			description: [
				"Names of devices or device groups that can be matched by the policy.",
			]
			required: false
		}

		delay_tcp_npu_session: {
			description: [
				"Enable TCP NPU session delay to guarantee packet order of 3-way handshake.",
				"choice | disable | Disable TCP NPU session delay in order to guarantee packet order of 3-way handshake.",
				"choice | enable | Enable TCP NPU session delay in order to guarantee packet order of 3-way handshake.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		custom_log_fields: {
			description: [
				"Custom fields to append to log messages for this policy.",
			]
			required: false
		}

		comments: {
			description: [
				"Comment.",
			]
			required: false
		}

		capture_packet: {
			description: [
				"Enable/disable capture packets.",
				"choice | disable | Disable capture packets.",
				"choice | enable | Enable capture packets.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		captive_portal_exempt: {
			description: [
				"Enable to exempt some users from the captive portal.",
				"choice | disable | Disable exemption of captive portal.",
				"choice | enable | Enable exemption of captive portal.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		block_notification: {
			description: [
				"Enable/disable block notification.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		av_profile: {
			description: [
				"Name of an existing Antivirus profile.",
			]
			required: false
		}

		auto_asic_offload: {
			description: [
				"Enable/disable offloading security profile processing to CP processors.",
				"choice | disable | Disable ASIC offloading.",
				"choice | enable | Enable auto ASIC offloading.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		auth_redirect_addr: {
			description: [
				"HTTP-to-HTTPS redirect address for firewall authentication.",
			]
			required: false
		}

		auth_path: {
			description: [
				"Enable/disable authentication-based routing.",
				"choice | disable | Disable authentication-based routing.",
				"choice | enable | Enable authentication-based routing.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		auth_cert: {
			description: [
				"HTTPS server certificate for policy authentication.",
			]
			required: false
		}

		application_list: {
			description: [
				"Name of an existing Application list.",
			]
			required: false
		}

		application: {
			description: [
				"Application ID list.",
			]
			required: false
		}

		app_group: {
			description: [
				"Application group names.",
			]
			required: false
		}

		app_category: {
			description: [
				"Application category ID list.",
			]
			required: false
		}

		action: {
			description: [
				"Policy action (allow/deny/ipsec).",
				"choice | deny | Blocks sessions that match the firewall policy.",
				"choice | accept | Allows session that match the firewall policy.",
				"choice | ipsec | Firewall policy becomes a policy-based IPsec VPN policy.",
			]
			required: false
			choices: ["deny", "accept", "ipsec"]
		}

		vpn_dst_node: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
			]
			required: false
		}

		vpn_dst_node_host: {
			description: [
				"VPN Destination Node Host.",
			]
			required: false
		}

		vpn_dst_node_seq: {
			description: [
				"VPN Destination Node Seq.",
			]
			required: false
		}

		vpn_dst_node_subnet: {
			description: [
				"VPN Destination Node Seq.",
			]
			required: false
		}

		vpn_src_node: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
			]
			required: false
		}

		vpn_src_node_host: {
			description: [
				"VPN Source Node Host.",
			]
			required: false
		}

		vpn_src_node_seq: {
			description: [
				"VPN Source Node Seq.",
			]
			required: false
		}

		vpn_src_node_subnet: {
			description: [
				"VPN Source Node.",
			]
			required: false
		}
	}
}
