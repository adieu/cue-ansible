package ansible

module: rax_keypair: {
	module:            "rax_keypair"
	short_description: "Create a keypair for use with Rackspace Cloud Servers"
	description: [
		"Create a keypair for use with Rackspace Cloud Servers",
	]
	version_added: 1.5
	options: {
		name: {
			description: [
				"Name of keypair",
			]
			required: true
		}
		public_key: description: [
			"Public Key string to upload. Can be a file path or string",
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
	author: "Matt Martz (@sivel)"
	notes: [
		"Keypairs cannot be manipulated, only created and deleted. To \"update\" a keypair you must first delete and then recreate.",
		"The ability to specify a file path for the public key was added in 1.7",
	]
	extends_documentation_fragment: "rackspace.openstack"
}
