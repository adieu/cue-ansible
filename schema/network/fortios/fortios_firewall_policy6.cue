package ansible

module: fortios_firewall_policy6: {
	module:            "fortios_firewall_policy6"
	short_description: "Configure IPv6 policies in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and policy6 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		firewall_policy6: {
			description: [
				"Configure IPv6 policies.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				action: {
					description: [
						"Policy action (allow/deny/ipsec).",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
						"ipsec",
					]
				}
				app_category: {
					description: [
						"Application category ID list.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Category IDs.",
						]
						required: true
						type:     "int"
					}
				}
				app_group: {
					description: [
						"Application group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Application group names. Source application.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				application: {
					description: [
						"Application ID list.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Application IDs.",
						]
						required: true
						type:     "int"
					}
				}
				application_list: {
					description: [
						"Name of an existing Application list. Source application.list.name.",
					]
					type: "str"
				}
				av_profile: {
					description: [
						"Name of an existing Antivirus profile. Source antivirus.profile.name.",
					]
					type: "str"
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				custom_log_fields: {
					description: [
						"Log field index numbers to append custom log fields to log messages for this policy.",
					]
					type: "list"
					suboptions: field_id: {
						description: [
							"Custom log field. Source log.custom-field.id.",
						]
						type: "str"
					}
				}
				devices: {
					description: [
						"Names of devices or device groups that can be matched by the policy.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Device or group name. Source user.device.alias user.device-group.name user.device-category.name.",
						]
						required: true
						type:     "str"
					}
				}
				diffserv_forward: {
					description: [
						"Enable to change packet's DiffServ values to the specified diffservcode-forward value.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				diffserv_reverse: {
					description: [
						"Enable to change packet's reverse (reply) DiffServ values to the specified diffservcode-rev value.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				diffservcode_forward: {
					description: [
						"Change packet's DiffServ to this value.",
					]
					type: "str"
				}
				diffservcode_rev: {
					description: [
						"Change packet's reverse (reply) DiffServ to this value.",
					]
					type: "str"
				}
				dlp_sensor: {
					description: [
						"Name of an existing DLP sensor. Source dlp.sensor.name.",
					]
					type: "str"
				}
				dscp_match: {
					description: [
						"Enable DSCP check.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dscp_negate: {
					description: [
						"Enable negated DSCP match.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dscp_value: {
					description: [
						"DSCP value.",
					]
					type: "str"
				}
				dsri: {
					description: [
						"Enable DSRI to ignore HTTP server responses.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dstaddr: {
					description: [
						"Destination address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name firewall.vip6.name firewall.vipgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				dstaddr_negate: {
					description: [
						"When enabled dstaddr specifies what the destination address must NOT be.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dstintf: {
					description: [
						"Outgoing (egress) interface.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Interface name. Source system.interface.name system.zone.name.",
						]
						required: true
						type:     "str"
					}
				}
				firewall_session_dirty: {
					description: [
						"How to handle sessions if the configuration of this firewall policy changes.",
					]
					type: "str"
					choices: [
						"check-all",
						"check-new",
					]
				}
				fixedport: {
					description: [
						"Enable to prevent source NAT from changing a session's source port.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				global_label: {
					description: [
						"Label for the policy that appears when the GUI is in Global View mode.",
					]
					type: "str"
				}
				groups: {
					description: [
						"Names of user groups that can authenticate with this policy.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Group name. Source user.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				icap_profile: {
					description: [
						"Name of an existing ICAP profile. Source icap.profile.name.",
					]
					type: "str"
				}
				inbound: {
					description: [
						"Policy-based IPsec VPN: only traffic from the remote network can initiate a VPN.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ippool: {
					description: [
						"Enable to use IP Pools for source NAT.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ips_sensor: {
					description: [
						"Name of an existing IPS sensor. Source ips.sensor.name.",
					]
					type: "str"
				}
				label: {
					description: [
						"Label for the policy that appears when the GUI is in Section View mode.",
					]
					type: "str"
				}
				logtraffic: {
					description: [
						"Enable or disable logging. Log all sessions or security profile sessions.",
					]
					type: "str"
					choices: [
						"all",
						"utm",
						"disable",
					]
				}
				logtraffic_start: {
					description: [
						"Record logs when a session starts and ends.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Policy name.",
					]
					type: "str"
				}
				nat: {
					description: [
						"Enable/disable source NAT.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				natinbound: {
					description: [
						"Policy-based IPsec VPN: apply destination NAT to inbound traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				natoutbound: {
					description: [
						"Policy-based IPsec VPN: apply source NAT to outbound traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				outbound: {
					description: [
						"Policy-based IPsec VPN: only traffic from the internal network can initiate a VPN.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				per_ip_shaper: {
					description: [
						"Per-IP traffic shaper. Source firewall.shaper.per-ip-shaper.name.",
					]
					type: "str"
				}
				policyid: {
					description: [
						"Policy ID.",
					]
					required: true
					type:     "int"
				}
				poolname: {
					description: [
						"IP Pool names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"IP pool name. Source firewall.ippool6.name.",
						]
						required: true
						type:     "str"
					}
				}
				profile_group: {
					description: [
						"Name of profile group. Source firewall.profile-group.name.",
					]
					type: "str"
				}
				profile_protocol_options: {
					description: [
						"Name of an existing Protocol options profile. Source firewall.profile-protocol-options.name.",
					]
					type: "str"
				}
				profile_type: {
					description: [
						"Determine whether the firewall policy allows security profile groups or single profiles only.",
					]
					type: "str"
					choices: [
						"single",
						"group",
					]
				}
				replacemsg_override_group: {
					description: [
						"Override the default replacement message group for this policy. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				rsso: {
					description: [
						"Enable/disable RADIUS single sign-on (RSSO).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				schedule: {
					description: [
						"Schedule name. Source firewall.schedule.onetime.name firewall.schedule.recurring.name firewall.schedule.group.name.",
					]
					type: "str"
				}
				send_deny_packet: {
					description: [
						"Enable/disable return of deny-packet.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				service: {
					description: [
						"Service and service group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.service.custom.name firewall.service.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				service_negate: {
					description: [
						"When enabled service specifies what the service must NOT be.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				session_ttl: {
					description: [
						"Session TTL in seconds for sessions accepted by this policy. 0 means use the system default session TTL.",
					]
					type: "int"
				}
				spamfilter_profile: {
					description: [
						"Name of an existing Spam filter profile. Source spamfilter.profile.name.",
					]
					type: "str"
				}
				srcaddr: {
					description: [
						"Source address and address group names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr_negate: {
					description: [
						"When enabled srcaddr specifies what the source address must NOT be.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				srcintf: {
					description: [
						"Incoming (ingress) interface.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Interface name. Source system.zone.name system.interface.name.",
						]
						required: true
						type:     "str"
					}
				}
				ssh_filter_profile: {
					description: [
						"Name of an existing SSH filter profile. Source ssh-filter.profile.name.",
					]
					type: "str"
				}
				ssl_mirror: {
					description: [
						"Enable to copy decrypted SSL traffic to a FortiGate interface (called SSL mirroring).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ssl_mirror_intf: {
					description: [
						"SSL mirror interface name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Interface name. Source system.zone.name system.interface.name.",
						]
						required: true
						type:     "str"
					}
				}
				ssl_ssh_profile: {
					description: [
						"Name of an existing SSL SSH profile. Source firewall.ssl-ssh-profile.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable or disable this policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tcp_mss_receiver: {
					description: [
						"Receiver TCP maximum segment size (MSS).",
					]
					type: "int"
				}
				tcp_mss_sender: {
					description: [
						"Sender TCP maximum segment size (MSS).",
					]
					type: "int"
				}
				tcp_session_without_syn: {
					description: [
						"Enable/disable creation of TCP session without SYN flag.",
					]
					type: "str"
					choices: [
						"all",
						"data-only",
						"disable",
					]
				}
				timeout_send_rst: {
					description: [
						"Enable/disable sending RST packets when TCP sessions expire.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				traffic_shaper: {
					description: [
						"Reverse traffic shaper. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				traffic_shaper_reverse: {
					description: [
						"Reverse traffic shaper. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				url_category: {
					description: [
						"URL category ID list.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"URL category ID.",
						]
						required: true
						type:     "int"
					}
				}
				users: {
					description: [
						"Names of individual users that can authenticate with this policy.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Names of individual users that can authenticate with this policy. Source user.local.name.",
						]
						required: true
						type:     "str"
					}
				}
				utm_status: {
					description: [
						"Enable AV/web/ips protection profile.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				uuid: {
					description: [
						"Universally Unique Identifier (UUID; automatically assigned but can be manually reset).",
					]
					type: "str"
				}
				vlan_cos_fwd: {
					description: [
						"VLAN forward direction user priority: 255 passthrough, 0 lowest, 7 highest",
					]
					type: "int"
				}
				vlan_cos_rev: {
					description: [
						"VLAN reverse direction user priority: 255 passthrough, 0 lowest, 7 highest",
					]
					type: "int"
				}
				vlan_filter: {
					description: [
						"Set VLAN filters.",
					]
					type: "str"
				}
				voip_profile: {
					description: [
						"Name of an existing VoIP profile. Source voip.profile.name.",
					]
					type: "str"
				}
				vpntunnel: {
					description: [
						"Policy-based IPsec VPN: name of the IPsec VPN Phase 1. Source vpn.ipsec.phase1.name vpn.ipsec.manualkey.name.",
					]
					type: "str"
				}
				webfilter_profile: {
					description: [
						"Name of an existing Web filter profile. Source webfilter.profile.name.",
					]
					type: "str"
				}
			}
		}
	}
}
