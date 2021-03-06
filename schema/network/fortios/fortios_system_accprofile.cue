package ansible

module: fortios_system_accprofile: {
	module:            "fortios_system_accprofile"
	short_description: "Configure access profiles for system administrators in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and accprofile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_accprofile: {
			description: [
				"Configure access profiles for system administrators.",
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
				admintimeout: {
					description: [
						"Administrator timeout for this access profile (0 - 480 min).",
					]
					type: "int"
				}
				admintimeout_override: {
					description: [
						"Enable/disable overriding the global administrator idle timeout.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				authgrp: {
					description: [
						"Administrator access to Users and Devices.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				ftviewgrp: {
					description: [
						"FortiView.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
				fwgrp: {
					description: [
						"Administrator access to the Firewall configuration.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
						"custom",
					]
				}
				fwgrp_permission: {
					description: [
						"Custom firewall permission.",
					]
					type: "dict"
					suboptions: {
						address: {
							description: [
								"Address Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						policy: {
							description: [
								"Policy Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						schedule: {
							description: [
								"Schedule Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						service: {
							description: [
								"Service Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
					}
				}
				loggrp: {
					description: [
						"Administrator access to Logging and Reporting including viewing log messages.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
						"custom",
					]
				}
				loggrp_permission: {
					description: [
						"Custom Log & Report permission.",
					]
					type: "dict"
					suboptions: {
						config: {
							description: [
								"Log & Report configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						data_access: {
							description: [
								"Log & Report Data Access.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						report_access: {
							description: [
								"Log & Report Report Access.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						threat_weight: {
							description: [
								"Log & Report Threat Weight.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
					}
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				netgrp: {
					description: [
						"Network Configuration.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
						"custom",
					]
				}
				netgrp_permission: {
					description: [
						"Custom network permission.",
					]
					type: "dict"
					suboptions: {
						cfg: {
							description: [
								"Network Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						packet_capture: {
							description: [
								"Packet Capture Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						route_cfg: {
							description: [
								"Router Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
					}
				}
				scope: {
					description: [
						"Scope of admin access: global or specific VDOM(s).",
					]
					type: "str"
					choices: [
						"vdom",
						"global",
					]
				}
				secfabgrp: {
					description: [
						"Security Fabric.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
				sysgrp: {
					description: [
						"System Configuration.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
						"custom",
					]
				}
				sysgrp_permission: {
					description: [
						"Custom system permission.",
					]
					type: "dict"
					suboptions: {
						admin: {
							description: [
								"Administrator Users.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						cfg: {
							description: [
								"System Configuration.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						mnt: {
							description: [
								"Maintenance.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						upd: {
							description: [
								"FortiGuard Updates.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
					}
				}
				utmgrp: {
					description: [
						"Administrator access to Security Profiles.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
						"custom",
					]
				}
				utmgrp_permission: {
					description: [
						"Custom Security Profile permissions.",
					]
					type: "dict"
					suboptions: {
						antivirus: {
							description: [
								"Antivirus profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						application_control: {
							description: [
								"Application Control profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						data_loss_prevention: {
							description: [
								"DLP profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						dnsfilter: {
							description: [
								"DNS Filter profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						endpoint_control: {
							description: [
								"FortiClient Profiles.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						icap: {
							description: [
								"ICAP profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						ips: {
							description: [
								"IPS profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						spamfilter: {
							description: [
								"AntiSpam filter and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						voip: {
							description: [
								"VoIP profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						waf: {
							description: [
								"Web Application Firewall profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
						webfilter: {
							description: [
								"Web Filter profiles and settings.",
							]
							type: "str"
							choices: [
								"none",
								"read",
								"read-write",
							]
						}
					}
				}
				vpngrp: {
					description: [
						"Administrator access to IPsec, SSL, PPTP, and L2TP VPN.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
				wanoptgrp: {
					description: [
						"Administrator access to WAN Opt & Cache.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
				wifi: {
					description: [
						"Administrator access to the WiFi controller and Switch controller.",
					]
					type: "str"
					choices: [
						"none",
						"read",
						"read-write",
					]
				}
			}
		}
	}
}
