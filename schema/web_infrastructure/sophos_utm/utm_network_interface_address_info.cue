package ansible

module: utm_network_interface_address_info: {
	module: "utm_network_interface_address_info"

	author: [
		"Juergen Wiebe (@steamx)",
	]

	short_description: "Get info for a network/interface_address object"

	description: [
		"Get info for a network/interface_address object in SOPHOS UTM.",
	]

	version_added: "2.8"

	options: name: {
		description: [
			"The name of the object. Will be used to identify the entry",
		]
		required: true
	}

	extends_documentation_fragment: ["utm"]
}
