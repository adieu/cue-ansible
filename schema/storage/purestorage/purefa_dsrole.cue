package ansible

module: purefa_dsrole: {
	module:            "purefa_dsrole"
	version_added:     "2.8"
	short_description: "Configure FlashArray Directory Service Roles"
	description: [
		"Set or erase directory services role configurations.",
		"Only available for FlashArray running Purity 5.2.0 or higher",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Create or delete directory service role",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		role: {
			description: [
				"The directory service role to work on",
			]
			choices: ["array_admin", "ops_admin", "readonly", "storage_admin"]
		}
		group_base: {
			type: "str"
			description: [
				"Specifies where the configured group is located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right.",
				"Each OU should not exceed 64 characters in length.",
			]
		}
		group: {
			type: "str"
			description: [
				"Sets the common Name (CN) of the configured directory service group containing users for the FlashBlade. This name should be just the Common Name of the group without the CN= specifier.",
				"Common Names should not exceed 64 characters in length.",
			]
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
