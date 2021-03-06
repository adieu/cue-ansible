package ansible

module: purefa_offload: {
	module:            "purefa_offload"
	version_added:     "2.8"
	short_description: "Create, modify and delete NFS or S3 offload targets"
	description: [
		"Create, modify and delete NFS or S3 offload targets.",
		"Only supported on Purity v5.2.0 or higher.",
		"You must have a correctly configured offload network for offload to work.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Define state of offload",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		name: {
			description: [
				"The name of the offload target",
			]
			required: true
			type:     "str"
		}
		protocol: {
			description: [
				"Define which protocol the offload engine uses",
			]
			default: "nfs"
			choices: ["nfs", "s3"]
			type: "str"
		}
		address: {
			description: [
				"The IP or FQDN address of the NFS server",
			]
			type: "str"
		}
		share: {
			description: [
				"NFS export on the NFS server",
			]
			type: "str"
		}
		options: {
			description: [
				"Additional mount options for the NFS share",
				"Supported mount options include I(port), I(rsize), I(wsize), I(nfsvers), and I(tcp) or I(udp)",
			]

			required: false
			default:  ""
			type:     "str"
		}
		access_key: {
			description: [
				"Access Key ID of the S3 target",
			]
			type: "str"
		}
		bucket: {
			description: [
				"Name of the bucket for the S3 target",
			]
			type: "str"
		}
		secret: {
			description: [
				"Secret Access Key for the S3 target",
			]
			type: "str"
		}
		initialize: {
			description: [
				"Define whether to initialize the S3 bucket",
			]
			type:    "bool"
			default: true
		}
	}

	extends_documentation_fragment: ["purestorage.fa"]
}
