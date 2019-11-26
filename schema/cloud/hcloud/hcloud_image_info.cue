package ansible

module: hcloud_image_info: {
	module: "hcloud_image_info"

	short_description: "Gather infos about your Hetzner Cloud images."

	version_added: "2.8"

	description: [
		"Gather infos about your Hetzner Cloud images.",
		"This module was called C(hcloud_location_facts) before Ansible 2.9, returning C(ansible_facts) and C(hcloud_location_facts). Note that the M(hcloud_image_info) module no longer returns C(ansible_facts) and the value was renamed to C(hcloud_image_info)!",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the image you want to get.",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the image you want to get.",
			]
			type: "str"
		}
		label_selector: {
			description: [
				"The label selector for the images you want to get.",
			]
			type: "str"
		}
		type: {
			description: [
				"The label selector for the images you want to get.",
			]
			default: "system"
			choices: ["system", "snapshot", "backup"]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
