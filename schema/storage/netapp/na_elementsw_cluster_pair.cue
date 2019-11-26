package ansible

module: na_elementsw_cluster_pair: {
	module: "na_elementsw_cluster_pair"

	short_description: "NetApp Element Software Manage Cluster Pair"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, delete cluster pair",
	]

	options: {

		state: {
			description: [
				"Whether the specified cluster pair should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		dest_mvip: {
			description: [
				"Destination IP address of the cluster to be paired.",
			]
			required: true
		}

		dest_username: description: [
			"Destination username for the cluster to be paired.",
			"Optional if this is same as source cluster username.",
		]

		dest_password: description: [
			"Destination password for the cluster to be paired.",
			"Optional if this is same as source cluster password.",
		]
	}
}
