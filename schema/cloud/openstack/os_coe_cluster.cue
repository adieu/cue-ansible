package ansible

module: os_coe_cluster: {
	module:                         "os_coe_cluster"
	short_description:              "Add/Remove COE cluster from OpenStack Cloud"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.8"
	author:                         "Feilong Wang (@flwang)"
	description: [
		"Add or Remove COE cluster from the OpenStack Container Infra service.",
	]
	options: {
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
		cluster_template_id: {
			description: [
				"The template ID of cluster template.",
			]
			required: true
		}
		discovery_url: description: [
			"Url used for cluster node discovery",
		]
		docker_volume_size: description: [
			"The size in GB of the docker volume",
		]
		flavor_id: description: [
			"The flavor of the minion node for this ClusterTemplate",
		]
		keypair: description: [
			"Name of the keypair to use.",
		]
		labels: description: [
			"One or more key/value pairs",
		]
		master_flavor_id: description: [
			"The flavor of the master node for this ClusterTemplate",
		]
		master_count: {
			description: [
				"The number of master nodes for this cluster",
			]
			default: 1
		}
		name: {
			description: [
				"Name that has to be given to the cluster template",
			]
			required: true
		}
		node_count: {
			description: [
				"The number of nodes for this cluster",
			]
			default: 1
		}
		state: {
			description: [
				"Indicate desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		timeout: {
			description: [
				"Timeout for creating the cluster in minutes. Default to 60 mins if not set",
			]

			default: 60
		}
	}
	requirements: ["openstacksdk"]
}
