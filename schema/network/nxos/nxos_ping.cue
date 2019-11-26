package ansible

module: nxos_ping: {
	module:                         "nxos_ping"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Tests reachability using ping from Nexus switch."
	description: [
		"Tests reachability using ping from switch to a remote destination.",
		"For a general purpose network module, see the M(net_ping) module.",
		"For Windows targets, use the M(win_ping) module instead.",
		"For targets running Python, use the M(ping) module instead.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	options: {
		dest: {
			description: [
				"IP address or hostname (resolvable by switch) of remote node.",
			]
			required: true
		}
		count: {
			description: [
				"Number of packets to send.",
			]
			default: 5
		}
		source: description: [
			"Source IP Address or hostname (resolvable by switch)",
		]
		vrf: description: [
			"Outgoing VRF.",
		]
		state: {
			description: [
				"Determines if the expected result is success or fail.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
	}
	notes: [
		"For a general purpose network module, see the M(net_ping) module.",
		"For Windows targets, use the M(win_ping) module instead.",
		"For targets running Python, use the M(ping) module instead.",
	]
}
