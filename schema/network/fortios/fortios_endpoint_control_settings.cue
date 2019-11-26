package ansible

module: fortios_endpoint_control_settings: {
	module:            "fortios_endpoint_control_settings"
	short_description: "Configure endpoint control settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify endpoint_control feature and settings category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		endpoint_control_settings: {
			description: [
				"Configure endpoint control settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				download_custom_link: {
					description: [
						"Customized URL for downloading FortiClient.",
					]
					type: "str"
				}
				download_location: {
					description: [
						"FortiClient download location (FortiGuard or custom).",
					]
					type: "str"
					choices: [
						"fortiguard",
						"custom",
					]
				}
				forticlient_avdb_update_interval: {
					description: [
						"Period of time between FortiClient AntiVirus database updates (0 - 24 hours).",
					]
					type: "int"
				}
				forticlient_dereg_unsupported_client: {
					description: [
						"Enable/disable deregistering unsupported FortiClient endpoints.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_ems_rest_api_call_timeout: {
					description: [
						"FortiClient EMS call timeout in milliseconds (500 - 30000 milliseconds).",
					]
					type: "int"
				}
				forticlient_keepalive_interval: {
					description: [
						"Interval between two KeepAlive messages from FortiClient (20 - 300 sec).",
					]
					type: "int"
				}
				forticlient_offline_grace: {
					description: [
						"Enable/disable grace period for offline registered clients.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_offline_grace_interval: {
					description: [
						"Grace period for offline registered FortiClient (60 - 600 sec).",
					]
					type: "int"
				}
				forticlient_reg_key: {
					description: [
						"FortiClient registration key.",
					]
					type: "str"
				}
				forticlient_reg_key_enforce: {
					description: [
						"Enable/disable requiring or enforcing FortiClient registration keys.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_reg_timeout: {
					description: [
						"FortiClient registration license timeout (days, min = 1, max = 180, 0 means unlimited).",
					]
					type: "int"
				}
				forticlient_sys_update_interval: {
					description: [
						"Interval between two system update messages from FortiClient (30 - 1440 min).",
					]
					type: "int"
				}
				forticlient_user_avatar: {
					description: [
						"Enable/disable uploading FortiClient user avatars.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_warning_interval: {
					description: [
						"Period of time between FortiClient portal warnings (0 - 24 hours).",
					]
					type: "int"
				}
			}
		}
	}
}
