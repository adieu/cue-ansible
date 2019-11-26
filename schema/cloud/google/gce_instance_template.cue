package ansible

module: gce_instance_template: {
	module:            "gce_instance_template"
	version_added:     "2.3"
	short_description: "create or destroy instance templates of Compute Engine of GCP."
	description: [
		"Creates or destroy Google instance templates of Compute Engine of Google Cloud Platform.",
	]

	options: {
		state: {
			description: [
				"The desired state for the instance template.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		name: description: [
			"The name of the GCE instance template.",
		]
		size: {
			description: [
				"The desired machine type for the instance template.",
			]
			default: "f1-micro"
		}
		source: description: [
			"A source disk to attach to the instance. Cannot specify both I(image) and I(source).",
		]

		image: description: [
			"The image to use to create the instance. Cannot specify both both I(image) and I(source).",
		]

		image_family: description: [
			"The image family to use to create the instance. If I(image) has been used I(image_family) is ignored. Cannot specify both I(image) and I(source).",
		]

		disk_type: {
			description: [
				"Specify a C(pd-standard) disk or C(pd-ssd) for an SSD disk.",
			]

			default: "pd-standard"
		}
		disk_auto_delete: {
			description: [
				"Indicate that the boot disk should be deleted when the Node is deleted.",
			]

			default: true
			type:    "bool"
		}
		network: {
			description: [
				"The network to associate with the instance.",
			]
			default: "default"
		}
		subnetwork: description: [
			"The Subnetwork resource name for this instance.",
		]
		can_ip_forward: {
			description: [
				"Set to C(yes) to allow instance to send/receive non-matching src/dst packets.",
			]

			type:    "bool"
			default: "no"
		}
		external_ip: {
			description: [
				"The external IP address to use. If C(ephemeral), a new non-static address will be used.  If C(None), then no external address will be used.  To use an existing static IP address specify address name.",
			]

			default: "ephemeral"
		}
		service_account_email: description: [
			"service account email",
		]
		service_account_permissions: {
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

		automatic_restart: {
			description: [
				"Defines whether the instance should be automatically restarted when it is terminated by Compute Engine.",
			]

			type: "bool"
		}
		preemptible: {
			description: [
				"Defines whether the instance is preemptible.",
			]
			type: "bool"
		}
		tags: description: [
			"a comma-separated list of tags to associate with the instance",
		]
		metadata: description: [
			"a hash/dictionary of custom data for the instance; '{\"key\":\"value\", ...}'",
		]

		description: description: [
			"description of instance template",
		]
		disks: description: [
			"a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).",
		]

		nic_gce_struct: description: [
			"Support passing in the GCE-specific formatted networkInterfaces[] structure.",
		]

		disks_gce_struct: {
			description: [
				"Support passing in the GCE-specific formatted formatted disks[] structure. Case sensitive. see U(https://cloud.google.com/compute/docs/reference/latest/instanceTemplates#resource) for detailed information",
			]

			version_added: "2.4"
		}
		project_id: description: [
			"your GCE project ID",
		]
		pem_file: description: [
			"path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.",
		]

		credentials_file: description: [
			"path to the JSON file associated with the service account email",
		]
		subnetwork_region: {
			version_added: "2.4"
			description: [
				"Region that subnetwork resides in. (Required for subnetwork to successfully complete)",
			]
		}
	}
	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.13.3, >= 0.17.0 if using JSON credentials, >= 0.20.0 if using preemptible option",
	]

	notes: [
		"JSON credentials strongly preferred.",
	]
	author: "Gwenael Pellen (@GwenaelPellenArkeup) <gwenael.pellen@arkeup.com>"
}
