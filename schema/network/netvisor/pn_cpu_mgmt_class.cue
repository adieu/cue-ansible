package ansible

module: pn_cpu_mgmt_class: {
	module:            "pn_cpu_mgmt_class"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     2.8
	short_description: "CLI command to modify cpu-mgmt-class"
	description: [
		"This module can we used to update mgmt port ingress policers.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			type:     "str"
			required: false
		}
		state: {
			description: [
				"State the action to perform. Use C(update) to modify cpu-mgmt-class.",
			]
			type:     "str"
			required: true
			choices: ["update"]
		}
		pn_burst_size: {
			description: [
				"ingress traffic burst size (bytes) or default.",
			]
			required: false
			type:     "str"
		}
		pn_name: {
			description: [
				"mgmt port ingress traffic class.",
			]
			type:     "str"
			required: false
			choices: [
				"arp",
				"icmp",
				"ssh",
				"snmp",
				"fabric",
				"bcast",
				"nfs",
				"web",
				"web-ssl",
				"net-api",
			]
		}
		pn_rate_limit: {
			description: [
				"ingress rate limit on mgmt port(bps) or unlimited.",
			]
			type:     "str"
			required: false
		}
	}
}
