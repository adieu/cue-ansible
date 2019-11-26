package ansible

module: fortios_wanopt_profile: {
	module:            "fortios_wanopt_profile"
	short_description: "Configure WAN optimization profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wanopt feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wanopt_profile: {
			description: [
				"Configure WAN optimization profiles.",
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
				auth_group: {
					description: [
						"Optionally add an authentication group to restrict access to the WAN Optimization tunnel to peers in the authentication group. Source wanopt.auth-group.name.",
					]

					type: "str"
				}
				cifs: {
					description: [
						"Enable/disable CIFS (Windows sharing) WAN Optimization and configure CIFS WAN Optimization features.",
					]
					type: "dict"
					suboptions: {
						byte_caching: {
							description: [
								"Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						log_traffic: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port: {
							description: [
								"Single port number or port number range for CIFS. Only packets with a destination port number that matches this port number or range are accepted by this profile.",
							]

							type: "int"
						}
						prefer_chunking: {
							description: [
								"Select dynamic or fixed-size data chunking for HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"dynamic",
								"fix",
							]
						}
						secure_tunnel: {
							description: [
								"Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_sharing: {
							description: [
								"Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.",
							]
							type: "str"
							choices: [
								"private",
								"shared",
								"express-shared",
							]
						}
					}
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				ftp: {
					description: [
						"Enable/disable FTP WAN Optimization and configure FTP WAN Optimization features.",
					]
					type: "dict"
					suboptions: {
						byte_caching: {
							description: [
								"Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						log_traffic: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port: {
							description: [
								"Single port number or port number range for FTP. Only packets with a destination port number that matches this port number or range are accepted by this profile.",
							]

							type: "int"
						}
						prefer_chunking: {
							description: [
								"Select dynamic or fixed-size data chunking for HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"dynamic",
								"fix",
							]
						}
						secure_tunnel: {
							description: [
								"Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_sharing: {
							description: [
								"Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.",
							]
							type: "str"
							choices: [
								"private",
								"shared",
								"express-shared",
							]
						}
					}
				}
				http: {
					description: [
						"Enable/disable HTTP WAN Optimization and configure HTTP WAN Optimization features.",
					]
					type: "dict"
					suboptions: {
						byte_caching: {
							description: [
								"Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						log_traffic: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port: {
							description: [
								"Single port number or port number range for HTTP. Only packets with a destination port number that matches this port number or range are accepted by this profile.",
							]

							type: "int"
						}
						prefer_chunking: {
							description: [
								"Select dynamic or fixed-size data chunking for HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"dynamic",
								"fix",
							]
						}
						secure_tunnel: {
							description: [
								"Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ssl: {
							description: [
								"Enable/disable SSL/TLS offloading (hardware acceleration) for HTTPS traffic in this tunnel.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ssl_port: {
							description: [
								"Port on which to expect HTTPS traffic for SSL/TLS offloading.",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_non_http: {
							description: [
								"Configure how to process non-HTTP traffic when a profile configured for HTTP traffic accepts a non-HTTP session. Can occur if an application sends non-HTTP traffic using an HTTP destination port.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_sharing: {
							description: [
								"Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.",
							]
							type: "str"
							choices: [
								"private",
								"shared",
								"express-shared",
							]
						}
						unknown_http_version: {
							description: [
								"How to handle HTTP sessions that do not comply with HTTP 0.9, 1.0, or 1.1.",
							]
							type: "str"
							choices: [
								"reject",
								"tunnel",
								"best-effort",
							]
						}
					}
				}
				mapi: {
					description: [
						"Enable/disable MAPI email WAN Optimization and configure MAPI WAN Optimization features.",
					]
					type: "dict"
					suboptions: {
						byte_caching: {
							description: [
								"Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						log_traffic: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port: {
							description: [
								"Single port number or port number range for MAPI. Only packets with a destination port number that matches this port number or range are accepted by this profile.",
							]

							type: "int"
						}
						secure_tunnel: {
							description: [
								"Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						status: {
							description: [
								"Enable/disable HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_sharing: {
							description: [
								"Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.",
							]
							type: "str"
							choices: [
								"private",
								"shared",
								"express-shared",
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
				tcp: {
					description: [
						"Enable/disable TCP WAN Optimization and configure TCP WAN Optimization features.",
					]
					type: "dict"
					suboptions: {
						byte_caching: {
							description: [
								"Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						byte_caching_opt: {
							description: [
								"Select whether TCP byte-caching uses system memory only or both memory and disk space.",
							]
							type: "str"
							choices: [
								"mem-only",
								"mem-disk",
							]
						}
						log_traffic: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						port: {
							description: [
								"Single port number or port number range for TCP. Only packets with a destination port number that matches this port number or range are accepted by this profile.",
							]

							type: "str"
						}
						secure_tunnel: {
							description: [
								"Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ssl: {
							description: [
								"Enable/disable SSL/TLS offloading.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ssl_port: {
							description: [
								"Port on which to expect HTTPS traffic for SSL/TLS offloading.",
							]
							type: "int"
						}
						status: {
							description: [
								"Enable/disable HTTP WAN Optimization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						tunnel_sharing: {
							description: [
								"Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.",
							]
							type: "str"
							choices: [
								"private",
								"shared",
								"express-shared",
							]
						}
					}
				}
				transparent: {
					description: [
						"Enable/disable transparent mode.",
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
