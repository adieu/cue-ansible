package ansible

module: rax_identity: {
	module:            "rax_identity"
	short_description: "Load Rackspace Cloud Identity"
	description: [
		"Verifies Rackspace Cloud credentials and returns identity information",
	]
	version_added: "1.5"
	options: state: {
		description: [
			"Indicate desired state of the resource",
		]
		choices: ["present", "absent"]
		default:  "present"
		required: false
	}
	author: [
		"Christopher H. Laco (@claco)",
		"Matt Martz (@sivel)",
	]
	extends_documentation_fragment: "rackspace.openstack"
}
