package ansible

module: fortios_switch_controller_managed_switch: {
	module:            "fortios_switch_controller_managed_switch"
	short_description: "Configure FortiSwitch devices that are managed by this FortiGate in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller feature and managed_switch category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_managed_switch: {
			description: [
				"Configure FortiSwitch devices that are managed by this FortiGate.",
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
				"802_1X_settings": {
					description: [
						"Configuration method to edit FortiSwitch 802.1X global settings.",
					]
					type: "dict"
					suboptions: {
						link_down_auth: {
							description: [
								"Authentication state to set if a link is down.",
							]
							type: "str"
							choices: [
								"set-unauth",
								"no-action",
							]
						}
						local_override: {
							description: [
								"Enable to override global 802.1X settings on individual FortiSwitches.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						max_reauth_attempt: {
							description: [
								"Maximum number of authentication attempts (0 - 15).",
							]
							type: "int"
						}
						reauth_period: {
							description: [
								"Reauthentication time interval (1 - 1440 min).",
							]
							type: "int"
						}
					}
				}
				custom_command: {
					description: [
						"Configuration method to edit FortiSwitch commands to be pushed to this FortiSwitch device upon rebooting the FortiGate switch controller or the FortiSwitch.",
					]

					type: "list"
					suboptions: {
						command_entry: {
							description: [
								"List of FortiSwitch commands.",
							]
							type: "str"
						}
						command_name: {
							description: [
								"Names of commands to be pushed to this FortiSwitch device, as configured under config switch-controller custom-command. Source switch-controller.custom-command.command-name.",
							]

							type: "str"
						}
					}
				}
				delayed_restart_trigger: {
					description: [
						"Delayed restart triggered for this FortiSwitch.",
					]
					type: "int"
				}
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				directly_connected: {
					description: [
						"Directly connected FortiSwitch.",
					]
					type: "int"
				}
				dynamic_capability: {
					description: [
						"List of features this FortiSwitch supports (not configurable) that is sent to the FortiGate device for subsequent configuration initiated by the FortiGate device.",
					]

					type: "int"
				}
				dynamically_discovered: {
					description: [
						"Dynamically discovered FortiSwitch.",
					]
					type: "int"
				}
				fsw_wan1_admin: {
					description: [
						"FortiSwitch WAN1 admin status; enable to authorize the FortiSwitch as a managed switch.",
					]
					type: "str"
					choices: [
						"discovered",
						"disable",
						"enable",
					]
				}
				fsw_wan1_peer: {
					description: [
						"Fortiswitch WAN1 peer port.",
					]
					type: "str"
				}
				fsw_wan2_admin: {
					description: [
						"FortiSwitch WAN2 admin status; enable to authorize the FortiSwitch as a managed switch.",
					]
					type: "str"
					choices: [
						"discovered",
						"disable",
						"enable",
					]
				}
				fsw_wan2_peer: {
					description: [
						"FortiSwitch WAN2 peer port.",
					]
					type: "str"
				}
				igmp_snooping: {
					description: [
						"Configure FortiSwitch IGMP snooping global settings.",
					]
					type: "dict"
					suboptions: {
						aging_time: {
							description: [
								"Maximum time to retain a multicast snooping entry for which no packets have been seen (15 - 3600 sec).",
							]
							type: "int"
						}
						flood_unknown_multicast: {
							description: [
								"Enable/disable unknown multicast flooding.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_override: {
							description: [
								"Enable/disable overriding the global IGMP snooping configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				max_allowed_trunk_members: {
					description: [
						"FortiSwitch maximum allowed trunk members.",
					]
					type: "int"
				}
				mirror: {
					description: [
						"Configuration method to edit FortiSwitch packet mirror.",
					]
					type: "list"
					suboptions: {
						dst: {
							description: [
								"Destination port.",
							]
							type: "str"
						}
						name: {
							description: [
								"Mirror name.",
							]
							required: true
							type:     "str"
						}
						src_egress: {
							description: [
								"Source egress interfaces.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Interface name.",
								]
								required: true
								type:     "str"
							}
						}
						src_ingress: {
							description: [
								"Source ingress interfaces.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Interface name.",
								]
								required: true
								type:     "str"
							}
						}
						status: {
							description: [
								"Active/inactive mirror configuration.",
							]
							type: "str"
							choices: [
								"active",
								"inactive",
							]
						}
						switching_packet: {
							description: [
								"Enable/disable switching functionality when mirroring.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				name: {
					description: [
						"Managed-switch name.",
					]
					type: "str"
				}
				owner_vdom: {
					description: [
						"VDOM which owner of port belongs to.",
					]
					type: "str"
				}
				poe_detection_type: {
					description: [
						"PoE detection type for FortiSwitch.",
					]
					type: "int"
				}
				poe_pre_standard_detection: {
					description: [
						"Enable/disable PoE pre-standard detection.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ports: {
					description: [
						"Managed-switch port list.",
					]
					type: "list"
					suboptions: {
						allowed_vlans: {
							description: [
								"Configure switch port tagged vlans",
							]
							type: "list"
							suboptions: vlan_name: {
								description: [
									"VLAN name. Source system.interface.name.",
								]
								type: "str"
							}
						}
						allowed_vlans_all: {
							description: [
								"Enable/disable all defined vlans on this port.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						arp_inspection_trust: {
							description: [
								"Trusted or untrusted dynamic ARP inspection.",
							]
							type: "str"
							choices: [
								"untrusted",
								"trusted",
							]
						}
						bundle: {
							description: [
								"Enable/disable Link Aggregation Group (LAG) bundling for non-FortiLink interfaces.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						description: {
							description: [
								"Description for port.",
							]
							type: "str"
						}
						dhcp_snoop_option82_trust: {
							description: [
								"Enable/disable allowance of DHCP with option-82 on untrusted interface.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						dhcp_snooping: {
							description: [
								"Trusted or untrusted DHCP-snooping interface.",
							]
							type: "str"
							choices: [
								"untrusted",
								"trusted",
							]
						}
						discard_mode: {
							description: [
								"Configure discard mode for port.",
							]
							type: "str"
							choices: [
								"none",
								"all-untagged",
								"all-tagged",
							]
						}
						edge_port: {
							description: [
								"Enable/disable this interface as an edge port, bridging connections between workstations and/or computers.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						export_tags: {
							description: [
								"Switch controller export tag name.",
							]
							type: "list"
							suboptions: tag_name: {
								description: [
									"Switch tag name. Source switch-controller.switch-interface-tag.name.",
								]
								type: "str"
							}
						}
						export_to: {
							description: [
								"Export managed-switch port to a tenant VDOM. Source system.vdom.name.",
							]
							type: "str"
						}
						export_to_pool: {
							description: [
								"Switch controller export port to pool-list. Source switch-controller.virtual-port-pool.name.",
							]
							type: "str"
						}
						export_to_pool_flag: {
							description: [
								"Switch controller export port to pool-list.",
							]
							type: "int"
						}
						fgt_peer_device_name: {
							description: [
								"FGT peer device name.",
							]
							type: "str"
						}
						fgt_peer_port_name: {
							description: [
								"FGT peer port name.",
							]
							type: "str"
						}
						fiber_port: {
							description: [
								"Fiber-port.",
							]
							type: "int"
						}
						flags: {
							description: [
								"Port properties flags.",
							]
							type: "int"
						}
						fortilink_port: {
							description: [
								"FortiLink uplink port.",
							]
							type: "int"
						}
						igmp_snooping: {
							description: [
								"Set IGMP snooping mode for the physical port interface.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						igmps_flood_reports: {
							description: [
								"Enable/disable flooding of IGMP reports to this interface when igmp-snooping enabled.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						igmps_flood_traffic: {
							description: [
								"Enable/disable flooding of IGMP snooping traffic to this interface.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						isl_local_trunk_name: {
							description: [
								"ISL local trunk name.",
							]
							type: "str"
						}
						isl_peer_device_name: {
							description: [
								"ISL peer device name.",
							]
							type: "str"
						}
						isl_peer_port_name: {
							description: [
								"ISL peer port name.",
							]
							type: "str"
						}
						lacp_speed: {
							description: [
								"end Link Aggregation Control Protocol (LACP) messages every 30 seconds (slow) or every second (fast).",
							]
							type: "str"
							choices: [
								"slow",
								"fast",
							]
						}
						learning_limit: {
							description: [
								"Limit the number of dynamic MAC addresses on this Port (1 - 128, 0 = no limit, default).",
							]
							type: "int"
						}
						lldp_profile: {
							description: [
								"LLDP port TLV profile. Source switch-controller.lldp-profile.name.",
							]
							type: "str"
						}
						lldp_status: {
							description: [
								"LLDP transmit and receive status.",
							]
							type: "str"
							choices: [
								"disable",
								"rx-only",
								"tx-only",
								"tx-rx",
							]
						}
						loop_guard: {
							description: [
								"Enable/disable loop-guard on this interface, an STP optimization used to prevent network loops.",
							]
							type: "str"
							choices: [
								"enabled",
								"disabled",
							]
						}
						loop_guard_timeout: {
							description: [
								"Loop-guard timeout (0 - 120 min).",
							]
							type: "int"
						}
						max_bundle: {
							description: [
								"Maximum size of LAG bundle (1 - 24)",
							]
							type: "int"
						}
						mclag: {
							description: [
								"Enable/disable multi-chassis link aggregation (MCLAG).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						member_withdrawal_behavior: {
							description: [
								"Port behavior after it withdraws because of loss of control packets.",
							]
							type: "str"
							choices: [
								"forward",
								"block",
							]
						}
						members: {
							description: [
								"Aggregated LAG bundle interfaces.",
							]
							type: "list"
							suboptions: member_name: {
								description: [
									"Interface name from available options.",
								]
								type: "str"
							}
						}
						min_bundle: {
							description: [
								"Minimum size of LAG bundle (1 - 24)",
							]
							type: "int"
						}
						mode: {
							description: [
								"LACP mode: ignore and do not send control messages, or negotiate 802.3ad aggregation passively or actively.",
							]
							type: "str"
							choices: [
								"static",
								"lacp-passive",
								"lacp-active",
							]
						}
						poe_capable: {
							description: [
								"PoE capable.",
							]
							type: "int"
						}
						poe_pre_standard_detection: {
							description: [
								"Enable/disable PoE pre-standard detection.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						poe_status: {
							description: [
								"Enable/disable PoE status.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port_name: {
							description: [
								"Switch port name.",
							]
							type: "str"
						}
						port_number: {
							description: [
								"Port number.",
							]
							type: "int"
						}
						port_owner: {
							description: [
								"Switch port name.",
							]
							type: "str"
						}
						port_prefix_type: {
							description: [
								"Port prefix type.",
							]
							type: "int"
						}
						port_security_policy: {
							description: [
								"Switch controller authentication policy to apply to this managed switch from available options. Source switch-controller .security-policy.802-1X.name switch-controller.security-policy.captive-portal.name.",
							]

							type: "str"
						}
						port_selection_criteria: {
							description: [
								"Algorithm for aggregate port selection.",
							]
							type: "str"
							choices: [
								"src-mac",
								"dst-mac",
								"src-dst-mac",
								"src-ip",
								"dst-ip",
								"src-dst-ip",
							]
						}
						qos_policy: {
							description: [
								"Switch controller QoS policy from available options. Source switch-controller.qos.qos-policy.name.",
							]
							type: "str"
						}
						sample_direction: {
							description: [
								"sFlow sample direction.",
							]
							type: "str"
							choices: [
								"tx",
								"rx",
								"both",
							]
						}
						sflow_counter_interval: {
							description: [
								"sFlow sampler counter polling interval (1 - 255 sec).",
							]
							type: "int"
						}
						sflow_sample_rate: {
							description: [
								"sFlow sampler sample rate (0 - 99999 p/sec).",
							]
							type: "int"
						}
						sflow_sampler: {
							description: [
								"Enable/disable sFlow protocol on this interface.",
							]
							type: "str"
							choices: [
								"enabled",
								"disabled",
							]
						}
						speed: {
							description: [
								"Switch port speed; default and available settings depend on hardware.",
							]
							type: "str"
							choices: [
								"10half",
								"10full",
								"100half",
								"100full",
								"1000auto",
								"1000fiber",
								"1000full",
								10000,
								40000,
								"auto",
								"auto-module",
								"100FX-half",
								"100FX-full",
								"100000full",
								"2500full",
								"25000full",
								"50000full",
							]
						}
						speed_mask: {
							description: [
								"Switch port speed mask.",
							]
							type: "int"
						}
						stacking_port: {
							description: [
								"Stacking port.",
							]
							type: "int"
						}
						status: {
							description: [
								"Switch port admin status: up or down.",
							]
							type: "str"
							choices: [
								"up",
								"down",
							]
						}
						stp_bpdu_guard: {
							description: [
								"Enable/disable STP BPDU guard on this interface.",
							]
							type: "str"
							choices: [
								"enabled",
								"disabled",
							]
						}
						stp_bpdu_guard_timeout: {
							description: [
								"BPDU Guard disabling protection (0 - 120 min).",
							]
							type: "int"
						}
						stp_root_guard: {
							description: [
								"Enable/disable STP root guard on this interface.",
							]
							type: "str"
							choices: [
								"enabled",
								"disabled",
							]
						}
						stp_state: {
							description: [
								"Enable/disable Spanning Tree Protocol (STP) on this interface.",
							]
							type: "str"
							choices: [
								"enabled",
								"disabled",
							]
						}
						switch_id: {
							description: [
								"Switch id.",
							]
							type: "str"
						}
						type: {
							description: [
								"Interface type: physical or trunk port.",
							]
							type: "str"
							choices: [
								"physical",
								"trunk",
							]
						}
						untagged_vlans: {
							description: [
								"Configure switch port untagged vlans",
							]
							type: "list"
							suboptions: vlan_name: {
								description: [
									"VLAN name. Source system.interface.name.",
								]
								type: "str"
							}
						}
						virtual_port: {
							description: [
								"Virtualized switch port.",
							]
							type: "int"
						}
						vlan: {
							description: [
								"Assign switch ports to a VLAN. Source system.interface.name.",
							]
							type: "str"
						}
					}
				}
				pre_provisioned: {
					description: [
						"Pre-provisioned managed switch.",
					]
					type: "int"
				}
				staged_image_version: {
					description: [
						"Staged image version for FortiSwitch.",
					]
					type: "str"
				}
				storm_control: {
					description: [
						"Configuration method to edit FortiSwitch storm control for measuring traffic activity using data rates to prevent traffic disruption.",
					]
					type: "dict"
					suboptions: {
						broadcast: {
							description: [
								"Enable/disable storm control to drop broadcast traffic.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						local_override: {
							description: [
								"Enable to override global FortiSwitch storm control settings for this FortiSwitch.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						rate: {
							description: [
								"Rate in packets per second at which storm traffic is controlled (1 - 10000000). Storm control drops excess traffic data rates beyond this threshold.",
							]

							type: "int"
						}
						unknown_multicast: {
							description: [
								"Enable/disable storm control to drop unknown multicast traffic.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						unknown_unicast: {
							description: [
								"Enable/disable storm control to drop unknown unicast traffic.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				stp_settings: {
					description: [
						"Configuration method to edit Spanning Tree Protocol (STP) settings used to prevent bridge loops.",
					]
					type: "dict"
					suboptions: {
						forward_time: {
							description: [
								"Period of time a port is in listening and learning state (4 - 30 sec).",
							]
							type: "int"
						}
						hello_time: {
							description: [
								"Period of time between successive STP frame Bridge Protocol Data Units (BPDUs) sent on a port (1 - 10 sec).",
							]
							type: "int"
						}
						local_override: {
							description: [
								"Enable to configure local STP settings that override global STP settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						max_age: {
							description: [
								"Maximum time before a bridge port saves its configuration BPDU information (6 - 40 sec).",
							]
							type: "int"
						}
						max_hops: {
							description: [
								"Maximum number of hops between the root bridge and the furthest bridge (1- 40).",
							]
							type: "int"
						}
						name: {
							description: [
								"Name of local STP settings configuration.",
							]
							type: "str"
						}
						pending_timer: {
							description: [
								"Pending time (1 - 15 sec).",
							]
							type: "int"
						}
						revision: {
							description: [
								"STP revision number (0 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable STP.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				switch_device_tag: {
					description: [
						"User definable label/tag.",
					]
					type: "str"
				}
				switch_id: {
					description: [
						"Managed-switch id.",
					]
					type: "str"
				}
				switch_log: {
					description: [
						"Configuration method to edit FortiSwitch logging settings (logs are transferred to and inserted into the FortiGate event log).",
					]
					type: "dict"
					suboptions: {
						local_override: {
							description: [
								"Enable to configure local logging settings that override global logging settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						severity: {
							description: [
								"Severity of FortiSwitch logs that are added to the FortiGate event log.",
							]
							type: "str"
							choices: [
								"emergency",
								"alert",
								"critical",
								"error",
								"warning",
								"notification",
								"information",
								"debug",
							]
						}
						status: {
							description: [
								"Enable/disable adding FortiSwitch logs to the FortiGate event log.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				switch_profile: {
					description: [
						"FortiSwitch profile. Source switch-controller.switch-profile.name.",
					]
					type: "str"
				}
				switch_stp_settings: {
					description: [
						"Configure spanning tree protocol (STP).",
					]
					type: "dict"
					suboptions: status: {
						description: [
							"Enable/disable STP.",
						]
						type: "str"
						choices: [
							"enable",
							"disable",
						]
					}
				}
				type: {
					description: [
						"Indication of switch type, physical or virtual.",
					]
					type: "str"
					choices: [
						"virtual",
						"physical",
					]
				}
				version: {
					description: [
						"FortiSwitch version.",
					]
					type: "int"
				}
			}
		}
	}
}
