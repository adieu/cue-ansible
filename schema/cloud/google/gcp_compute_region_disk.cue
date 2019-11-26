package ansible

module: gcp_compute_region_disk: {
	module: "gcp_compute_region_disk"
	description: [
		"Persistent disks are durable storage devices that function similarly to the physical disks in a desktop or a server. Compute Engine manages the hardware behind these devices to ensure data redundancy and optimize performance for you. Persistent disks are available as either standard hard disk drives (HDD) or solid-state drives (SSD).",
		"Persistent disks are located independently from your virtual machine instances, so you can detach or move persistent disks to keep your data even after you delete your instances. Persistent disk performance scales automatically with size, so you can resize your existing persistent disks or add more persistent disks to an instance to meet your performance and storage space requirements.",
		"Add a persistent disk to your instance when you need reliable and affordable storage with consistent performance characteristics.",
	]

	short_description: "Creates a GCP RegionDisk"
	version_added:     "2.8"
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
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		labels: {
			description: [
				"Labels to apply to this disk. A list of key->value pairs.",
			]
			required: false
			type:     "dict"
		}
		licenses: {
			description: [
				"Any applicable publicly visible licenses.",
			]
			required: false
			type:     "list"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		size_gb: {
			description: [
				"Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk.",
				"If you specify this field along with sourceImage or sourceSnapshot, the value of sizeGb must not be less than the size of the sourceImage or the size of the snapshot.",
			]

			required: false
			type:     "int"
		}
		physical_block_size_bytes: {
			description: [
				"Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. Currently supported sizes are 4096 and 16384, other sizes may be added in the future.",
				"If an unsupported value is requested, the error message will list the supported values for the caller's project.",
			]

			required: false
			type:     "int"
		}
		replica_zones: {
			description: [
				"URLs of the zones where the disk should be replicated to.",
			]
			required: true
			type:     "list"
		}
		type: {
			description: [
				"URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk.",
			]

			required: false
			type:     "str"
		}
		region: {
			description: [
				"A reference to the region where the disk resides.",
			]
			required: true
			type:     "str"
		}
		disk_encryption_key: {
			description: [
				"Encrypts the disk using a customer-supplied encryption key.",
				"After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later (e.g. to create a disk snapshot or an image, or to attach the disk to a virtual machine).",
				"Customer-supplied encryption keys do not protect access to metadata of the disk.",
				"If you do not provide an encryption key when creating the disk, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.",
			]

			required: false
			type:     "dict"
			suboptions: raw_key: {
				description: [
					"Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource.",
				]

				required: false
				type:     "str"
			}
		}
		source_snapshot: {
			description: [
				"The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource.",
				"This field represents a link to a Snapshot resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_snapshot task and then set this source_snapshot field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		source_snapshot_encryption_key: {
			description: [
				"The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.",
			]

			required: false
			type:     "dict"
			suboptions: raw_key: {
				description: [
					"Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource.",
				]

				required: false
				type:     "str"
			}
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
	notes: [
		"API Reference: U(https://cloud.google.com/compute/docs/reference/rest/beta/regionDisks)",
		"Adding or Resizing Regional Persistent Disks: U(https://cloud.google.com/compute/docs/disks/regional-persistent-disk)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
