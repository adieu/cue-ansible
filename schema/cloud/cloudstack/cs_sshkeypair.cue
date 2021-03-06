package ansible

module: cs_sshkeypair: {
	module:            "cs_sshkeypair"
	short_description: "Manages SSH keys on Apache CloudStack based clouds."
	description: [
		"Create, register and remove SSH keys.",
		"If no key was found and no public key was provided and a new SSH private/public key pair will be created and the private key will be returned.",
	]

	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of public key."]
			type:     "str"
			required: true
		}
		domain: {
			description: ["Domain the public key is related to."]
			type: "str"
		}
		account: {
			description: ["Account the public key is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the public key to be registered in."]
			type: "str"
		}
		state: {
			description: ["State of the public key."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		public_key: {
			description: ["String of the public key."]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
