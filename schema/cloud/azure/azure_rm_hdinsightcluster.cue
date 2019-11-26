package ansible

module: azure_rm_hdinsightcluster: {
	module:            "azure_rm_hdinsightcluster"
	version_added:     "2.8"
	short_description: "Manage Azure HDInsight Cluster instance"
	description: [
		"Create, update and delete instance of Azure HDInsight Cluster.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the cluster.",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		cluster_version: description: [
			"The version of the cluster. For example C(3.6).",
		]
		os_type: {
			description: [
				"The type of operating system.",
			]
			choices: [
				"linux",
			]
		}
		tier: {
			description: [
				"The cluster tier.",
			]
			choices: [
				"standard",
				"premium",
			]
		}
		cluster_definition: {
			description: [
				"The cluster definition.",
			]
			suboptions: {
				kind: {
					description: [
						"The type of cluster.",
					]
					choices: [
						"hadoop",
						"spark",
						"hbase",
						"storm",
					]
				}
				gateway_rest_username: description: [
					"Gateway REST user name.",
				]
				gateway_rest_password: description: [
					"Gateway REST password.",
				]
			}
		}
		compute_profile_roles: {
			description: [
				"The list of roles in the cluster.",
			]
			type: "list"
			suboptions: {
				name: {
					description: [
						"The name of the role.",
					]
					choices: [
						"headnode",
						"workernode",
						"zookepernode",
					]
				}
				min_instance_count: description: [
					"The minimum instance count of the cluster.",
				]
				target_instance_count: description: [
					"The instance count of the cluster.",
				]
				vm_size: description: [
					"The size of the VM.",
				]
				linux_profile: {
					description: [
						"The Linux OS profile.",
					]
					suboptions: {
						username: description: [
							"SSH user name.",
						]
						password: description: [
							"SSH password.",
						]
					}
				}
			}
		}
		storage_accounts: {
			description: [
				"The list of storage accounts in the cluster.",
			]
			type: "list"
			suboptions: {
				name: description: [
					"Blob storage endpoint. For example storage_account_name.blob.core.windows.net.",
				]
				is_default: description: [
					"Whether or not the storage account is the default storage account.",
				]
				container: description: [
					"The container in the storage account.",
				]
				key: description: [
					"The storage account access key.",
				]
			}
		}
		state: {
			description: [
				"Assert the state of the cluster.",
				"Use C(present) to create or update a cluster and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
