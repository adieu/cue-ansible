package ansible

module: ovirt_external_provider_info: {
	module:            "ovirt_external_provider_info"
	short_description: "Retrieve information about one or more oVirt/RHV external providers"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV external providers.",
		"This module was called C(ovirt_external_provider_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_external_provider_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_external_providers), which contains a list of external_providers. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		type: {
			description: [
				"Type of the external provider.",
			]
			choices: ["os_image", "os_network", "os_volume", "foreman"]
			required: true
		}
		name: description: [
			"Name of the external provider, can be used as glob expression.",
		]
	}
	extends_documentation_fragment: "ovirt_info"
}
