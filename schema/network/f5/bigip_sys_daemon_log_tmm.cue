package ansible

module: bigip_sys_daemon_log_tmm: {
	module:            "bigip_sys_daemon_log_tmm"
	short_description: "Manage BIG-IP tmm daemon log settings"
	description: [
		"Manage BIG-IP tmm log settings.",
	]
	version_added: 2.8
	options: {
		arp_log_level: {
			description: [
				"Specifies the lowest level of ARP messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		http_compression_log_level: {
			description: [
				"Specifies the lowest level of HTTP compression messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		http_log_level: {
			description: [
				"Specifies the lowest level of HTTP messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		ip_log_level: {
			description: [
				"Specifies the lowest level of IP address messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"informational",
				"notice",
				"warning",
			]
		}
		irule_log_level: {
			description: [
				"Specifies the lowest level of iRule messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		layer4_log_level: {
			description: [
				"Specifies the lowest level of Layer 4 messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"informational",
				"notice",
			]
		}
		net_log_level: {
			description: [
				"Specifies the lowest level of network messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"critical",
				"debug",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		os_log_level: {
			description: [
				"Specifies the lowest level of operating system messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"alert",
				"critical",
				"debug",
				"emergency",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		pva_log_level: {
			description: [
				"Specifies the lowest level of PVA messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"debug",
				"informational",
				"notice",
			]
		}
		ssl_log_level: {
			description: [
				"Specifies the lowest level of SSL messages from the tmm daemon to include in the system log.",
			]

			type: "str"
			choices: [
				"alert",
				"critical",
				"debug",
				"emergency",
				"error",
				"informational",
				"notice",
				"warning",
			]
		}
		state: {
			description: [
				"The state of the log level on the system. When C(present), guarantees that an existing log level is set to C(value).",
			]

			type: "str"
			choices: [
				"present",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
