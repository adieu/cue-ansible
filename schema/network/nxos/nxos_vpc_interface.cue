package ansible

module: nxos_vpc_interface: {
	module:                         "nxos_vpc_interface"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages interface VPC configuration"
	description: [
		"Manages interface VPC configuration",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Either vpc or peer_link param is required, but not both.",
		"C(state=absent) removes whatever VPC config is on a port-channel if one exists.",
		"Re-assigning a vpc or peerlink from one portchannel to another is not supported.  The module will force the user to unconfigure an existing vpc/pl before configuring the same value on a new portchannel",
	]

	options: {
		portchannel: {
			description: [
				"Group number of the portchannel that will be configured.",
			]
			required: true
		}
		vpc: description: [
			"VPC group/id that will be configured on associated portchannel.",
		]
		peer_link: {
			description: [
				"Set to true/false for peer link config on associated portchannel.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Manages desired state of the resource.",
			]
			required: true
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
