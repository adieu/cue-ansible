package ansible

module: fortios_wireless_controller_wtp_group: {
	module:            "fortios_wireless_controller_wtp_group"
	short_description: "Configure WTP groups in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and wtp_group category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_wtp_group: {
			description: [
				"Configure WTP groups.",
			]
			default: null
			type:    "dict"
			suboptions: {
				name: {
					description: [
						"WTP group name.",
					]
					required: true
					type:     "str"
				}
				platform_type: {
					description: [
						"FortiAP models to define the WTP group platform type.",
					]
					type: "str"
					choices: [
						"AP-11N",
						"220B",
						"210B",
						"222B",
						"112B",
						"320B",
						"11C",
						"14C",
						"223B",
						"28C",
						"320C",
						"221C",
						"25D",
						"222C",
						"224D",
						"214B",
						"21D",
						"24D",
						"112D",
						"223C",
						"321C",
						"C220C",
						"C225C",
						"C23JD",
						"C24JE",
						"S321C",
						"S322C",
						"S323C",
						"S311C",
						"S313C",
						"S321CR",
						"S322CR",
						"S323CR",
						"S421E",
						"S422E",
						"S423E",
						"421E",
						"423E",
						"221E",
						"222E",
						"223E",
						"224E",
						"S221E",
						"S223E",
						"U421E",
						"U422EV",
						"U423E",
						"U221EV",
						"U223EV",
						"U24JEV",
						"U321EV",
						"U323EV",
					]
				}
				wtps: {
					description: [
						"WTP list.",
					]
					type: "list"
					suboptions: wtp_id: {
						description: [
							"WTP ID. Source wireless-controller.wtp.wtp-id.",
						]
						type: "str"
					}
				}
			}
		}
	}
}
