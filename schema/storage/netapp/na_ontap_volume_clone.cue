package ansible

module: na_ontap_volume_clone: {
	module:            "na_ontap_volume_clone"
	short_description: "NetApp ONTAP manage volume clones."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create NetApp ONTAP volume clones.",
		"A FlexClone License is required to use this module",
	]
	options: {
		state: {
			description: [
				"Whether volume clone should be created.",
			]
			choices: ["present"]
			default: "present"
		}
		parent_volume: {
			description: [
				"The parent volume of the volume clone being created.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the volume clone being created.",
			]
			required: true
			type:     "str"
			aliases: [
				"volume",
			]
		}
		vserver: {
			description: [
				"Vserver in which the volume clone should be created.",
			]
			required: true
			type:     "str"
		}
		parent_snapshot: {
			description: [
				"Parent snapshot in which volume clone is created off.",
			]
			type: "str"
		}
		parent_vserver: {
			description: [
				"Vserver of parent volume in which clone is created off.",
			]
			type: "str"
		}
		qos_policy_group_name: {
			description: [
				"The qos-policy-group-name which should be set for volume clone.",
			]
			type: "str"
		}
		space_reserve: {
			description: [
				"The space_reserve setting which should be used for the volume clone.",
			]
			choices: ["volume", "none"]
		}
		volume_type: {
			description: [
				"The volume-type setting which should be used for the volume clone.",
			]
			choices: ["rw", "dp"]
		}
		junction_path: {
			version_added: "2.8"
			description: [
				"Junction path of the volume.",
			]
			type: "str"
		}
		uid: {
			version_added: "2.9"
			description: [
				"The UNIX user ID for the clone volume.",
			]
			type: "int"
		}
		gid: {
			version_added: "2.9"
			description: [
				"The UNIX group ID for the clone volume.",
			]
			type: "int"
		}
	}
}
