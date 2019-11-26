package ansible

module: ovirt_external_provider: {
	module:            "ovirt_external_provider"
	short_description: "Module to manage external providers in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage external providers in oVirt/RHV",
	]
	options: {
		name: description: [
			"Name of the external provider to manage.",
		]
		state: {
			description: [
				"Should the external be present or absent",
				"When you are using absent for I(os_volume), you need to make sure that SD is not attached to the data center!",
			]

			choices: ["present", "absent"]
			default: "present"
		}
		description: description: [
			"Description of the external provider.",
		]
		type: {
			description: [
				"Type of the external provider.",
			]
			choices: ["os_image", "network", "os_volume", "foreman"]
		}
		url: description: [
			"URL where external provider is hosted.",
			"Applicable for those types: I(os_image), I(os_volume), I(network) and I(foreman).",
		]
		username: description: [
			"Username to be used for login to external provider.",
			"Applicable for all types.",
		]
		password: description: [
			"Password of the user specified in C(username) parameter.",
			"Applicable for all types.",
		]
		tenant_name: {
			description: [
				"Name of the tenant.",
				"Applicable for those types: I(os_image), I(os_volume) and I(network).",
			]
			aliases: ["tenant"]
		}
		authentication_url: {
			description: [
				"Keystone authentication URL of the openstack provider.",
				"Applicable for those types: I(os_image), I(os_volume) and I(network).",
			]
			aliases: ["auth_url"]
		}
		data_center: description: [
			"Name of the data center where provider should be attached.",
			"Applicable for those type: I(os_volume).",
		]
		read_only: {
			description: [
				"Specify if the network should be read only.",
				"Applicable if C(type) is I(network).",
			]
			type: "bool"
		}
		network_type: {
			description: [
				"Type of the external network provider either external (for example OVN) or neutron.",
				"Applicable if C(type) is I(network).",
			]
			choices: ["external", "neutron"]
			default: ["external"]
		}
		authentication_keys: {
			description: [
				"List of authentication keys. Each key is represented by dict like {'uuid': 'our-uuid', 'value': 'YourSecretValue=='}",
				"When you will not pass these keys and there are already some of them defined in the system they will be removed.",
				"Applicable for I(os_volume).",
			]
			default: []
			version_added: "2.6"
		}
	}
	extends_documentation_fragment: "ovirt"
}
