package ansible

module: fortios_wireless_controller_hotspot20_h2qp_osu_provider: {
	module:            "fortios_wireless_controller_hotspot20_h2qp_osu_provider"
	short_description: "Configure online sign up (OSU) provider list in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller_hotspot20 feature and h2qp_osu_provider category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_hotspot20_h2qp_osu_provider: {
			description: [
				"Configure online sign up (OSU) provider list.",
			]
			default: null
			type:    "dict"
			suboptions: {
				friendly_name: {
					description: [
						"OSU provider friendly name.",
					]
					type: "list"
					suboptions: {
						friendly_name: {
							description: [
								"OSU provider friendly name.",
							]
							type: "str"
						}
						index: {
							description: [
								"OSU provider friendly name index.",
							]
							required: true
							type:     "int"
						}
						lang: {
							description: [
								"Language code.",
							]
							type: "str"
						}
					}
				}
				icon: {
					description: [
						"OSU provider icon. Source wireless-controller.hotspot20.icon.name.",
					]
					type: "str"
				}
				name: {
					description: [
						"OSU provider ID.",
					]
					required: true
					type:     "str"
				}
				osu_method: {
					description: [
						"OSU method list.",
					]
					type: "str"
					choices: [
						"oma-dm",
						"soap-xml-spp",
						"reserved",
					]
				}
				osu_nai: {
					description: [
						"OSU NAI.",
					]
					type: "str"
				}
				server_uri: {
					description: [
						"Server URI.",
					]
					type: "str"
				}
				service_description: {
					description: [
						"OSU service name.",
					]
					type: "list"
					suboptions: {
						lang: {
							description: [
								"Language code.",
							]
							type: "str"
						}
						service_description: {
							description: [
								"Service description.",
							]
							type: "str"
						}
						service_id: {
							description: [
								"OSU service ID.",
							]
							type: "int"
						}
					}
				}
			}
		}
	}
}
