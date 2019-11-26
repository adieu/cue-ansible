package ansible

module: pamd: {
	module: "pamd"
	author: [
		"Kenneth D. Evensen (@kevensen)",
	]
	short_description: "Manage PAM Modules"
	description: [
		"Edit PAM service's type, control, module path and module arguments.",
		"In order for a PAM rule to be modified, the type, control and module_path must match an existing rule.  See man(5) pam.d for details.",
	]

	version_added: "2.3"
	options: {
		name: {
			description: [
				"The name generally refers to the PAM service file to change, for example system-auth.",
			]

			type:     "str"
			required: true
		}
		type: {
			description: [
				"The type of the PAM rule being modified.",
				"The C(type), C(control) and C(module_path) all must match a rule to be modified.",
			]
			type:     "str"
			required: true
			choices: ["account", "-account", "auth", "-auth", "password", "-password", "session", "-session"]
		}
		control: {
			description: [
				"The control of the PAM rule being modified.",
				"This may be a complicated control with brackets. If this is the case, be sure to put \"[bracketed controls]\" in quotes.",
				"The C(type), C(control) and C(module_path) all must match a rule to be modified.",
			]
			type:     "str"
			required: true
		}
		module_path: {
			description: [
				"The module path of the PAM rule being modified.",
				"The C(type), C(control) and C(module_path) all must match a rule to be modified.",
			]
			type:     "str"
			required: true
		}
		new_type: {
			description: [
				"The new type to assign to the new rule.",
			]
			type: "str"
			choices: ["account", "-account", "auth", "-auth", "password", "-password", "session", "-session"]
		}
		new_control: {
			description: [
				"The new control to assign to the new rule.",
			]
			type: "str"
		}
		new_module_path: {
			description: [
				"The new module path to be assigned to the new rule.",
			]
			type: "str"
		}
		module_arguments: {
			description: [
				"When state is C(updated), the module_arguments will replace existing module_arguments.",
				"When state is C(args_absent) args matching those listed in module_arguments will be removed.",
				"When state is C(args_present) any args listed in module_arguments are added if missing from the existing rule.",
				"Furthermore, if the module argument takes a value denoted by C(=), the value will be changed to that specified in module_arguments.",
			]

			type: "list"
		}
		state: {
			description: [
				"The default of C(updated) will modify an existing rule if type, control and module_path all match an existing rule.",
				"With C(before), the new rule will be inserted before a rule matching type, control and module_path.",
				"Similarly, with C(after), the new rule will be inserted after an existing rulematching type, control and module_path.",
				"With either C(before) or C(after) new_type, new_control, and new_module_path must all be specified.",
				"If state is C(args_absent) or C(args_present), new_type, new_control, and new_module_path will be ignored.",
				"State C(absent) will remove the rule.  The 'absent' state was added in Ansible 2.4.",
			]
			type: "str"
			choices: ["absent", "before", "after", "args_absent", "args_present", "updated"]
			default: "updated"
		}
		path: {
			description: [
				"This is the path to the PAM service files.",
			]
			type:    "path"
			default: "/etc/pam.d"
		}
		backup: {
			description: [
				"Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			type:          "bool"
			default:       false
			version_added: "2.6"
		}
	}
}
