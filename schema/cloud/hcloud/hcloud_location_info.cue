package ansible

module: hcloud_location_info: {
	module: "hcloud_location_info"

	short_description: "Gather infos about your Hetzner Cloud locations."

	version_added: "2.8"

	description: [
		"Gather infos about your Hetzner Cloud locations.",
		"This module was called C(hcloud_location_facts) before Ansible 2.9, returning C(ansible_facts) and C(hcloud_location_facts). Note that the M(hcloud_location_info) module no longer returns C(ansible_facts) and the value was renamed to C(hcloud_location_info)!",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the location you want to get.",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the location you want to get.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
