package ansible

module: na_elementsw_drive: {
	module: "na_elementsw_drive"

	short_description: "NetApp Element Software Manage Node Drives"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Add, Erase or Remove drive for nodes on Element Software Cluster.",
	]

	options: {
		drive_id: description: [
			"Drive ID or Serial Name of Node drive.",
			"If not specified, add and remove action will be performed on all drives of node_id",
		]

		state: {
			description: [
				"Element SW Storage Drive operation state.",
				"present - To add drive of node to participate in cluster data storage.",
				"absent  - To remove the drive from being part of active cluster.",
				"clean   - Clean-up any residual data persistent on a *removed* drive in a secured method.",
			]
			choices: ["present", "absent", "clean"]
			default: "present"
		}

		node_id: {
			description: [
				"ID or Name of cluster node.",
			]
			required: true
		}

		force_during_upgrade: {
			description: [
				"Flag to force drive operation during upgrade.",
			]
			type: "bool"
		}

		force_during_bin_sync: {
			description: [
				"Flag to force during a bin sync operation.",
			]
			type: "bool"
		}
	}
}
