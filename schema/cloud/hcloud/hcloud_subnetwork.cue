package ansible

module: hcloud_subnetwork: {
	module: "hcloud_subnetwork"

	short_description: "Manage cloud subnetworks on the Hetzner Cloud."

	version_added: "2.9"

	description: [
		"Create, update and delete cloud subnetworks on the Hetzner Cloud.",
	]

	author: [
		"Lukas Kaemmerling (@lkaemmerling)",
	]

	options: {
		network: {
			description: [
				"The ID or Name  of the Hetzner Cloud Networks.",
			]

			type:     "str"
			required: true
		}
		ip_range: {
			description: [
				"IP range of the subnetwork.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"Type of subnetwork.",
			]
			type:     "str"
			required: true
		}
		network_zone: {
			description: [
				"Name of network zone.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"State of the subnetwork.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
	}

	requirements: [
		"hcloud-python >= 1.3.0",
	]

	extends_documentation_fragment: "hcloud"
}
