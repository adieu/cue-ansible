package ansible

module: hcloud_ssh_key_info: {
	module:            "hcloud_ssh_key_info"
	short_description: "Gather infos about your Hetzner Cloud ssh_keys."
	version_added:     "2.8"
	description: [
		"Gather facts about your Hetzner Cloud ssh_keys.",
		"This module was called C(hcloud_ssh_key_facts) before Ansible 2.9, returning C(ansible_facts) and C(hcloud_ssh_key_facts). Note that the M(hcloud_ssh_key_info) module no longer returns C(ansible_facts) and the value was renamed to C(hcloud_ssh_key_info)!",
	]

	author: [
		"Christopher Schmitt (@cschmitt-hcloud)",
	]
	options: {
		id: {
			description: [
				"The ID of the ssh key you want to get.",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the ssh key you want to get.",
			]
			type: "str"
		}
		fingerprint: {
			description: [
				"The fingerprint of the ssh key you want to get.",
			]
			type: "str"
		}
		label_selector: {
			description: [
				"The label selector for the ssh key you want to get.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
