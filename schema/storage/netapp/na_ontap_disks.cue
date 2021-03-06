package ansible

module: na_ontap_disks: {
	module: "na_ontap_disks"

	short_description: "NetApp ONTAP Assign disks to nodes"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Assign all or part of disks to nodes.",
	]

	options: {

		node: {
			required: true
			description: [
				"It specifies the node to assign all visible unowned disks.",
			]
		}

		disk_count: {
			required: false
			type:     "int"
			description: [
				"Total number of disks a node should own",
			]
			version_added: "2.9"
		}
	}
}
