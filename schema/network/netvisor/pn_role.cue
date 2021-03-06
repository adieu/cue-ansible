package ansible

module: pn_role: {
	module:            "pn_role"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/delete/modify role"
	description: [
		"This module can be used to create, delete and modify user roles.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(present) to create role and C(absent) to delete role and C(update) to modify role.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent", "update"]
		}
		pn_scope: {
			description: [
				"local or fabric.",
			]
			required: false
			type:     "str"
			choices: ["local", "fabric"]
		}
		pn_access: {
			description: [
				"type of access.",
			]
			required: false
			type:     "str"
			choices: ["read-only", "read-write"]
		}
		pn_shell: {
			description: [
				"allow shell command.",
			]
			required: false
			type:     "bool"
		}
		pn_sudo: {
			description: [
				"allow sudo from shell.",
			]
			required: false
			type:     "bool"
		}
		pn_running_config: {
			description: [
				"display running configuration of switch.",
			]
			required: false
			type:     "bool"
		}
		pn_name: {
			description: [
				"role name.",
			]
			required: true
			type:     "str"
		}
		pn_delete_from_users: {
			description: [
				"delete from users.",
			]
			required: false
			type:     "bool"
		}
	}
}
