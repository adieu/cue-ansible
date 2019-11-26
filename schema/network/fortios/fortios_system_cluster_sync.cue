package ansible

module: fortios_system_cluster_sync: {
	module:            "fortios_system_cluster_sync"
	short_description: "Configure FortiGate Session Life Support Protocol (FGSP) session synchronization in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and cluster_sync category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.9"
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
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Indicates whether to create or remove the object.",
			]
			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
			]
		}
		system_cluster_sync: {
			description: [
				"Configure FortiGate Session Life Support Protocol (FGSP) session synchronization.",
			]
			default: null
			type:    "dict"
			suboptions: {
				down_intfs_before_sess_sync: {
					description: [
						"List of interfaces to be turned down before session synchronization is complete.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Interface name. Source system.interface.name.",
						]
						required: true
						type:     "str"
					}
				}
				hb_interval: {
					description: [
						"Heartbeat interval (1 - 10 sec).",
					]
					type: "int"
				}
				hb_lost_threshold: {
					description: [
						"Lost heartbeat threshold (1 - 10).",
					]
					type: "int"
				}
				peerip: {
					description: [
						"IP address of the interface on the peer unit that is used for the session synchronization link.",
					]
					type: "str"
				}
				peervd: {
					description: [
						"VDOM that contains the session synchronization link interface on the peer unit. Usually both peers would have the same peervd. Source system.vdom.name.",
					]

					type: "str"
				}
				session_sync_filter: {
					description: [
						"Add one or more filters if you only want to synchronize some sessions. Use the filter to configure the types of sessions to synchronize.",
					]
					type: "dict"
					suboptions: {
						custom_service: {
							description: [
								"Only sessions using these custom services are synchronized. Use source and destination port ranges to define these custom services.",
							]

							type: "list"
							suboptions: {
								dst_port_range: {
									description: [
										"Custom service destination port range.",
									]
									type: "str"
								}
								id: {
									description: [
										"Custom service ID.",
									]
									required: true
									type:     "int"
								}
								src_port_range: {
									description: [
										"Custom service source port range.",
									]
									type: "str"
								}
							}
						}
						dstaddr: {
							description: [
								"Only sessions to this IPv4 address are synchronized. You can only enter one address. To synchronize sessions for multiple destination addresses, add multiple filters.",
							]

							type: "str"
						}
						dstaddr6: {
							description: [
								"Only sessions to this IPv6 address are synchronized. You can only enter one address. To synchronize sessions for multiple destination addresses, add multiple filters.",
							]

							type: "str"
						}
						dstintf: {
							description: [
								"Only sessions to this interface are synchronized. You can only enter one interface name. To synchronize sessions to multiple destination interfaces, add multiple filters. Source system.interface.name.",
							]

							type: "str"
						}
						srcaddr: {
							description: [
								"Only sessions from this IPv4 address are synchronized. You can only enter one address. To synchronize sessions from multiple source addresses, add multiple filters.",
							]

							type: "str"
						}
						srcaddr6: {
							description: [
								"Only sessions from this IPv6 address are synchronized. You can only enter one address. To synchronize sessions from multiple source addresses, add multiple filters.",
							]

							type: "str"
						}
						srcintf: {
							description: [
								"Only sessions from this interface are synchronized. You can only enter one interface name. To synchronize sessions for multiple source interfaces, add multiple filters. Source system.interface.name.",
							]

							type: "str"
						}
					}
				}
				slave_add_ike_routes: {
					description: [
						"Enable/disable IKE route announcement on the backup unit.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sync_id: {
					description: [
						"Sync ID.",
					]
					type: "int"
				}
				syncvd: {
					description: [
						"Sessions from these VDOMs are synchronized using this session synchronization configuration.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"VDOM name. Source system.vdom.name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
