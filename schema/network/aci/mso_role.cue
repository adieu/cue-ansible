package ansible

module: mso_role: {
	module:            "mso_role"
	short_description: "Manage roles"
	description: [
		"Manage roles on Cisco ACI Multi-Site.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.8"
	options: {
		role: {
			description: [
				"The name of the role.",
			]
			type:     "str"
			required: true
			aliases: ["name"]
		}
		display_name: {
			description: [
				"The name of the role to be displayed in the web UI.",
			]
			type: "str"
		}
		description: {
			description: [
				"The description of the role.",
			]
			type: "str"
		}
		permissions: {
			description: [
				"A list of permissions tied to this role.",
			]
			type: "list"
			choices: [
				"backup-db",
				"manage-audit-records",
				"manage-labels",
				"manage-roles",
				"manage-schemas",
				"manage-sites",
				"manage-tenants",
				"manage-tenant-schemas",
				"manage-users",
				"platform-logs",
				"view-all-audit-records",
				"view-labels",
				"view-roles",
				"view-schemas",
				"view-sites",
				"view-tenants",
				"view-tenant-schemas",
				"view-users",
			]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "mso"
}
