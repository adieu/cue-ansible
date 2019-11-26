package ansible

module: os_coe_cluster_template: {
	module:                         "os_coe_cluster_template"
	short_description:              "Add/Remove COE cluster template from OpenStack Cloud"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.7"
	author:                         "Feilong Wang (@flwang)"
	description: [
		"Add or Remove COE cluster template from the OpenStack Container Infra service.",
	]

	options: {
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
		coe: {
			description: [
				"The Container Orchestration Engine for this clustertemplate",
			]
			choices: ["kubernetes", "swarm", "mesos"]
		}
		dns_nameserver: {
			description: [
				"The DNS nameserver address",
			]
			default: "8.8.8.8"
		}
		docker_storage_driver: {
			description: [
				"Docker storage driver",
			]
			choices: ["devicemapper", "overlay", "overlay2"]
		}
		docker_volume_size: description: [
			"The size in GB of the docker volume",
		]
		external_network_id: description: [
			"The external network to attach to the Cluster",
		]
		fixed_network: description: [
			"The fixed network name to attach to the Cluster",
		]
		fixed_subnet: description: [
			"The fixed subnet name to attach to the Cluster",
		]
		flavor_id: description: [
			"The flavor of the minion node for this ClusterTemplate",
		]
		floating_ip_enabled: {
			description: [
				"Indicates whether created clusters should have a floating ip or not",
			]
			type:    "bool"
			default: "yes"
		}
		keypair_id: description: [
			"Name or ID of the keypair to use.",
		]
		image_id: description: [
			"Image id the cluster will be based on",
		]
		labels: description: [
			"One or more key/value pairs",
		]
		http_proxy: description: [
			"Address of a proxy that will receive all HTTP requests and relay them The format is a URL including a port number",
		]

		https_proxy: description: [
			"Address of a proxy that will receive all HTTPS requests and relay them. The format is a URL including a port number",
		]

		master_flavor_id: description: [
			"The flavor of the master node for this ClusterTemplate",
		]
		master_lb_enabled: {
			description: [
				"Indicates whether created clusters should have a load balancer for master nodes or not",
			]

			type:    "bool"
			default: "no"
		}
		name: {
			description: [
				"Name that has to be given to the cluster template",
			]
			required: true
		}
		network_driver: {
			description: [
				"The name of the driver used for instantiating container networks",
			]
			choices: ["flannel", "calico", "docker"]
		}
		no_proxy: description: [
			"A comma separated list of IPs for which proxies should not be used in the cluster",
		]

		public: {
			description: [
				"Indicates whether the ClusterTemplate is public or not",
			]
			type:    "bool"
			default: "no"
		}
		registry_enabled: {
			description: [
				"Indicates whether the docker registry is enabled",
			]
			type:    "bool"
			default: "no"
		}
		server_type: {
			description: [
				"Server type for this ClusterTemplate",
			]
			choices: ["vm", "bm"]
			default: "vm"
		}
		state: {
			description: [
				"Indicate desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		tls_disabled: {
			description: [
				"Indicates whether the TLS should be disabled",
			]
			type:    "bool"
			default: "no"
		}
		volume_driver: {
			description: [
				"The name of the driver used for instantiating container volumes",
			]
			choices: ["cinder", "rexray"]
		}
	}
	requirements: ["openstacksdk"]
}
