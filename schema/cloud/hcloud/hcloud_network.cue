package ansible

module: hcloud_network: {
	module: "hcloud_network"

	short_description: "Create and manage cloud Networks on the Hetzner Cloud."

	version_added: "2.9"

	description: [
		"Create, update and manage cloud Networks on the Hetzner Cloud.",
		"You need at least hcloud-python 1.3.0.",
	]

	author: [
		"Lukas Kaemmerling (@lkaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the Hetzner Cloud Networks to manage.",
				"Only required if no Network I(name) is given.",
			]
			type: "int"
		}
		name: {
			description: [
				"The Name of the Hetzner Cloud Network to manage.",
				"Only required if no Network I(id) is given or a Network does not exists.",
			]
			type: "str"
		}
		ip_range: {
			description: [
				"IP range of the Network.",
				"Required if Network does not exists.",
			]
			type: "str"
		}
		labels: {
			description: [
				"User-defined labels (key-value pairs).",
			]
			type: "dict"
		}
		delete_protection: {
			description: [
				"Protect the Network for deletion.",
			]
			type:          "bool"
			version_added: "2.10"
		}
		state: {
			description: [
				"State of the Network.",
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
