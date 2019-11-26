package ansible

module: win_user_right: {
	module:            "win_user_right"
	version_added:     "2.4"
	short_description: "Manage Windows User Rights"
	description: [
		"Add, remove or set User Rights for a group or users or groups.",
		"You can set user rights for both local and domain accounts.",
	]
	options: {
		name: {
			description: [
				"The name of the User Right as shown by the C(Constant Name) value from U(https://technet.microsoft.com/en-us/library/dd349804.aspx).",
				"The module will return an error if the right is invalid.",
			]
			type:     "str"
			required: true
		}
		users: {
			description: [
				"A list of users or groups to add/remove on the User Right.",
				"These can be in the form DOMAIN\\user-group, user-group@DOMAIN.COM for domain users/groups.",
				"For local users/groups it can be in the form user-group, .\\user-group, SERVERNAME\\user-group where SERVERNAME is the name of the remote server.",
				"You can also add special local accounts like SYSTEM and others.",
			]
			type:     "list"
			required: true
		}
		action: {
			description: [
				"C(add) will add the users/groups to the existing right.",
				"C(remove) will remove the users/groups from the existing right.",
				"C(set) will replace the users/groups of the existing right.",
			]
			type:    "str"
			default: "set"
			choices: ["add", "remove", "set"]
		}
	}
	notes: [
		"If the server is domain joined this module can change a right but if a GPO governs this right then the changes won't last.",
	]

	seealso: [{
		module: "win_group"
	}, {
		module: "win_group_membership"
	}, {
		module: "win_user"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
