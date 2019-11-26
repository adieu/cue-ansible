package ansible

module: digital_ocean_floating_ip: {
	module:            "digital_ocean_floating_ip"
	short_description: "Manage DigitalOcean Floating IPs"
	description: [
		"Create/delete/assign a floating IP.",
	]
	version_added: "2.4"
	author:        "Patrick Marques (@pmarques)"
	options: {
		state: {
			description: [
				"Indicate desired state of the target.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		ip: description: [
			"Public IP address of the Floating IP. Used to remove an IP",
		]
		region: description: [
			"The region that the Floating IP is reserved to.",
		]
		droplet_id: description: [
			"The Droplet that the Floating IP has been assigned to.",
		]
		oauth_token: {
			description: [
				"DigitalOcean OAuth token.",
			]
			required: true
		}
	}
	notes: [
		"Version 2 of DigitalOcean API is used.",
	]
	requirements: ["python >= 2.6"]
}
