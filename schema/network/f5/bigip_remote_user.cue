package ansible

module: bigip_remote_user: {
	module:            "bigip_remote_user"
	short_description: "Manages default settings for remote user accounts on a BIG-IP"
	description: [
		"Manages default settings for remote user accounts on a BIG-IP.",
	]
	version_added: 2.9
	options: {
		default_role: {
			description: [
				"Specifies the default role for all remote user accounts.",
				"The default system value is C(no-access).",
			]
			type: "str"
			choices: [
				"acceleration-policy-editor",
				"admin",
				"application-editor",
				"auditor",
				"certificate-manager",
				"firewall-manager",
				"fraud-protection-manager",
				"guest",
				"irule-manager",
				"manager",
				"no-access",
				"operator",
				"resource-admin",
				"user-manager",
				"web-application-security-administrator",
				"web-application-security-editor",
			]
		}
		default_partition: {
			description: [
				"Specifies the default partition for all remote user accounts.",
				"The default system value is C(all) for all partitions.",
			]
			type: "str"
		}
		console_access: {
			description: [
				"Enables or disables the default console access for all remote user accounts.",
				"The default system value is C(disabled).",
			]
			type: "bool"
		}
		description: {
			description: [
				"User defined description.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
