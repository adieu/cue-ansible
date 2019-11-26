package ansible

module: hcloud_network_info: {
	module: "hcloud_network_info"

	short_description: "Gather info about your Hetzner Cloud networks."

	version_added: "2.9"

	description: [
		"Gather info about your Hetzner Cloud networks.",
	]

	author: [
		"Christopher Schmitt (@cschmitt-hcloud)",
	]

	options: {
		id: {
			description: [
				"The ID of the network you want to get.",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the network you want to get.",
			]
			type: "str"
		}
		label_selector: {
			description: [
				"The label selector for the network you want to get.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
