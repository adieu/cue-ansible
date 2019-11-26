package ansible

module: os_zone: {
	module:                         "os_zone"
	short_description:              "Manage OpenStack DNS zones"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.2"
	author:                         "Ricardo Carrillo Cruz (@rcarrillocruz)"
	description: [
		"Manage OpenStack DNS zones. Zones can be created, deleted or updated. Only the I(email), I(description), I(ttl) and I(masters) values can be updated.",
	]

	options: {
		name: {
			description: [
				"Zone name",
			]
			required: true
		}
		zone_type: {
			description: [
				"Zone type",
			]
			choices: ["primary", "secondary"]
		}
		email: description: [
			"Email of the zone owner (only applies if zone_type is primary)",
		]
		description: description: [
			"Zone description",
		]
		ttl: description: [
			"TTL (Time To Live) value in seconds",
		]
		masters: description: [
			"Master nameservers (only applies if zone_type is secondary)",
		]
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
}
