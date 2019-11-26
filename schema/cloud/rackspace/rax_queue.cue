package ansible

module: rax_queue: {
	module:            "rax_queue"
	short_description: "create / delete a queue in Rackspace Public Cloud"
	description: [
		"creates / deletes a Rackspace Public Cloud queue.",
	]
	version_added: "1.5"
	options: {
		name: description: [
			"Name to give the queue",
		]
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	author: [
		"Christopher H. Laco (@claco)",
		"Matt Martz (@sivel)",
	]
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
