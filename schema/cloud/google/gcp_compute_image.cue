package ansible

module: gcp_compute_image: {
	module: "gcp_compute_image"
	description: [
		"Represents an Image resource.",
		"Google Compute Engine uses operating system images to create the root persistent disks for your instances. You specify an image when you create an instance. Images contain a boot loader, an operating system, and a root file system. Linux operating system images are also capable of running containers on Compute Engine.",
		"Images can be either public or custom.",
		"Public images are provided and maintained by Google, open-source communities, and third-party vendors. By default, all projects have access to these images and can use them to create instances. Custom images are available only to your project. You can create a custom image from root persistent disks and other images. Then, use the custom image to create an instance.",
	]

	short_description: "Creates a GCP Image"
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
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		disk_size_gb: {
			description: [
				"Size of the image when restored onto a persistent disk (in GB).",
			]
			required: false
			type:     "int"
		}
		family: {
			description: [
				"The name of the image family to which this image belongs. You can create disks by specifying an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.",
			]

			required: false
			type:     "str"
		}
		guest_os_features: {
			description: [
				"A list of features to enable on the guest operating system.",
				"Applicable only for bootable images.",
			]
			required: false
			type:     "list"
			suboptions: type: {
				description: [
					"The type of supported feature.",
					"Some valid choices include: \"MULTI_IP_SUBNET\", \"SECURE_BOOT\", \"UEFI_COMPATIBLE\", \"VIRTIO_SCSI_MULTIQUEUE\", \"WINDOWS\"",
				]

				required: false
				type:     "str"
			}
		}
		image_encryption_key: {
			description: [
				"Encrypts the image using a customer-supplied encryption key.",
				"After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image) .",
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
		labels: {
			description: [
				"Labels to apply to this Image.",
			]
			required:      false
			type:          "dict"
			version_added: "2.8"
		}
		licenses: {
			description: [
				"Any applicable license URI.",
			]
			required: false
			type:     "list"
		}
		name: {
			description: [
				"Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		raw_disk: {
			description: [
				"The parameters of the raw disk image.",
			]
			required: false
			type:     "dict"
			suboptions: {
				container_type: {
					description: [
						"The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.",
						"Some valid choices include: \"TAR\"",
					]
					required: false
					type:     "str"
				}
				sha1_checksum: {
					description: [
						"An optional SHA1 checksum of the disk image before unpackaging.",
						"This is provided by the client when the disk image is created.",
					]
					required: false
					type:     "str"
				}
				source: {
					description: [
						"The full Google Cloud Storage URL where disk storage is stored You must provide either this property or the sourceDisk property but not both.",
					]

					required: true
					type:     "str"
				}
			}
		}
		source_disk: {
			description: [
				"The source disk to create this image based on.",
				"You must provide either this property or the rawDisk.source property but not both to create an image.",
				"This field represents a link to a Disk resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_disk task and then set this source_disk field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		source_disk_encryption_key: {
			description: [
				"The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.",
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
		source_disk_id: {
			description: [
				"The ID value of the disk used to create this image. This value may be used to determine whether the image was taken from the current or a previous instance of a given disk name.",
			]

			required: false
			type:     "str"
		}
		source_type: {
			description: [
				"The type of the image used to create this disk. The default and only value is RAW .",
				"Some valid choices include: \"RAW\"",
			]
			required: false
			type:     "str"
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/images)",
		"Official Documentation: U(https://cloud.google.com/compute/docs/images)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
