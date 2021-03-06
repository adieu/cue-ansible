package ansible

module: eos_static_route: {
	module:            "eos_static_route"
	version_added:     "2.5"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage static IP routes on Arista EOS network devices"
	description: [
		"This module provides declarative management of static IP routes on Arista EOS network devices.",
	]

	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		address: {
			description: [
				"Network address with prefix of the static route.",
			]
			required: true
			aliases: ["prefix"]
		}
		next_hop: {
			description: [
				"Next hop IP of the static route.",
			]
			required: true
		}
		vrf: {
			description: [
				"VRF for static route.",
			]
			default:       "default"
			version_added: 2.9
		}
		admin_distance: {
			description: [
				"Admin distance of the static route.",
			]
			default: 1
		}
		aggregate: description: "List of static route definitions"
		state: {
			description: [
				"State of the static route configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "eos"
}
