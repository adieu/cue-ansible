package ansible

module: os_network: {
	module:                         "os_network"
	short_description:              "Creates/removes networks from OpenStack"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.0"
	author:                         "Monty Taylor (@emonty)"
	description: [
		"Add or remove network from OpenStack.",
	]
	options: {
		name: {
			description: [
				"Name to be assigned to the network.",
			]
			required: true
		}
		shared: {
			description: [
				"Whether this network is shared or not.",
			]
			type:    "bool"
			default: "no"
		}
		admin_state_up: {
			description: [
				"Whether the state should be marked as up or down.",
			]
			type:    "bool"
			default: "yes"
		}
		external: {
			description: [
				"Whether this network is externally accessible.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Indicate desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		provider_physical_network: {
			description: [
				"The physical network where this network object is implemented.",
			]
			version_added: "2.1"
		}
		provider_network_type: {
			description: [
				"The type of physical network that maps to this network resource.",
			]
			version_added: "2.1"
		}
		provider_segmentation_id: {
			description: [
				"An isolated segment on the physical network. The I(network_type) attribute defines the segmentation model. For example, if the I(network_type) value is vlan, this ID is a vlan identifier. If the I(network_type) value is gre, this ID is a gre key.",
			]

			version_added: "2.1"
		}
		project: {
			description: [
				"Project name or ID containing the network (name admin-only)",
			]
			version_added: "2.1"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
		port_security_enabled: {
			description: [
				"Whether port security is enabled on the network or not. Network will use OpenStack defaults if this option is not utilised.",
			]

			type:          "bool"
			version_added: "2.8"
		}
		mtu: {
			description: [
				"The maximum transmission unit (MTU) value to address fragmentation. Network will use OpenStack defaults if this option is not provided.",
			]

			type:          "int"
			version_added: "2.9"
		}
		dns_domain: {
			description: [
				"The DNS domain value to set. Network will use Openstack defaults if this option is not provided.",
			]

			version_added: "2.9"
		}
	}
	requirements: ["openstacksdk"]
}
