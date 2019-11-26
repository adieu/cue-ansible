package ansible

module: gcp_container_cluster: {
	module: "gcp_container_cluster"
	description: [
		"A Google Container Engine cluster.",
	]
	short_description: "Creates a GCP Cluster"
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
				"The name of this cluster. The name must be unique within this project and location, and can be up to 40 characters. Must be Lowercase letters, numbers, and hyphens only. Must start with a letter. Must end with a number or a letter.",
			]

			required: false
			type:     "str"
		}
		description: {
			description: [
				"An optional description of this cluster.",
			]
			required: false
			type:     "str"
		}
		initial_node_count: {
			description: [
				"The number of nodes to create in this cluster. You must ensure that your Compute Engine resource quota is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a \"nodePool\" object, since this configuration (along with the \"nodeConfig\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a nodePool at the same time.",
				"This field has been deprecated. Please use nodePool.initial_node_count instead.",
			]
			required: false
			type:     "int"
		}
		node_config: {
			description: [
				"Parameters used in creating the cluster's nodes.",
				"For requests, this field should only be used in lieu of a \"nodePool\" object, since this configuration (along with the \"initialNodeCount\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a nodePool at the same time. For responses, this field will be populated with the node configuration of the first node pool. If unspecified, the defaults are used.",
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
						"A list of hardware accelerators to be attached to each node. See U(https://cloud.google.com/compute/docs/gpus) for more information about support for GPUs.",
					]

					required:      false
					type:          "list"
					version_added: "2.9"
					suboptions: {
						accelerator_count: {
							description: [
								"The number of accelerator cards exposed to an instance.",
							]
							required: false
							type:     "str"
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
						"Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.",
					]

					required:      false
					type:          "str"
					version_added: "2.9"
				}
				taints: {
					description: [
						"List of kubernetes taints to be applied to each node.",
						"For more information, including usage and the valid values, see: U(https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/) .",
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
								"Some valid choices include: \"EFFECT_UNSPECIFIED\", \"NO_SCHEDULE\", \"PREFER_NO_SCHEDULE\", \"NO_EXECUTE\"",
							]

							required: false
							type:     "str"
						}
					}
				}
			}
		}
		master_auth: {
			description: [
				"The authentication information for accessing the master endpoint.",
			]
			required: false
			type:     "dict"
			suboptions: {
				username: {
					description: [
						"The username to use for HTTP basic authentication to the master endpoint.",
					]
					required: false
					type:     "str"
				}
				password: {
					description: [
						"The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password with a minimum of 16 characters.",
					]

					required: false
					type:     "str"
				}
				client_certificate_config: {
					description: [
						"Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.",
					]

					required:      false
					type:          "dict"
					version_added: "2.9"
					suboptions: issue_client_certificate: {
						description: [
							"Issue a client certificate.",
						]
						required: false
						type:     "bool"
					}
				}
			}
		}
		logging_service: {
			description: [
				"The logging service the cluster should use to write logs. Currently available options: logging.googleapis.com - the Google Cloud Logging service.",
				"none - no logs will be exported from the cluster.",
				"if left as an empty string,logging.googleapis.com will be used.",
				"Some valid choices include: \"logging.googleapis.com\", \"none\"",
			]
			required: false
			type:     "str"
		}
		monitoring_service: {
			description: [
				"The monitoring service the cluster should use to write metrics.",
				"Currently available options: monitoring.googleapis.com - the Google Cloud Monitoring service.",
				"none - no metrics will be exported from the cluster.",
				"if left as an empty string, monitoring.googleapis.com will be used.",
				"Some valid choices include: \"monitoring.googleapis.com\", \"none\"",
			]
			required: false
			type:     "str"
		}
		network: {
			description: [
				"The name of the Google Compute Engine network to which the cluster is connected. If left unspecified, the default network will be used.",
			]

			required: false
			type:     "str"
		}
		private_cluster_config: {
			description: [
				"Configuration for a private cluster.",
			]
			required:      false
			type:          "dict"
			version_added: "2.8"
			suboptions: {
				enable_private_nodes: {
					description: [
						"Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.",
					]

					required: false
					type:     "bool"
				}
				enable_private_endpoint: {
					description: [
						"Whether the master's internal IP address is used as the cluster endpoint.",
					]
					required: false
					type:     "bool"
				}
				master_ipv4_cidr_block: {
					description: [
						"The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.",
					]

					required: false
					type:     "str"
				}
			}
		}
		cluster_ipv4_cidr: {
			description: [
				"The IP address range of the container pods in this cluster, in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8.",
			]

			required: false
			type:     "str"
		}
		addons_config: {
			description: [
				"Configurations for the various addons available to run in the cluster.",
			]
			required: false
			type:     "dict"
			suboptions: {
				http_load_balancing: {
					description: [
						"Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.",
					]

					required: false
					type:     "dict"
					suboptions: disabled: {
						description: [
							"Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.",
						]

						required: false
						type:     "bool"
					}
				}
				horizontal_pod_autoscaling: {
					description: [
						"Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.",
					]

					required: false
					type:     "dict"
					suboptions: disabled: {
						description: [
							"Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service.",
						]

						required: false
						type:     "bool"
					}
				}
				network_policy_config: {
					description: [
						"Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.",
					]

					required:      false
					type:          "dict"
					version_added: "2.9"
					suboptions: disabled: {
						description: [
							"Whether NetworkPolicy is enabled for this cluster.",
						]
						required: false
						type:     "bool"
					}
				}
			}
		}
		subnetwork: {
			description: [
				"The name of the Google Compute Engine subnetwork to which the cluster is connected.",
			]
			required: false
			type:     "str"
		}
		locations: {
			description: [
				"The list of Google Compute Engine zones in which the cluster's nodes should be located.",
			]

			required: false
			type:     "list"
			aliases: [
				"nodeLocations",
			]
			version_added: "2.9"
		}
		resource_labels: {
			description: [
				"The resource labels for the cluster to use to annotate any related Google Compute Engine resources.",
			]

			required:      false
			type:          "dict"
			version_added: "2.9"
		}
		legacy_abac: {
			description: [
				"Configuration for the legacy ABAC authorization mode.",
			]
			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: enabled: {
				description: [
					"Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.",
				]

				required: false
				type:     "bool"
			}
		}
		network_policy: {
			description: [
				"Configuration options for the NetworkPolicy feature.",
			]
			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: {
				provider: {
					description: [
						"The selected network policy provider.",
						"Some valid choices include: \"PROVIDER_UNSPECIFIED\", \"CALICO\"",
					]
					required: false
					type:     "str"
				}
				enabled: {
					description: [
						"Whether network policy is enabled on the cluster.",
					]
					required: false
					type:     "bool"
				}
			}
		}
		default_max_pods_constraint: {
			description: [
				"The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster.",
				"Only honored if cluster created with IP Alias support.",
			]
			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: max_pods_per_node: {
				description: [
					"Constraint enforced on the max num of pods per node.",
				]
				required: false
				type:     "str"
			}
		}
		ip_allocation_policy: {
			description: [
				"Configuration for controlling how IPs are allocated in the cluster.",
			]
			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: {
				use_ip_aliases: {
					description: [
						"Whether alias IPs will be used for pod IPs in the cluster.",
					]
					required: false
					type:     "bool"
				}
				create_subnetwork: {
					description: [
						"Whether a new subnetwork will be created automatically for the cluster.",
					]
					required: false
					type:     "bool"
				}
				subnetwork_name: {
					description: [
						"A custom subnetwork name to be used if createSubnetwork is true.",
						"If this field is empty, then an automatic name will be chosen for the new subnetwork.",
					]

					required: false
					type:     "str"
				}
				cluster_secondary_range_name: {
					description: [
						"The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses.",
						"This must be an existing secondary range associated with the cluster subnetwork .",
					]

					required: false
					type:     "str"
				}
				services_secondary_range_name: {
					description: [
						"The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork.",
					]

					required: false
					type:     "str"
				}
				cluster_ipv4_cidr_block: {
					description: [
						"The IP address range for the cluster pod IPs. If this field is set, then cluster.cluster_ipv4_cidr must be left blank.",
						"This field is only applicable when useIpAliases is true.",
						"Set to blank to have a range chosen with the default size.",
						"Set to /netmask (e.g. /14) to have a range chosen with a specific netmask.",
					]
					required: false
					type:     "str"
				}
				node_ipv4_cidr_block: {
					description: [
						"The IP address range of the instance IPs in this cluster.",
						"This is applicable only if createSubnetwork is true.",
						"Set to blank to have a range chosen with the default size.",
						"Set to /netmask (e.g. /14) to have a range chosen with a specific netmask.",
					]
					required: false
					type:     "str"
				}
				services_ipv4_cidr_block: {
					description: [
						"The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size.",
						"This field is only applicable when useIpAliases is true.",
						"Set to blank to have a range chosen with the default size.",
						"Set to /netmask (e.g. /14) to have a range chosen with a specific netmask.",
					]
					required: false
					type:     "str"
				}
				tpu_ipv4_cidr_block: {
					description: [
						"The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size.",
						"This field is only applicable when useIpAliases is true.",
						"If unspecified, the range will use the default size.",
						"Set to /netmask (e.g. /14) to have a range chosen with a specific netmask.",
					]
					required: false
					type:     "str"
				}
			}
		}
		enable_tpu: {
			description: [
				"Enable the ability to use Cloud TPUs in this cluster.",
			]
			required:      false
			type:          "bool"
			version_added: "2.9"
		}
		tpu_ipv4_cidr_block: {
			description: [
				"The IP address range of the Cloud TPUs in this cluster, in CIDR notation.",
			]
			required:      false
			type:          "str"
			version_added: "2.9"
		}
		master_authorized_networks_config: {
			description: [
				"Configuration for controlling how IPs are allocated in the cluster.",
			]
			required:      false
			type:          "dict"
			version_added: "2.10"
			suboptions: {
				enabled: {
					description: [
						"Whether or not master authorized networks is enabled.",
					]
					required: false
					type:     "bool"
				}
				cidr_blocks: {
					description: [
						"Define up to 50 external networks that could access Kubernetes master through HTTPS.",
					]

					required: false
					type:     "list"
					suboptions: {
						display_name: {
							description: [
								"Optional field used to identify cidr blocks.",
							]
							required: false
							type:     "str"
						}
						cidr_block: {
							description: [
								"Block specified in CIDR notation.",
							]
							required: false
							type:     "str"
						}
					}
				}
			}
		}
		location: {
			description: [
				"The location where the cluster is deployed.",
			]
			required: true
			type:     "str"
			aliases: [
				"zone",
			]
			version_added: "2.8"
		}
		kubectl_path: {
			description: [
				"The path that the kubectl config file will be written to.",
				"The file will not be created if this path is unset.",
				"Any existing file at this path will be completely overwritten.",
				"This requires the PyYaml library.",
			]
			required:      false
			type:          "str"
			version_added: "2.9"
		}
		kubectl_context: {
			description: [
				"The name of the context for the kubectl config file. Will default to the cluster name.",
			]

			required:      false
			type:          "str"
			version_added: "2.9"
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
