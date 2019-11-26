package ansible

module: os_member: {
	module:                         "os_member"
	short_description:              "Add/Delete a member for a pool in load balancer from OpenStack Cloud"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.7"
	author:                         "Lingxian Kong (@lingxiankong)"
	description: [
		"Add or Remove a member for a pool from the OpenStack load-balancer service.",
	]
	options: {
		name: {
			description: [
				"Name that has to be given to the member",
			]
			required: true
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		pool: {
			description: [
				"The name or id of the pool that this member belongs to.",
			]
			required: true
		}
		protocol_port: {
			description: [
				"The protocol port number for the member.",
			]
			default: 80
		}
		address: description: [
			"The IP address of the member.",
		]
		subnet_id: description: [
			"The subnet ID the member service is accessible from.",
		]
		wait: {
			description: [
				"If the module should wait for the load balancer to be ACTIVE.",
			]
			type:    "bool"
			default: "yes"
		}
		timeout: {
			description: [
				"The amount of time the module should wait for the load balancer to get into ACTIVE state.",
			]

			default: 180
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: ["openstacksdk"]
}
