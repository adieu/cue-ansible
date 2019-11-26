package ansible

module: fortios_webfilter: {
	module:            "fortios_webfilter"
	short_description: "Configure webfilter capabilities of FortiGate and FortiOS."
	description: [
		"This module is able to configure a FortiGate or FortiOS by allowing the user to configure webfilter feature. For now it is able to handle url and content filtering capabilities. The module uses FortiGate REST API internally to configure the device.",
	]

	version_added: "2.6"
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
				"FortiOS or FortiGate ip address.",
			]
			required: true
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			required: true
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			default: "root"
		}
		webfilter_url: {
			description: [
				"Container for a group of url entries that the FortiGate must act upon",
			]

			suboptions: {
				id: {
					description: [
						"Id of URL filter list.",
					]
					required: true
				}
				name: {
					description: [
						"Name of URL filter list.",
					]
					required: true
				}
				comment: description: [
					"Optional comments.",
				]
				"one-arm-ips-urlfilter": {
					description: [
						"Enable/disable DNS resolver for one-arm IPS URL filter operation.",
					]
					choices: [
						"enable",
						"disable",
					]
					default: "disable"
				}
				"ip-addr-block": {
					description: [
						"Enable/disable blocking URLs when the hostname appears as an IP address.",
					]
					choices: [
						"enable",
						"disable",
					]
					default: "disable"
				}
				entries: {
					description: [
						"URL filter entries.",
					]
					default: []
					suboptions: {
						id: {
							description: [
								"Id of URL.",
							]
							required: true
						}
						url: {
							description: [
								"URL to be filtered.",
							]
							required: true
						}
						type: {
							description: [
								"Filter type (simple, regex, or wildcard).",
							]
							required: true
							choices: [
								"simple",
								"regex",
								"wildcard",
							]
						}
						action: {
							description: [
								"Action to take for URL filter matches.",
							]
							required: true
							choices: [
								"exempt",
								"block",
								"allow",
								"monitor",
							]
						}
						status: {
							description: [
								"Enable/disable this URL filter.",
							]
							required: true
							choices: [
								"enable",
								"disable",
							]
						}
						exempt: {
							description: [
								"If action is set to exempt, select the security profile operations that exempt URLs skip. Separate multiple options with a space.",
							]

							required: true
							choices: [
								"av",
								"web-content",
								"activex-java-cookie",
								"dlp",
								"fortiguard",
								"range-block",
								"pass",
								"all",
							]
						}
						"web-proxy-profile": {
							description: [
								"Web proxy profile.",
							]
							required: true
						}
						"referrer-host": {
							description: [
								"Referrer host name.",
							]
							required: true
						}
					}
				}
				state: {
					description: [
						"Configures the intended state of this object on the FortiGate. When this value is set to I(present), the object is configured on the device and when this value is set to I(absent) the object is removed from the device.",
					]

					required: true
					choices: [
						"absent",
						"present",
					]
				}
			}
		}
		webfilter_content: {
			description: [
				"Container for a group of content-filtering entries that the FortiGate must act upon",
			]

			suboptions: {
				id: {
					description: [
						"Id of content-filter list.",
					]
					required: true
				}
				name: description: [
					"Name of content-filter list.",
				]
				comment: description: [
					"Optional comments.",
				]
				entries: {
					description: [
						"Content filter entries.",
					]
					default: []
					suboptions: {
						name: {
							description: [
								"Banned word.",
							]
							required: true
						}
						"pattern-type": {
							description: [
								"Banned word pattern type. It can be a wildcard pattern or Perl regular expression.",
							]
							required: true
							choices: [
								"wildcard",
								"regexp",
							]
						}
						status: {
							description: [
								"Enable/disable banned word.",
							]
							required: true
							choices: [
								"enable",
								"disable",
							]
						}
						lang: {
							description: [
								"Language of banned word.",
							]
							required: true
							choices: [
								"western",
								"simch",
								"trach",
								"japanese",
								"korean",
								"french",
								"thai",
								"spanish",
								"cyrillic",
							]
						}
						score: {
							description: [
								"Score, to be applied every time the word appears on a web page.",
							]
							required: true
						}
						action: {
							description: [
								"Block or exempt word when a match is found.",
							]
							required: true
							choices: [
								"block",
								"exempt",
							]
						}
					}
				}
				state: {
					description: [
						"Configures the intended state of this object on the FortiGate. When this value is set to I(present), the object is configured on the device and when this value is set to I(absent) the object is removed from the device.",
					]

					required: true
					choices: [
						"absent",
						"present",
					]
				}
			}
		}
	}
}
