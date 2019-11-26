package ansible

module: ipa_service: {
	module:            "ipa_service"
	author:            "Cédric Parent (@cprh)"
	short_description: "Manage FreeIPA service"
	description: ["Add and delete an IPA service using IPA API"]
	options: {
		krbcanonicalname: {
			description: [
				"principal of the service",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		hosts: {
			description: ["defines the list of 'ManagedBy' hosts"]
			required: false
		}
		force: {
			description: ["Force principal name even if host is not in DNS."]
			required: false
			type:     "bool"
		}
		state: {
			description: "State to ensure"
			required:    false
			default:     "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.5"
}
