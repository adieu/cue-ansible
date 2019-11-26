package ansible

module: na_cdot_user_role: {
	module: "na_cdot_user_role"

	short_description: "useradmin configuration and management"
	extends_documentation_fragment: [
		"netapp.ontap",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"

	deprecated: {
		removed_in:  "2.11"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(na_ontap_user_role) instead."
	}

	description: [
		"Create or destroy user roles",
	]

	options: {

		state: {
			description: [
				"Whether the specified user should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		name: {
			description: [
				"The name of the role to manage.",
			]
			required: true
		}

		command_directory_name: {
			description: [
				"The command or command directory to which the role has an access.",
			]
			required: true
		}

		access_level: {
			description: [
				"The name of the role to manage.",
			]
			choices: ["none", "readonly", "all"]
			default: "all"
		}

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}
	}
}
