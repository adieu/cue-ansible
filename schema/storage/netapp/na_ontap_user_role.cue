package ansible

module: na_ontap_user_role: {
	module: "na_ontap_user_role"

	short_description: "NetApp ONTAP user role configuration and management"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Create or destroy user roles",
	]

	options: {

		state: {
			description: [
				"Whether the specified user should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
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

		query: {
			description: [
				"A query for the role. The query must apply to the specified command or directory name.",
				"Use double quotes \"\" for modifying a existing query to none.",
			]
			version_added: "2.8"
		}

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}
	}
}
