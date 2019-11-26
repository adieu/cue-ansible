package ansible

module: gce: {
	module:            "gce"
	version_added:     "1.4"
	short_description: "create or terminate GCE instances"
	description: [
		"Creates or terminates Google Compute Engine (GCE) instances.  See U(https://cloud.google.com/compute) for an overview. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.",
	]

	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_compute_instance) instead."
	}
	options: {
		image: {
			description: [
				"image string to use for the instance (default will follow latest stable debian image)",
			]

			default: "debian-8"
		}
		image_family: {
			description: [
				"image family from which to select the image.  The most recent non-deprecated image in the family will be used.",
			]

			version_added: "2.4"
		}
		external_projects: {
			description: [
				"A list of other projects (accessible with the provisioning credentials) to be searched for the image.",
			]

			version_added: "2.4"
		}
		instance_names: description: [
			"a comma-separated list of instance names to create or destroy",
		]
		machine_type: {
			description: [
				"machine type to use for the instance, use 'n1-standard-1' by default",
			]
			default: "n1-standard-1"
		}
		metadata: description: [
			"a hash/dictionary of custom data for the instance; '{\"key\":\"value\", ...}'",
		]

		service_account_email: {
			version_added: "1.5.1"
			description: [
				"service account email",
			]
		}
		service_account_permissions: {
			version_added: "2.0"
			description: [
				"service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)",
			]

			choices: [
				"bigquery",
				"cloud-platform",
				"compute-ro",
				"compute-rw",
				"useraccounts-ro",
				"useraccounts-rw",
				"datastore",
				"logging-write",
				"monitoring",
				"sql-admin",
				"storage-full",
				"storage-ro",
				"storage-rw",
				"taskqueue",
				"userinfo-email",
			]
		}

		pem_file: {
			version_added: "1.5.1"
			description: [
				"path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.",
			]
		}

		credentials_file: {
			version_added: "2.1.0"
			description: [
				"path to the JSON file associated with the service account email",
			]
		}
		project_id: {
			version_added: "1.5.1"
			description: [
				"your GCE project ID",
			]
		}
		name: {
			description: [
				"either a name of a single instance or when used with 'num_instances', the base name of a cluster of nodes",
			]

			aliases: ["base_name"]
		}
		num_instances: {
			description: [
				"can be used with 'name', specifies the number of nodes to provision using 'name' as a base name",
			]

			version_added: "2.3"
		}
		network: {
			description: [
				"name of the network, 'default' will be used if not specified",
			]
			default: "default"
		}
		subnetwork: {
			description: [
				"name of the subnetwork in which the instance should be created",
			]
			version_added: "2.2"
		}
		persistent_boot_disk: {
			description: [
				"if set, create the instance with a persistent boot disk",
			]
			type:    "bool"
			default: "no"
		}
		disks: {
			description: [
				"a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).",
			]

			version_added: "1.7"
		}
		state: {
			description: [
				"desired state of the resource",
			]
			default: "present"
			choices: ["active", "present", "absent", "deleted", "started", "stopped", "terminated"]
		}
		tags: description: [
			"a comma-separated list of tags to associate with the instance",
		]
		zone: {
			description: [
				"the GCE zone to use. The list of available zones is at U(https://cloud.google.com/compute/docs/regions-zones/regions-zones#available).",
			]
			required: true
			default:  "us-central1-a"
		}
		ip_forward: {
			version_added: "1.9"
			description: [
				"set to C(yes) if the instance can forward ip packets (useful for gateways)",
			]

			type:    "bool"
			default: "no"
		}
		external_ip: {
			version_added: "1.9"
			description: [
				"type of external ip, ephemeral by default; alternatively, a fixed gce ip or ip name can be given. Specify 'none' if no external ip is desired.",
			]
			default: "ephemeral"
		}
		disk_auto_delete: {
			version_added: "1.9"
			description: [
				"if set boot disk will be removed after instance destruction",
			]
			type:    "bool"
			default: "yes"
		}
		preemptible: {
			version_added: "2.1"
			description: [
				"if set to C(yes), instances will be preemptible and time-limited. (requires libcloud >= 0.20.0)",
			]

			type:    "bool"
			default: "no"
		}
		disk_size: {
			description: [
				"The size of the boot disk created for this instance (in GB)",
			]
			default:       10
			version_added: "2.3"
		}
	}

	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.13.3, >= 0.17.0 if using JSON credentials, >= 0.20.0 if using preemptible option",
	]

	notes: [
		"Either I(instance_names) or I(name) is required.",
		"JSON credentials strongly preferred.",
	]
	author: [
		"Eric Johnson (@erjohnso) <erjohnso@google.com>",
		"Tom Melendez (@supertom) <supertom@google.com>",
	]
}
