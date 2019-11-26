package ansible

module: fortios_system_settings: {
	module:            "fortios_system_settings"
	short_description: "Configure VDOM settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		system_settings: {
			description: [
				"Configure VDOM settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				allow_linkdown_path: {
					description: [
						"Enable/disable link down path.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_subnet_overlap: {
					description: [
						"Enable/disable allowing interface subnets to use overlapping IP addresses.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				asymroute: {
					description: [
						"Enable/disable IPv4 asymmetric routing.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				asymroute_icmp: {
					description: [
						"Enable/disable ICMP asymmetric routing.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				asymroute6: {
					description: [
						"Enable/disable asymmetric IPv6 routing.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				asymroute6_icmp: {
					description: [
						"Enable/disable asymmetric ICMPv6 routing.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bfd: {
					description: [
						"Enable/disable Bi-directional Forwarding Detection (BFD) on all interfaces.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bfd_desired_min_tx: {
					description: [
						"BFD desired minimal transmit interval (1 - 100000 ms).",
					]
					type: "int"
				}
				bfd_detect_mult: {
					description: [
						"BFD detection multiplier (1 - 50).",
					]
					type: "int"
				}
				bfd_dont_enforce_src_port: {
					description: [
						"Enable to not enforce verifying the source port of BFD Packets.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bfd_required_min_rx: {
					description: [
						"BFD required minimal receive interval (1 - 100000 ms).",
					]
					type: "int"
				}
				block_land_attack: {
					description: [
						"Enable/disable blocking of land attacks.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				central_nat: {
					description: [
						"Enable/disable central NAT.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				comments: {
					description: [
						"VDOM comments.",
					]
					type: "str"
				}
				compliance_check: {
					description: [
						"Enable/disable PCI DSS compliance checking.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				default_voip_alg_mode: {
					description: [
						"Configure how the FortiGate handles VoIP traffic when a policy that accepts the traffic doesn't include a VoIP profile.",
					]
					type: "str"
					choices: [
						"proxy-based",
						"kernel-helper-based",
					]
				}
				deny_tcp_with_icmp: {
					description: [
						"Enable/disable denying TCP by sending an ICMP communication prohibited packet.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				device: {
					description: [
						"Interface to use for management access for NAT mode. Source system.interface.name.",
					]
					type: "str"
				}
				dhcp_proxy: {
					description: [
						"Enable/disable the DHCP Proxy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dhcp_server_ip: {
					description: [
						"DHCP Server IPv4 address.",
					]
					type: "str"
				}
				dhcp6_server_ip: {
					description: [
						"DHCPv6 server IPv6 address.",
					]
					type: "str"
				}
				discovered_device_timeout: {
					description: [
						"Timeout for discovered devices (1 - 365 days).",
					]
					type: "int"
				}
				ecmp_max_paths: {
					description: [
						"Maximum number of Equal Cost Multi-Path (ECMP) next-hops. Set to 1 to disable ECMP routing (1 - 100).",
					]
					type: "int"
				}
				email_portal_check_dns: {
					description: [
						"Enable/disable using DNS to validate email addresses collected by a captive portal.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				firewall_session_dirty: {
					description: [
						"Select how to manage sessions affected by firewall policy configuration changes.",
					]
					type: "str"
					choices: [
						"check-all",
						"check-new",
						"check-policy-option",
					]
				}
				fw_session_hairpin: {
					description: [
						"Enable/disable checking for a matching policy each time hairpin traffic goes through the FortiGate.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gateway: {
					description: [
						"Transparent mode IPv4 default gateway IP address.",
					]
					type: "str"
				}
				gateway6: {
					description: [
						"Transparent mode IPv4 default gateway IP address.",
					]
					type: "str"
				}
				gui_advanced_policy: {
					description: [
						"Enable/disable advanced policy configuration on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_allow_unnamed_policy: {
					description: [
						"Enable/disable the requirement for policy naming on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_antivirus: {
					description: [
						"Enable/disable AntiVirus on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_ap_profile: {
					description: [
						"Enable/disable FortiAP profiles on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_application_control: {
					description: [
						"Enable/disable application control on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_default_policy_columns: {
					description: [
						"Default columns to display for policy lists on GUI.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Select column name.",
						]
						required: true
						type:     "str"
					}
				}
				gui_dhcp_advanced: {
					description: [
						"Enable/disable advanced DHCP options on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dlp: {
					description: [
						"Enable/disable DLP on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dns_database: {
					description: [
						"Enable/disable DNS database settings on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dnsfilter: {
					description: [
						"Enable/disable DNS Filtering on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_domain_ip_reputation: {
					description: [
						"Enable/disable Domain and IP Reputation on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dos_policy: {
					description: [
						"Enable/disable DoS policies on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dynamic_profile_display: {
					description: [
						"Enable/disable RADIUS Single Sign On (RSSO) on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_dynamic_routing: {
					description: [
						"Enable/disable dynamic routing on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_email_collection: {
					description: [
						"Enable/disable email collection on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_endpoint_control: {
					description: [
						"Enable/disable endpoint control on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_endpoint_control_advanced: {
					description: [
						"Enable/disable advanced endpoint control options on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_explicit_proxy: {
					description: [
						"Enable/disable the explicit proxy on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_fortiap_split_tunneling: {
					description: [
						"Enable/disable FortiAP split tunneling on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_fortiextender_controller: {
					description: [
						"Enable/disable FortiExtender on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_icap: {
					description: [
						"Enable/disable ICAP on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_implicit_policy: {
					description: [
						"Enable/disable implicit firewall policies on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_ips: {
					description: [
						"Enable/disable IPS on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_load_balance: {
					description: [
						"Enable/disable server load balancing on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_local_in_policy: {
					description: [
						"Enable/disable Local-In policies on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_local_reports: {
					description: [
						"Enable/disable local reports on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_multicast_policy: {
					description: [
						"Enable/disable multicast firewall policies on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_multiple_interface_policy: {
					description: [
						"Enable/disable adding multiple interfaces to a policy on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_multiple_utm_profiles: {
					description: [
						"Enable/disable multiple UTM profiles on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_nat46_64: {
					description: [
						"Enable/disable NAT46 and NAT64 settings on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_object_colors: {
					description: [
						"Enable/disable object colors on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_policy_based_ipsec: {
					description: [
						"Enable/disable policy-based IPsec VPN on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_policy_learning: {
					description: [
						"Enable/disable firewall policy learning mode on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_replacement_message_groups: {
					description: [
						"Enable/disable replacement message groups on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_spamfilter: {
					description: [
						"Enable/disable Antispam on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_sslvpn_personal_bookmarks: {
					description: [
						"Enable/disable SSL-VPN personal bookmark management on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_sslvpn_realms: {
					description: [
						"Enable/disable SSL-VPN realms on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_switch_controller: {
					description: [
						"Enable/disable the switch controller on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_threat_weight: {
					description: [
						"Enable/disable threat weight on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_traffic_shaping: {
					description: [
						"Enable/disable traffic shaping on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_voip_profile: {
					description: [
						"Enable/disable VoIP profiles on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_vpn: {
					description: [
						"Enable/disable VPN tunnels on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_waf_profile: {
					description: [
						"Enable/disable Web Application Firewall on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_wan_load_balancing: {
					description: [
						"Enable/disable SD-WAN on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_wanopt_cache: {
					description: [
						"Enable/disable WAN Optimization and Web Caching on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_webfilter: {
					description: [
						"Enable/disable Web filtering on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_webfilter_advanced: {
					description: [
						"Enable/disable advanced web filtering on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gui_wireless_controller: {
					description: [
						"Enable/disable the wireless controller on the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				http_external_dest: {
					description: [
						"Offload HTTP traffic to FortiWeb or FortiCache.",
					]
					type: "str"
					choices: [
						"fortiweb",
						"forticache",
					]
				}
				ike_dn_format: {
					description: [
						"Configure IKE ASN.1 Distinguished Name format conventions.",
					]
					type: "str"
					choices: [
						"with-space",
						"no-space",
					]
				}
				ike_quick_crash_detect: {
					description: [
						"Enable/disable IKE quick crash detection (RFC 6290).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ike_session_resume: {
					description: [
						"Enable/disable IKEv2 session resumption (RFC 5723).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				implicit_allow_dns: {
					description: [
						"Enable/disable implicitly allowing DNS traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				inspection_mode: {
					description: [
						"Inspection mode (proxy-based or flow-based).",
					]
					type: "str"
					choices: [
						"proxy",
						"flow",
					]
				}
				ip: {
					description: [
						"IP address and netmask.",
					]
					type: "str"
				}
				ip6: {
					description: [
						"IPv6 address prefix for NAT mode.",
					]
					type: "str"
				}
				link_down_access: {
					description: [
						"Enable/disable link down access traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				lldp_transmission: {
					description: [
						"Enable/disable Link Layer Discovery Protocol (LLDP) for this VDOM or apply global settings to this VDOM.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
						"global",
					]
				}
				mac_ttl: {
					description: [
						"Duration of MAC addresses in Transparent mode (300 - 8640000 sec).",
					]
					type: "int"
				}
				manageip: {
					description: [
						"Transparent mode IPv4 management IP address and netmask.",
					]
					type: "str"
				}
				manageip6: {
					description: [
						"Transparent mode IPv6 management IP address and netmask.",
					]
					type: "str"
				}
				multicast_forward: {
					description: [
						"Enable/disable multicast forwarding.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				multicast_skip_policy: {
					description: [
						"Enable/disable allowing multicast traffic through the FortiGate without a policy check.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				multicast_ttl_notchange: {
					description: [
						"Enable/disable preventing the FortiGate from changing the TTL for forwarded multicast packets.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ngfw_mode: {
					description: [
						"Next Generation Firewall (NGFW) mode.",
					]
					type: "str"
					choices: [
						"profile-based",
						"policy-based",
					]
				}
				opmode: {
					description: [
						"Firewall operation mode (NAT or Transparent).",
					]
					type: "str"
					choices: [
						"nat",
						"transparent",
					]
				}
				prp_trailer_action: {
					description: [
						"Enable/disable action to take on PRP trailer.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sccp_port: {
					description: [
						"TCP port the SCCP proxy monitors for SCCP traffic (0 - 65535).",
					]
					type: "int"
				}
				ses_denied_traffic: {
					description: [
						"Enable/disable including denied session in the session table.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sip_helper: {
					description: [
						"Enable/disable the SIP session helper to process SIP sessions unless SIP sessions are accepted by the SIP application layer gateway (ALG).",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sip_nat_trace: {
					description: [
						"Enable/disable recording the original SIP source IP address when NAT is used.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sip_ssl_port: {
					description: [
						"TCP port the SIP proxy monitors for SIP SSL/TLS traffic (0 - 65535).",
					]
					type: "int"
				}
				sip_tcp_port: {
					description: [
						"TCP port the SIP proxy monitors for SIP traffic (0 - 65535).",
					]
					type: "int"
				}
				sip_udp_port: {
					description: [
						"UDP port the SIP proxy monitors for SIP traffic (0 - 65535).",
					]
					type: "int"
				}
				snat_hairpin_traffic: {
					description: [
						"Enable/disable source NAT (SNAT) for hairpin traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ssl_ssh_profile: {
					description: [
						"Profile for SSL/SSH inspection. Source firewall.ssl-ssh-profile.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this VDOM.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				strict_src_check: {
					description: [
						"Enable/disable strict source verification.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tcp_session_without_syn: {
					description: [
						"Enable/disable allowing TCP session without SYN flags.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				utf8_spam_tagging: {
					description: [
						"Enable/disable converting antispam tags to UTF-8 for better non-ASCII character support.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				v4_ecmp_mode: {
					description: [
						"IPv4 Equal-cost multi-path (ECMP) routing and load balancing mode.",
					]
					type: "str"
					choices: [
						"source-ip-based",
						"weight-based",
						"usage-based",
						"source-dest-ip-based",
					]
				}
				vpn_stats_log: {
					description: [
						"Enable/disable periodic VPN log statistics for one or more types of VPN. Separate names with a space.",
					]
					type: "str"
					choices: [
						"ipsec",
						"pptp",
						"l2tp",
						"ssl",
					]
				}
				vpn_stats_period: {
					description: [
						"Period to send VPN log statistics (60 - 86400 sec).",
					]
					type: "int"
				}
				wccp_cache_engine: {
					description: [
						"Enable/disable WCCP cache engine.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
