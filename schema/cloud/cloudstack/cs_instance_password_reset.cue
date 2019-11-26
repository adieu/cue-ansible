package ansible

module: cs_instance_password_reset: {
	module:            "cs_instance_password_reset"
	short_description: "Allows resetting VM the default passwords on Apache CloudStack based clouds."
	description: [
		"Resets the default user account's password on an instance.",
		"Requires cloud-init to be installed in the virtual machine.",
		"The passwordenabled flag must be set on the template associated with the VM.",
	]
	version_added: "2.8"
	author:        "Gregor Riepl (@onitake)"
	options: {
		vm: {
			description: [
				"Name of the virtual machine to reset the password on.",
			]
			type:     "str"
			required: true
		}
		domain: {
			description: [
				"Name of the domain the virtual machine belongs to.",
			]
			type: "str"
		}
		account: {
			description: [
				"Account the virtual machine belongs to.",
			]
			type: "str"
		}
		project: {
			description: [
				"Name of the project the virtual machine belongs to.",
			]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the instance is deployed.",
				"If not set, the default zone is used.",
			]
			type: "str"
		}
		poll_async: {
			description: [
				"Poll async jobs until job has finished.",
			]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
