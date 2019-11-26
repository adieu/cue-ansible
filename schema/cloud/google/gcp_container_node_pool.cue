package ansible

module: gcp_container_node_pool: {
	module: "gcp_container_node_pool"
	description: [
		"NodePool contains the name and configuration for a cluster's node pool.",
		"Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.",
	]

	short_description: "Creates a GCP NodePool"
	version_added:     "2.6"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		name: {
			description: [
				"The name of the node pool.",
			]
			required: false
			type:     "str"
		}
		config: {
			description: [
				"The node configuration of the pool.",
			]
			required: false
			type:     "dict"
			suboptions: {
				machine_type: {
					description: [
						"The name of a Google Compute Engine machine type (e.g.",
						"n1-standard-1). If unspecified, the default machine type is n1-standard-1.",
					]
					required: false
					type:     "str"
				}
				disk_size_gb: {
					description: [
						"Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.",
					]

					required: false
					type:     "int"
				}
				oauth_scopes: {
					description: [
						"The set of Google API scopes to be made available on all of the node VMs under the \"default\" service account.",
						"The following scopes are recommended, but not required, and by default are not included: U(https://www.googleapis.com/auth/compute) is required for mounting persistent storage on your nodes.",
						"U(https://www.googleapis.com/auth/devstorage.read_only) is required for communicating with gcr.io (the Google Container Registry).",
						"If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.",
					]

					required: false
					type:     "list"
				}
				service_account: {
					description: [
						"The Google Cloud Platform Service Account to be used by the node VMs. If no Service Account is specified, the \"default\" service account is used.",
					]

					required: false
					type:     "str"
				}
				metadata: {
					description: [
						"The metadata key/value pairs assigned to instances in the cluster.",
						"Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the four reserved keys: \"instance-template\", \"kube-env\", \"startup-script\", and \"user-data\" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB.",
						"The total size of all keys and values must be less than 512 KB.",
						"An object containing a list of \"key\": value pairs.",
						"Example: { \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }.",
					]
					required: false
					type:     "dict"
				}
				image_type: {
					description: [
						"The image type to use for this node. Note that for a given image type, the latest version of it will be used.",
					]

					required: false
					type:     "str"
				}
				labels: {
					description: [
						"The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: U(http://kubernetes.io/v1.1/docs/user-guide/labels.html) An object containing a list of \"key\": value pairs.",
						"Example: { \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }.",
					]
					required: false
					type:     "dict"
				}
				local_ssd_count: {
					description: [
						"The number of local SSD disks to be attached to the node.",
						"The limit for this value is dependant upon the maximum number of disks available on a machine per zone. See: U(https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits) for more information.",
					]

					required: false
					type:     "int"
				}
				tags: {
					description: [
						"The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.",
					]

					required: false
					type:     "list"
				}
				preemptible: {
					description: [
						"Whether the nodes are created as preemptible VM instances. See: U(https://cloud.google.com/compute/docs/instances/preemptible) for more information about preemptible VM instances.",
					]

					required: false
					type:     "bool"
				}
				accelerators: {
					description: [
						"A list of hardware accelerators to be attached to each node.",
					]
					required:      false
					type:          "list"
					version_added: "2.9"
					suboptions: {
						accelerator_count: {
							description: [
								"The number of the accelerator cards exposed to an instance.",
							]
							required: false
							type:     "int"
						}
						accelerator_type: {
							description: [
								"The accelerator type resource name.",
							]
							required: false
							type:     "str"
						}
					}
				}
				disk_type: {
					description: [
						"Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd') If unspecified, the default disk type is 'pd-standard' .",
					]

					required:      false
					type:          "str"
					version_added: "2.9"
				}
				min_cpu_platform: {
					description: [
						"Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform .",
					]

					required:      false
					type:          "str"
					version_added: "2.9"
				}
				taints: {
					description: [
						"List of kubernetes taints to be applied to each node.",
					]
					required:      false
					type:          "list"
					version_added: "2.9"
					suboptions: {
						key: {
							description: [
								"Key for taint.",
							]
							required: false
							type:     "str"
						}
						value: {
							description: [
								"Value for taint.",
							]
							required: false
							type:     "str"
						}
						effect: {
							description: [
								"Effect for taint.",
							]
							required: false
							type:     "str"
						}
					}
				}
			}
		}
		initial_node_count: {
			description: [
				"The initial node count for the pool. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota.",
			]

			required: true
			type:     "int"
		}
		version: {
			description: [
				"The version of the Kubernetes of this node.",
			]
			required:      false
			type:          "str"
			version_added: "2.8"
		}
		autoscaling: {
			description: [
				"Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.",
			]

			required: false
			type:     "dict"
			suboptions: {
				enabled: {
					description: [
						"Is autoscaling enabled for this node pool.",
					]
					required: false
					type:     "bool"
				}
				min_node_count: {
					description: [
						"Minimum number of nodes in the NodePool. Must be >= 1 and <= maxNodeCount.",
					]
					required: false
					type:     "int"
				}
				max_node_count: {
					description: [
						"Maximum number of nodes in the NodePool. Must be >= minNodeCount.",
						"There has to enough quota to scale up the cluster.",
					]
					required: false
					type:     "int"
				}
			}
		}
		management: {
			description: [
				"Management configuration for this NodePool.",
			]
			required: false
			type:     "dict"
			suboptions: {
				auto_upgrade: {
					description: [
						"A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.",
					]

					required: false
					type:     "bool"
				}
				auto_repair: {
					description: [
						"A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.",
					]

					required: false
					type:     "bool"
				}
				upgrade_options: {
					description: [
						"Specifies the Auto Upgrade knobs for the node pool.",
					]
					required: false
					type:     "dict"
					suboptions: {}
				}
			}
		}
		max_pods_constraint: {
			description: [
				"The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.",
			]

			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: max_pods_per_node: {
				description: [
					"Constraint enforced on the max num of pods per node.",
				]
				required: false
				type:     "int"
			}
		}
		conditions: {
			description: [
				"Which conditions caused the current node pool state.",
			]
			required:      false
			type:          "list"
			version_added: "2.9"
			suboptions: code: {
				description: [
					"Machine-friendly representation of the condition.",
					"Some valid choices include: \"UNKNOWN\", \"GCE_STOCKOUT\", \"GKE_SERVICE_ACCOUNT_DELETED\", \"GCE_QUOTA_EXCEEDED\", \"SET_BY_OPERATOR\"",
				]

				required: false
				type:     "str"
			}
		}
		cluster: {
			description: [
				"The cluster this node pool belongs to.",
				"This field represents a link to a Cluster resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_container_cluster task and then set this cluster field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		location: {
			description: [
				"The location where the node pool is deployed.",
			]
			required: true
			type:     "str"
			aliases: [
				"region",
				"zone",
			]
			version_added: "2.8"
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
}
