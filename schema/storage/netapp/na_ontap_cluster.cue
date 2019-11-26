package ansible

module: na_ontap_cluster: {
	module:            "na_ontap_cluster"
	short_description: "NetApp ONTAP cluster - create, join, add license"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create or join or apply licenses to ONTAP clusters",
		"Cluster join can be performed using only one of the parameters, either cluster_name or cluster_ip_address",
	]
	options: {
		state: {
			description: [
				"Whether the specified cluster should exist or not.",
			]
			choices: ["present"]
			default: "present"
		}
		cluster_name: description: [
			"The name of the cluster to manage.",
		]
		cluster_ip_address: description: [
			"IP address of cluster to be joined",
		]
		license_code: description: [
			"License code to be applied to the cluster",
		]
		license_package: description: [
			"License package name of the license to be removed",
		]
		node_serial_number: description: [
			"Serial number of the cluster node",
		]
	}
}
