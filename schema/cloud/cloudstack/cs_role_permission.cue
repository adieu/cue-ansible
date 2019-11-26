package ansible

module: cs_role_permission: {
	module:            "cs_role_permission"
	short_description: "Manages role permissions on Apache CloudStack based clouds."
	description: [
		"Create, update and remove CloudStack role permissions.",
		"Managing role permissions only supported in CloudStack >= 4.9.",
	]
	version_added: "2.6"
	author:        "David Passante (@dpassante)"
	options: {
		name: {
			description: [
				"The API name of the permission.",
			]
			type:     "str"
			required: true
		}
		role: {
			description: [
				"Name or ID of the role.",
			]
			type:     "str"
			required: true
		}
		permission: {
			description: [
				"The rule permission, allow or deny. Defaulted to deny.",
			]
			type: "str"
			choices: ["allow", "deny"]
			default: "deny"
		}
		state: {
			description: [
				"State of the role permission.",
			]
			type: "str"
			choices: ["present", "absent"]
			default: "present"
		}
		description: {
			description: [
				"The description of the role permission.",
			]
			type: "str"
		}
		parent: {
			description: [
				"The parent role permission uuid. use 0 to move this rule at the top of the list.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
