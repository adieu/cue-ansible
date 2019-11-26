package ansible

module: fortios_endpoint_control_forticlient_ems: {
	module:            "fortios_endpoint_control_forticlient_ems"
	short_description: "Configure FortiClient Enterprise Management Server (EMS) entries in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify endpoint_control feature and forticlient_ems category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		endpoint_control_forticlient_ems: {
			description: [
				"Configure FortiClient Enterprise Management Server (EMS) entries.",
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
				address: {
					description: [
						"Firewall address name. Source firewall.address.name.",
					]
					type: "str"
				}
				admin_password: {
					description: [
						"FortiClient EMS admin password.",
					]
					type: "str"
				}
				admin_type: {
					description: [
						"FortiClient EMS admin type.",
					]
					type: "str"
					choices: [
						"Windows",
						"LDAP",
					]
				}
				admin_username: {
					description: [
						"FortiClient EMS admin username.",
					]
					type: "str"
				}
				https_port: {
					description: [
						"FortiClient EMS HTTPS access port number. (1 - 65535).",
					]
					type: "int"
				}
				listen_port: {
					description: [
						"FortiClient EMS telemetry listen port number. (1 - 65535).",
					]
					type: "int"
				}
				name: {
					description: [
						"FortiClient Enterprise Management Server (EMS) name.",
					]
					required: true
					type:     "str"
				}
				rest_api_auth: {
					description: [
						"FortiClient EMS REST API authentication.",
					]
					type: "str"
					choices: [
						"disable",
						"userpass",
					]
				}
				serial_number: {
					description: [
						"FortiClient EMS Serial Number.",
					]
					type: "str"
				}
				upload_port: {
					description: [
						"FortiClient EMS telemetry upload port number. (1 - 65535).",
					]
					type: "int"
				}
			}
		}
	}
}
