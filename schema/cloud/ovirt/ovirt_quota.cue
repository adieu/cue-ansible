package ansible

module: ovirt_quota: {
	module:            "ovirt_quota"
	short_description: "Module to manage datacenter quotas in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage datacenter quotas in oVirt/RHV",
	]
	options: {
		id: {
			description: [
				"ID of the quota to manage.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the quota to manage.",
			]
			required: true
		}
		state: {
			description: [
				"Should the quota be present/absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		data_center: {
			description: [
				"Name of the datacenter where quota should be managed.",
			]
			required: true
		}
		description: description: [
			"Description of the quota to manage.",
		]
		cluster_threshold: {
			description: [
				"Cluster threshold(soft limit) defined in percentage (0-100).",
			]
			aliases: [
				"cluster_soft_limit",
			]
		}
		cluster_grace: {
			description: [
				"Cluster grace(hard limit) defined in percentage (1-100).",
			]
			aliases: [
				"cluster_hard_limit",
			]
		}
		storage_threshold: {
			description: [
				"Storage threshold(soft limit) defined in percentage (0-100).",
			]
			aliases: [
				"storage_soft_limit",
			]
		}
		storage_grace: {
			description: [
				"Storage grace(hard limit) defined in percentage (1-100).",
			]
			aliases: [
				"storage_hard_limit",
			]
		}
		clusters: {
			description: [
				"List of dictionary of cluster limits, which is valid to specific cluster.",
				"If cluster isn't specified it's valid to all clusters in system:",
			]
			suboptions: {
				cluster: description: [
					"Name of the cluster.",
				]
				memory: description: [
					"Memory limit (in GiB).",
				]
				cpu: description: [
					"CPU limit.",
				]
			}
		}
		storages: {
			description: [
				"List of dictionary of storage limits, which is valid to specific storage.",
				"If storage isn't specified it's valid to all storages in system:",
			]
			suboptions: {
				storage: description: [
					"Name of the storage.",
				]
				size: description: [
					"Size limit (in GiB).",
				]
			}
		}
	}
	extends_documentation_fragment: "ovirt"
}
