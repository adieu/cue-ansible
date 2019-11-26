package ansible

module: fortios_wanopt_remote_storage: {
	module:            "fortios_wanopt_remote_storage"
	short_description: "Configure a remote cache device as Web cache storage in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wanopt feature and remote_storage category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wanopt_remote_storage: {
			description: [
				"Configure a remote cache device as Web cache storage.",
			]
			default: null
			type:    "dict"
			suboptions: {
				local_cache_id: {
					description: [
						"ID that this device uses to connect to the remote device.",
					]
					type: "str"
				}
				remote_cache_id: {
					description: [
						"ID of the remote device to which the device connects.",
					]
					type: "str"
				}
				remote_cache_ip: {
					description: [
						"IP address of the remote device to which the device connects.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable using remote device as Web cache storage.",
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
