package ansible

module: win_group_membership: {
	module:            "win_group_membership"
	version_added:     "2.4"
	short_description: "Manage Windows local group membership"
	description: [
		"Allows the addition and removal of local, service and domain users, and domain groups from a local group.",
	]

	options: {
		name: {
			description: [
				"Name of the local group to manage membership on.",
			]
			type:     "str"
			required: true
		}
		members: {
			description: [
				"A list of members to ensure are present/absent from the group.",
				"Accepts local users as .\\username, and SERVERNAME\\username.",
				"Accepts domain users and groups as DOMAIN\\username and username@DOMAIN.",
				"Accepts service users as NT AUTHORITY\\username.",
				"Accepts all local, domain and service user types as username, favoring domain lookups when in a domain.",
			]

			type:     "list"
			required: true
		}
		state: {
			description: [
				"Desired state of the members in the group.",
				"C(pure) was added in Ansible 2.8.",
				"When C(state) is C(pure), only the members specified will exist, and all other existing members not specified are removed.",
			]

			type: "str"
			choices: ["absent", "present", "pure"]
			default: "present"
		}
	}
	seealso: [{
		module: "win_domain_group"
	}, {
		module: "win_domain_membership"
	}, {
		module: "win_group"
	}]
	author: ["Andrew Saraceni (@andrewsaraceni)"]
}
