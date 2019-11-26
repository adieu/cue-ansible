package ansible

module: os_auth: {
	module:            "os_auth"
	short_description: "Retrieve an auth token"
	version_added:     "2.0"
	author:            "Monty Taylor (@emonty)"
	description: [
		"Retrieve an auth token from an OpenStack Cloud",
	]
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
	options: availability_zone: {
		description: [
			"Ignored. Present for backwards compatibility",
		]
		required: false
	}
	extends_documentation_fragment: "openstack"
}
