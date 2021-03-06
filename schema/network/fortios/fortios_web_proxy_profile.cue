package ansible

module: fortios_web_proxy_profile: {
	module:            "fortios_web_proxy_profile"
	short_description: "Configure web proxy profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify web_proxy feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		web_proxy_profile: {
			description: [
				"Configure web proxy profiles.",
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
				header_client_ip: {
					description: [
						"Action to take on the HTTP client-IP header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_front_end_https: {
					description: [
						"Action to take on the HTTP front-end-HTTPS header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_via_request: {
					description: [
						"Action to take on the HTTP via header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_via_response: {
					description: [
						"Action to take on the HTTP via header in forwarded responses: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_x_authenticated_groups: {
					description: [
						"Action to take on the HTTP x-authenticated-groups header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_x_authenticated_user: {
					description: [
						"Action to take on the HTTP x-authenticated-user header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				header_x_forwarded_for: {
					description: [
						"Action to take on the HTTP x-forwarded-for header in forwarded requests: forwards (pass), adds, or removes the HTTP header.",
					]
					type: "str"
					choices: [
						"pass",
						"add",
						"remove",
					]
				}
				headers: {
					description: [
						"Configure HTTP forwarded requests headers.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Action when HTTP the header forwarded.",
							]
							type: "str"
							choices: [
								"add-to-request",
								"add-to-response",
								"remove-from-request",
								"remove-from-response",
							]
						}
						content: {
							description: [
								"HTTP header's content.",
							]
							type: "str"
						}
						id: {
							description: [
								"HTTP forwarded header id.",
							]
							required: true
							type:     "int"
						}
						name: {
							description: [
								"HTTP forwarded header name.",
							]
							type: "str"
						}
					}
				}
				log_header_change: {
					description: [
						"Enable/disable logging HTTP header changes.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				strip_encoding: {
					description: [
						"Enable/disable stripping unsupported encoding from the request header.",
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
