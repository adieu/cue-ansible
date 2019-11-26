package ansible

module: fortios_web_proxy_explicit: {
	module:            "fortios_web_proxy_explicit"
	short_description: "Configure explicit Web proxy settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify web_proxy feature and explicit category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		web_proxy_explicit: {
			description: [
				"Configure explicit Web proxy settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ftp_incoming_port: {
					description: [
						"Accept incoming FTP-over-HTTP requests on one or more ports (0 - 65535).",
					]
					type: "str"
				}
				ftp_over_http: {
					description: [
						"Enable to proxy FTP-over-HTTP sessions sent from a web browser.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				http_incoming_port: {
					description: [
						"Accept incoming HTTP requests on one or more ports (0 - 65535).",
					]
					type: "str"
				}
				https_incoming_port: {
					description: [
						"Accept incoming HTTPS requests on one or more ports (0 - 65535).",
					]
					type: "str"
				}
				https_replacement_message: {
					description: [
						"Enable/disable sending the client a replacement message for HTTPS requests.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				incoming_ip: {
					description: [
						"Restrict the explicit HTTP proxy to only accept sessions from this IP address. An interface must have this IP address.",
					]
					type: "str"
				}
				incoming_ip6: {
					description: [
						"Restrict the explicit web proxy to only accept sessions from this IPv6 address. An interface must have this IPv6 address.",
					]
					type: "str"
				}
				ipv6_status: {
					description: [
						"Enable/disable allowing an IPv6 web proxy destination in policies and all IPv6 related entries in this command.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				message_upon_server_error: {
					description: [
						"Enable/disable displaying a replacement message when a server error is detected.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				outgoing_ip: {
					description: [
						"Outgoing HTTP requests will have this IP address as their source address. An interface must have this IP address.",
					]
					type: "str"
				}
				outgoing_ip6: {
					description: [
						"Outgoing HTTP requests will leave this IPv6. Multiple interfaces can be specified. Interfaces must have these IPv6 addresses.",
					]
					type: "str"
				}
				pac_file_data: {
					description: [
						"PAC file contents enclosed in quotes (maximum of 256K bytes).",
					]
					type: "str"
				}
				pac_file_name: {
					description: [
						"Pac file name.",
					]
					type: "str"
				}
				pac_file_server_port: {
					description: [
						"Port number that PAC traffic from client web browsers uses to connect to the explicit web proxy (0 - 65535).",
					]
					type: "str"
				}
				pac_file_server_status: {
					description: [
						"Enable/disable Proxy Auto-Configuration (PAC) for users of this explicit proxy profile.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				pac_file_url: {
					description: [
						"PAC file access URL.",
					]
					type: "str"
				}
				pac_policy: {
					description: [
						"PAC policies.",
					]
					type: "list"
					suboptions: {
						comments: {
							description: [
								"Optional comments.",
							]
							type: "str"
						}
						dstaddr: {
							description: [
								"Destination address objects.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Address name. Source firewall.address.name firewall.addrgrp.name.",
								]
								required: true
								type:     "str"
							}
						}
						pac_file_data: {
							description: [
								"PAC file contents enclosed in quotes (maximum of 256K bytes).",
							]
							type: "str"
						}
						pac_file_name: {
							description: [
								"Pac file name.",
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
						srcaddr: {
							description: [
								"Source address objects.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Address name. Source firewall.address.name firewall.addrgrp.name firewall.proxy-address.name firewall.proxy-addrgrp.name.",
								]
								required: true
								type:     "str"
							}
						}
						srcaddr6: {
							description: [
								"Source address6 objects.",
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
						status: {
							description: [
								"Enable/disable policy.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				pref_dns_result: {
					description: [
						"Prefer resolving addresses using the configured IPv4 or IPv6 DNS server .",
					]
					type: "str"
					choices: [
						"ipv4",
						"ipv6",
					]
				}
				realm: {
					description: [
						"Authentication realm used to identify the explicit web proxy (maximum of 63 characters).",
					]
					type: "str"
				}
				sec_default_action: {
					description: [
						"Accept or deny explicit web proxy sessions when no web proxy firewall policy exists.",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				socks: {
					description: [
						"Enable/disable the SOCKS proxy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				socks_incoming_port: {
					description: [
						"Accept incoming SOCKS proxy requests on one or more ports (0 - 65535).",
					]
					type: "str"
				}
				ssl_algorithm: {
					description: [
						"Relative strength of encryption algorithms accepted in HTTPS deep scan: high, medium, or low.",
					]
					type: "str"
					choices: [
						"low",
					]
				}
				status: {
					description: [
						"Enable/disable the explicit Web proxy for HTTP and HTTPS session.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				strict_guest: {
					description: [
						"Enable/disable strict guest user checking by the explicit web proxy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				trace_auth_no_rsp: {
					description: [
						"Enable/disable logging timed-out authentication requests.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				unknown_http_version: {
					description: [
						"Either reject unknown HTTP traffic as malformed or handle unknown HTTP traffic as best as the proxy server can.",
					]
					type: "str"
					choices: [
						"reject",
						"best-effort",
					]
				}
			}
		}
	}
}
