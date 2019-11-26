package ansible

module: hcloud_server_type_info: {
	module: "hcloud_server_type_info"

	short_description: "Gather infos about the Hetzner Cloud server types."

	version_added: "2.8"

	description: [
		"Gather infos about your Hetzner Cloud server types.",
		"This module was called C(hcloud_server_type_facts) before Ansible 2.9, returning C(ansible_facts) and C(hcloud_server_type_facts). Note that the M(hcloud_server_type_info) module no longer returns C(ansible_facts) and the value was renamed to C(hcloud_server_type_info)!",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the server type you want to get.",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the server type you want to get.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
