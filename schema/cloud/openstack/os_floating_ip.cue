package ansible

module: os_floating_ip: {
	module:                         "os_floating_ip"
	version_added:                  "2.0"
	author:                         "Davide Guerri (@dguerri) <davide.guerri@hp.com>"
	short_description:              "Add/Remove floating IP from an instance"
	extends_documentation_fragment: "openstack"
	description: [
		"Add or Remove a floating IP to an instance.",
		"Returns the floating IP when attaching only if I(wait=true).",
	]
	options: {
		server: {
			description: [
				"The name or ID of the instance to which the IP address should be assigned.",
			]

			required: true
		}
		network: description: [
			"The name or ID of a neutron external network or a nova pool name.",
		]
		floating_ip_address: description: [
			"A floating IP address to attach or to detach. Required only if I(state) is absent. When I(state) is present can be used to specify a IP address to attach.",
		]

		reuse: {
			description: [
				"When I(state) is present, and I(floating_ip_address) is not present, this parameter can be used to specify whether we should try to reuse a floating IP address already allocated to the project.",
			]

			type:    "bool"
			default: "no"
		}
		fixed_address: description: [
			"To which fixed IP of server the floating IP address should be attached to.",
		]

		nat_destination: {
			description: [
				"The name or id of a neutron private network that the fixed IP to attach floating IP is on",
			]

			aliases: ["fixed_network", "internal_network"]
			version_added: "2.3"
		}
		wait: {
			description: [
				"When attaching a floating IP address, specify whether to wait for it to appear as attached.",
				"Must be set to C(yes) for the module to return the value of the floating IP.",
			]
			type:    "bool"
			default: "no"
		}
		timeout: {
			description: [
				"Time to wait for an IP address to appear as attached. See wait.",
			]
			required: false
			default:  60
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		purge: {
			description: [
				"When I(state) is absent, indicates whether or not to delete the floating IP completely, or only detach it from the server. Default is to detach only.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: ["openstacksdk"]
}
