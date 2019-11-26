package ansible

module: ovirt_group: {
	module:            "ovirt_group"
	short_description: "Module to manage groups in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage groups in oVirt/RHV",
	]
	options: {
		name: {
			description: [
				"Name of the group to manage.",
			]
			required: true
		}
		state: {
			description: [
				"Should the group be present/absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		authz_name: {
			description: [
				"Authorization provider of the group. In previous versions of oVirt/RHV known as domain.",
			]
			required: true
			aliases: ["domain"]
		}
		namespace: {
			description: [
				"Namespace of the authorization provider, where group resides.",
			]
			required: false
		}
	}
	extends_documentation_fragment: "ovirt"
}
