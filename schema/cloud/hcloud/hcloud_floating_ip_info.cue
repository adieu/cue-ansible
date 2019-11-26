package ansible

module: hcloud_floating_ip_info: {
	module: "hcloud_floating_ip_info"

	short_description: "Gather infos about the Hetzner Cloud Floating IPs."

	version_added: "2.8"
	description: [
		"Gather facts about your Hetzner Cloud Floating IPs.",
		"This module was called C(hcloud_floating_ip_facts) before Ansible 2.9, returning C(ansible_facts) and C(hcloud_floating_ip_facts). Note that the M(hcloud_floating_ip_info) module no longer returns C(ansible_facts) and the value was renamed to C(hcloud_floating_ip_info)!",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the Floating IP you want to get.",
			]
			type: "int"
		}
		label_selector: {
			description: [
				"The label selector for the Floating IP you want to get.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
