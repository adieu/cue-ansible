package ansible

module: os_client_config: {
	module:            "os_client_config"
	short_description: "Get OpenStack Client config"
	description: [
		"Get I(openstack) client config data from clouds.yaml or environment",
	]
	version_added: "2.0"
	notes: [
		"Facts are placed in the C(openstack.clouds) variable.",
	]
	options: clouds: {
		description: [
			"List of clouds to limit the return list to. No value means return information on all configured clouds",
		]

		required: false
		default: []
	}
	requirements: ["os-client-config"]
	author: "Monty Taylor (@emonty)"
}
