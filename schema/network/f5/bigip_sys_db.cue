package ansible

module: bigip_sys_db: {
	module:            "bigip_sys_db"
	short_description: "Manage BIG-IP system database variables"
	description: [
		"Manage BIG-IP system database variables",
	]
	version_added: 2.2
	options: {
		key: {
			description: [
				"The database variable to manipulate.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value). When C(reset) sets the variable back to the default value. At least one of value and state C(reset) are required.",
			]

			type: "str"
			choices: [
				"present",
				"reset",
			]
			default: "present"
		}
		value: {
			description: [
				"The value to set the key to. At least one of value and state C(reset) are required.",
			]

			type: "str"
		}
	}
	notes: [
		"Requires BIG-IP version 12.0.0 or greater",
	]
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
