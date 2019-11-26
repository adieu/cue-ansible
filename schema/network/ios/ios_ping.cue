package ansible

module: ios_ping: {
	module:            "ios_ping"
	short_description: "Tests reachability using ping from Cisco IOS network devices"
	description: [
		"Tests reachability using ping from switch to a remote destination.",
		"For a general purpose network module, see the M(net_ping) module.",
		"For Windows targets, use the M(win_ping) module instead.",
		"For targets running Python, use the M(ping) module instead.",
	]
	author: [
		"Jacob McGill (@jmcgill298)",
	]
	version_added:                  "2.4"
	extends_documentation_fragment: "ios"
	options: {
		count: {
			description: [
				"Number of packets to send.",
			]
			default: 5
		}
		dest: {
			description: [
				"The IP Address or hostname (resolvable by switch) of the remote node.",
			]
			required: true
		}
		source: description: [
			"The source IP Address.",
		]
		state: {
			description: [
				"Determines if the expected result is success or fail.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		vrf: {
			description: [
				"The VRF to use for forwarding.",
			]
			default: "default"
		}
	}
	notes: [
		"For a general purpose network module, see the M(net_ping) module.",
		"For Windows targets, use the M(win_ping) module instead.",
		"For targets running Python, use the M(ping) module instead.",
	]
}
