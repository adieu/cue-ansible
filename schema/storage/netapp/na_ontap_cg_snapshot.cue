package ansible

module: na_ontap_cg_snapshot: {
	short_description: "NetApp ONTAP manage consistency group snapshot"
	author:            "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create consistency group snapshot for ONTAP volumes.",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_cg_snapshot"
	options: {
		state: {
			description: [
				"If you want to create a snapshot.",
			]
			default: "present"
		}
		vserver: {
			required: true
			description: [
				"Name of the vserver.",
			]
		}
		volumes: {
			required: true
			description: [
				"A list of volumes in this filer that is part of this CG operation.",
			]
		}
		snapshot: {
			required: true
			description: [
				"The provided name of the snapshot that is created in each volume.",
			]
		}
		timeout: {
			description: [
				"Timeout selector.",
			]
			choices: ["urgent", "medium", "relaxed"]
			default: "medium"
		}
		snapmirror_label: description: [
			"A human readable SnapMirror label to be attached with the consistency group snapshot copies.",
		]
	}
	version_added: "2.7"
}
