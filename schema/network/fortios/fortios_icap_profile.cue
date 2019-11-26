package ansible

module: fortios_icap_profile: {
	module:            "fortios_icap_profile"
	short_description: "Configure ICAP profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify icap feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		icap_profile: {
			description: [
				"Configure ICAP profiles.",
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
				methods: {
					description: [
						"The allowed HTTP methods that will be sent to ICAP server for further processing.",
					]
					type: "str"
					choices: [
						"delete",
						"get",
						"head",
						"options",
						"post",
						"put",
						"trace",
						"other",
					]
				}
				name: {
					description: [
						"ICAP profile name.",
					]
					required: true
					type:     "str"
				}
				replacemsg_group: {
					description: [
						"Replacement message group. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				request: {
					description: [
						"Enable/disable whether an HTTP request is passed to an ICAP server.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				request_failure: {
					description: [
						"Action to take if the ICAP server cannot be contacted when processing an HTTP request.",
					]
					type: "str"
					choices: [
						"error",
						"bypass",
					]
				}
				request_path: {
					description: [
						"Path component of the ICAP URI that identifies the HTTP request processing service.",
					]
					type: "str"
				}
				request_server: {
					description: [
						"ICAP server to use for an HTTP request. Source icap.server.name.",
					]
					type: "str"
				}
				response: {
					description: [
						"Enable/disable whether an HTTP response is passed to an ICAP server.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				response_failure: {
					description: [
						"Action to take if the ICAP server cannot be contacted when processing an HTTP response.",
					]
					type: "str"
					choices: [
						"error",
						"bypass",
					]
				}
				response_path: {
					description: [
						"Path component of the ICAP URI that identifies the HTTP response processing service.",
					]
					type: "str"
				}
				response_server: {
					description: [
						"ICAP server to use for an HTTP response. Source icap.server.name.",
					]
					type: "str"
				}
				streaming_content_bypass: {
					description: [
						"Enable/disable bypassing of ICAP server for streaming content.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
			}
		}
	}
}
