package ansible

module: na_ontap_cifs_acl: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create or destroy or modify cifs-share-access-controls on ONTAP",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_cifs_acl"
	options: {
		permission: {
			choices: ["no_access", "read", "change", "full_control"]
			description:
				"-\"The access rights that the user or group has on the defined CIFS share.\""
		}
		share_name: {
			description: [
				"The name of the cifs-share-access-control to manage.",
			]
			required: true
		}
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified CIFS share acl should exist or not.",
			]
			default: "present"
		}
		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			required: true
		}
		user_or_group: {
			description: [
				"The user or group name for which the permissions are listed.",
			]
			required: true
		}
	}
	short_description: "NetApp ONTAP manage cifs-share-access-control"
	version_added:     "2.6"
}
