package ansible

module: fortios_firewall_wildcard_fqdn_group: {
	module:            "fortios_firewall_wildcard_fqdn_group"
	short_description: "Config global Wildcard FQDN address groups in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall_wildcard_fqdn feature and group category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_wildcard_fqdn_group: {
			description: [
				"Config global Wildcard FQDN address groups.",
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
				color: {
					description: [
						"GUI icon color.",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				member: {
					description: [
						"Address group members.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.wildcard-fqdn.custom.name.",
						]
						required: true
						type:     "str"
					}
				}
				name: {
					description: [
						"Address group name.",
					]
					required: true
					type:     "str"
				}
				uuid: {
					description: [
						"Universally Unique Identifier (UUID; automatically assigned but can be manually reset).",
					]
					type: "str"
				}
				visibility: {
					description: [
						"Enable/disable address visibility.",
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
