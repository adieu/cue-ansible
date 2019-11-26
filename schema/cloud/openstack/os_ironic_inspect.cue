package ansible

module: os_ironic_inspect: {
	module:                         "os_ironic_inspect"
	short_description:              "Explicitly triggers baremetal node introspection in ironic."
	extends_documentation_fragment: "openstack"
	author:                         "Julia Kreger (@juliakreger)"
	version_added:                  "2.1"
	description: [
		"Requests Ironic to set a node into inspect state in order to collect metadata regarding the node. This command may be out of band or in-band depending on the ironic driver configuration. This is only possible on nodes in 'manageable' and 'available' state.",
	]

	options: {
		mac: description: [
			"unique mac address that is used to attempt to identify the host.",
		]
		uuid: description: [
			"globally unique identifier (UUID) to identify the host.",
		]
		name: description: [
			"unique name identifier to identify the host in Ironic.",
		]
		ironic_url: description: [
			"If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API. Use with \"auth\" and \"auth_type\" settings set to None.",
		]

		timeout: {
			description: [
				"A timeout in seconds to tell the role to wait for the node to complete introspection if wait is set to True.",
			]
			default: 1200
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}

	requirements: ["openstacksdk"]
}
