package ansible

module: hcloud_floating_ip: {
	module: "hcloud_floating_ip"

	short_description: "Create and manage cloud Floating IPs on the Hetzner Cloud."

	version_added: "2.10"

	description: [
		"Create, update and manage cloud Floating IPs on the Hetzner Cloud.",
	]

	author: [
		"Lukas Kaemmerling (@lkaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the Hetzner Cloud Floating IPs to manage.",
				"Only required if no Floating IP I(name) is given.",
			]
			type: "int"
		}
		name: {
			description: [
				"The Name of the Hetzner Cloud Floating IPs to manage.",
				"Only required if no Floating IP I(id) is given or a Floating IP does not exists.",
			]
			type: "str"
		}
		description: {
			description: [
				"The Description of the Hetzner Cloud Floating IPs.",
			]
			type: "str"
		}
		home_location: {
			description: [
				"Home Location of the Hetzner Cloud Floating IP.",
				"Required if no I(server) is given and Floating IP does not exists.",
			]
			type: "str"
		}
		server: {
			description: [
				"Server Name the Floating IP should be assigned to.",
				"Required if no I(home_location) is given and Floating IP does not exists.",
			]
			type: "str"
		}
		type: {
			description: [
				"Type of the Floating IP.",
				"Required if Floating IP does not exists",
			]
			choices: ["ipv4", "ipv6"]
			type: "str"
		}
		force: {
			description: [
				"Force the assignment or deletion of the Floating IP.",
			]
			type: "bool"
		}
		delete_protection: {
			description: [
				"Protect the Floating IP for deletion.",
			]
			type:          "bool"
			version_added: "2.10"
		}
		labels: {
			description: [
				"User-defined labels (key-value pairs).",
			]
			type: "dict"
		}
		state: {
			description: [
				"State of the Floating IP.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
	}

	requirements: [
		"hcloud-python >= 1.6.0",
	]

	extends_documentation_fragment: "hcloud"
}
