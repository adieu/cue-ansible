package ansible

module: fortios_user_radius: {
	module:            "fortios_user_radius"
	short_description: "Configure RADIUS server entries in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and radius category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_radius: {
			description: [
				"Configure RADIUS server entries.",
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
				accounting_server: {
					description: [
						"Additional accounting servers.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"ID (0 - 4294967295).",
							]
							required: true
							type:     "int"
						}
						port: {
							description: [
								"RADIUS accounting port number.",
							]
							type: "int"
						}
						secret: {
							description: [
								"Secret key.",
							]
							type: "str"
						}
						server: {
							description: [
								"name_str or ip_str Server CN domain name or IP.",
							]
							type: "str"
						}
						source_ip: {
							description: [
								"Source IP address for communications to the RADIUS server.",
							]
							type: "str"
						}
						status: {
							description: [
								"Status.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				acct_all_servers: {
					description: [
						"Enable/disable sending of accounting messages to all configured servers.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				acct_interim_interval: {
					description: [
						"Time in seconds between each accounting interim update message.",
					]
					type: "int"
				}
				all_usergroup: {
					description: [
						"Enable/disable automatically including this RADIUS server in all user groups.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				auth_type: {
					description: [
						"Authentication methods/protocols permitted for this RADIUS server.",
					]
					type: "str"
					choices: [
						"auto",
						"ms_chap_v2",
						"ms_chap",
						"chap",
						"pap",
					]
				}
				class: {
					description: [
						"Class attribute name(s).",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Class name.",
						]
						required: true
						type:     "str"
					}
				}
				h3c_compatibility: {
					description: [
						"Enable/disable compatibility with the H3C, a mechanism that performs security checking for authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"RADIUS server entry name.",
					]
					required: true
					type:     "str"
				}
				nas_ip: {
					description: [
						"IP address used to communicate with the RADIUS server and used as NAS-IP-Address and Called-Station-ID attributes.",
					]
					type: "str"
				}
				password_encoding: {
					description: [
						"Password encoding.",
					]
					type: "str"
					choices: [
						"auto",
						"ISO-8859-1",
					]
				}
				password_renewal: {
					description: [
						"Enable/disable password renewal.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				radius_coa: {
					description: [
						"Enable to allow a mechanism to change the attributes of an authentication, authorization, and accounting session after it is authenticated.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				radius_port: {
					description: [
						"RADIUS service port number.",
					]
					type: "int"
				}
				rsso: {
					description: [
						"Enable/disable RADIUS based single sign on feature.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rsso_context_timeout: {
					description: [
						"Time in seconds before the logged out user is removed from the \"user context list\" of logged on users.",
					]
					type: "int"
				}
				rsso_endpoint_attribute: {
					description: [
						"RADIUS attributes used to extract the user end point identifier from the RADIUS Start record.",
					]
					type: "str"
					choices: [
						"User-Name",
						"NAS-IP-Address",
						"Framed-IP-Address",
						"Framed-IP-Netmask",
						"Filter-Id",
						"Login-IP-Host",
						"Reply-Message",
						"Callback-Number",
						"Callback-Id",
						"Framed-Route",
						"Framed-IPX-Network",
						"Class",
						"Called-Station-Id",
						"Calling-Station-Id",
						"NAS-Identifier",
						"Proxy-State",
						"Login-LAT-Service",
						"Login-LAT-Node",
						"Login-LAT-Group",
						"Framed-AppleTalk-Zone",
						"Acct-Session-Id",
						"Acct-Multi-Session-Id",
					]
				}
				rsso_endpoint_block_attribute: {
					description: [
						"RADIUS attributes used to block a user.",
					]
					type: "str"
					choices: [
						"User-Name",
						"NAS-IP-Address",
						"Framed-IP-Address",
						"Framed-IP-Netmask",
						"Filter-Id",
						"Login-IP-Host",
						"Reply-Message",
						"Callback-Number",
						"Callback-Id",
						"Framed-Route",
						"Framed-IPX-Network",
						"Class",
						"Called-Station-Id",
						"Calling-Station-Id",
						"NAS-Identifier",
						"Proxy-State",
						"Login-LAT-Service",
						"Login-LAT-Node",
						"Login-LAT-Group",
						"Framed-AppleTalk-Zone",
						"Acct-Session-Id",
						"Acct-Multi-Session-Id",
					]
				}
				rsso_ep_one_ip_only: {
					description: [
						"Enable/disable the replacement of old IP addresses with new ones for the same endpoint on RADIUS accounting Start messages.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rsso_flush_ip_session: {
					description: [
						"Enable/disable flushing user IP sessions on RADIUS accounting Stop messages.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rsso_log_flags: {
					description: [
						"Events to log.",
					]
					type: "str"
					choices: [
						"protocol-error",
						"profile-missing",
						"accounting-stop-missed",
						"accounting-event",
						"endpoint-block",
						"radiusd-other",
						"none",
					]
				}
				rsso_log_period: {
					description: [
						"Time interval in seconds that group event log messages will be generated for dynamic profile events.",
					]
					type: "int"
				}
				rsso_radius_response: {
					description: [
						"Enable/disable sending RADIUS response packets after receiving Start and Stop records.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				rsso_radius_server_port: {
					description: [
						"UDP port to listen on for RADIUS Start and Stop records.",
					]
					type: "int"
				}
				rsso_secret: {
					description: [
						"RADIUS secret used by the RADIUS accounting server.",
					]
					type: "str"
				}
				rsso_validate_request_secret: {
					description: [
						"Enable/disable validating the RADIUS request shared secret in the Start or End record.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				secondary_secret: {
					description: [
						"Secret key to access the secondary server.",
					]
					type: "str"
				}
				secondary_server: {
					description: [
						"name_str or ip_str secondary RADIUS CN domain name or IP.",
					]
					type: "str"
				}
				secret: {
					description: [
						"Pre-shared secret key used to access the primary RADIUS server.",
					]
					type: "str"
				}
				server: {
					description: [
						"Primary RADIUS server CN domain name or IP address.",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"Source IP address for communications to the RADIUS server.",
					]
					type: "str"
				}
				sso_attribute: {
					description: [
						"RADIUS attribute that contains the profile group name to be extracted from the RADIUS Start record.",
					]
					type: "str"
					choices: [
						"User-Name",
						"NAS-IP-Address",
						"Framed-IP-Address",
						"Framed-IP-Netmask",
						"Filter-Id",
						"Login-IP-Host",
						"Reply-Message",
						"Callback-Number",
						"Callback-Id",
						"Framed-Route",
						"Framed-IPX-Network",
						"Class",
						"Called-Station-Id",
						"Calling-Station-Id",
						"NAS-Identifier",
						"Proxy-State",
						"Login-LAT-Service",
						"Login-LAT-Node",
						"Login-LAT-Group",
						"Framed-AppleTalk-Zone",
						"Acct-Session-Id",
						"Acct-Multi-Session-Id",
					]
				}
				sso_attribute_key: {
					description: [
						"Key prefix for SSO group value in the SSO attribute.",
					]
					type: "str"
				}
				sso_attribute_value_override: {
					description: [
						"Enable/disable override old attribute value with new value for the same endpoint.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tertiary_secret: {
					description: [
						"Secret key to access the tertiary server.",
					]
					type: "str"
				}
				tertiary_server: {
					description: [
						"name_str or ip_str tertiary RADIUS CN domain name or IP.",
					]
					type: "str"
				}
				timeout: {
					description: [
						"Time in seconds between re-sending authentication requests.",
					]
					type: "int"
				}
				use_management_vdom: {
					description: [
						"Enable/disable using management VDOM to send requests.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				username_case_sensitive: {
					description: [
						"Enable/disable case sensitive user names.",
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
