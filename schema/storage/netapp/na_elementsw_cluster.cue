package ansible

module: na_elementsw_cluster: {
	module: "na_elementsw_cluster"

	short_description: "NetApp Element Software Create Cluster"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Initialize Element Software node ownership to form a cluster.",
	]

	options: {
		management_virtual_ip: {
			description: [
				"Floating (virtual) IP address for the cluster on the management network.",
			]
			required: true
		}

		storage_virtual_ip: {
			description: [
				"Floating (virtual) IP address for the cluster on the storage (iSCSI) network.",
			]
			required: true
		}

		replica_count: {
			description: [
				"Number of replicas of each piece of data to store in the cluster.",
			]
			default: "2"
		}

		cluster_admin_username: description: [
			"Username for the cluster admin.",
			"If not provided, default to login username.",
		]

		cluster_admin_password: description: [
			"Initial password for the cluster admin account.",
			"If not provided, default to login password.",
		]

		accept_eula: {
			description: [
				"Required to indicate your acceptance of the End User License Agreement when creating this cluster.",
				"To accept the EULA, set this parameter to true.",
			]
			type: "bool"
		}

		nodes: {
			description: [
				"Storage IP (SIP) addresses of the initial set of nodes making up the cluster.",
				"nodes IP must be in the list.",
			]
			required: true
		}

		attributes: description: ["List of name-value pairs in JSON object format."]
	}
}
