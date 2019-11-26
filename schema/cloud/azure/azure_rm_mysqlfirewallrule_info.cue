package ansible

module: azure_rm_mysqlfirewallrule_info: {
	module:            "azure_rm_mysqlfirewallrule_info"
	version_added:     "2.9"
	short_description: "Get Azure MySQL Firewall Rule facts"
	description: [
		"Get facts of Azure MySQL Firewall Rule.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
			type:     "str"
		}
		server_name: {
			description: [
				"The name of the server.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the server firewall rule.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
