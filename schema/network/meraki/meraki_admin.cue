package ansible

module: meraki_admin: {
	module:            "meraki_admin"
	short_description: "Manage administrators in the Meraki cloud"
	version_added:     "2.6"
	description: [
		"Allows for creation, management, and visibility into administrators within Meraki.",
	]
	options: {
		name: {
			description: [
				"Name of the dashboard administrator.",
				"Required when creating a new administrator.",
			]
			type: "str"
		}
		email: {
			description: [
				"Email address for the dashboard administrator.",
				"Email cannot be updated.",
				"Required when creating or editing an administrator.",
			]
			type: "str"
		}
		org_access: {
			description: [
				"Privileges assigned to the administrator in the organization.",
			]
			aliases: ["orgAccess"]
			choices: ["full", "none", "read-only"]
			type: "str"
		}
		tags: {
			description: [
				"Tags the administrator has privileges on.",
				"When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.",
				"If C(none) is specified, C(network) or C(tags) must be specified.",
			]
			suboptions: {
				tag: {
					description: [
						"Object tag which privileges should be assigned.",
					]
					type: "str"
				}
				access: {
					description: [
						"The privilege of the dashboard administrator for the tag.",
					]
					type: "str"
				}
			}
		}
		networks: {
			description: [
				"List of networks the administrator has privileges on.",
				"When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.",
			]
			suboptions: {
				id: {
					description: [
						"Network ID for which administrator should have privileges assigned.",
					]
					type: "str"
				}
				access: {
					description: [
						"The privilege of the dashboard administrator on the network.",
						"Valid options are C(full), C(read-only), or C(none).",
					]
					type: "str"
				}
			}
		}
		state: {
			description: [
				"Create or modify, or delete an organization",
				"If C(state) is C(absent), name takes priority over email if both are specified.",
			]
			choices: ["absent", "present", "query"]
			required: true
			type:     "str"
		}
		org_name: {
			description: [
				"Name of organization.",
				"Used when C(name) should refer to another object.",
				"When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.",
			]
			aliases: ["organization"]
			type: "str"
		}
	}
	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
