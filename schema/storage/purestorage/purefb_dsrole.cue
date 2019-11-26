package ansible

module: purefb_dsrole: {
	module:            "purefb_dsrole"
	version_added:     "2.8"
	short_description: "Configure FlashBlade  Management Directory Service Roles"
	description: [
		"Set or erase directory services role configurations.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Create or delete directory service role",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		role: {
			description: [
				"The directory service role to work on",
			]
			choices: ["array_admin", "ops_admin", "readonly", "storage_admin"]
			type: "str"
		}
		group_base: {
			description: [
				"Specifies where the configured group is located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right.",
				"Each OU should not exceed 64 characters in length.",
			]
			type: "str"
		}
		group: {
			description: [
				"Sets the common Name (CN) of the configured directory service group containing users for the FlashBlade. This name should be just the Common Name of the group without the CN= specifier.",
				"Common Names should not exceed 64 characters in length.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: ["purestorage.fb"]
}
