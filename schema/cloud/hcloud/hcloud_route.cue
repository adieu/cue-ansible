package ansible

module: hcloud_route: {
	module: "hcloud_route"

	short_description: "Create and delete cloud routes on the Hetzner Cloud."

	version_added: "2.9"

	description: [
		"Create, update and delete cloud routes on the Hetzner Cloud.",
	]

	author: [
		"Lukas Kaemmerling (@lkaemmerling)",
	]

	options: {
		network: {
			description: [
				"The name of the Hetzner Cloud Network.",
			]
			type:     "str"
			required: true
		}
		destination: {
			description: [
				"Destination network or host of this route.",
			]
			type:     "str"
			required: true
		}
		gateway: {
			description: [
				"Gateway for the route.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"State of the route.",
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
