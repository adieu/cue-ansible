package ansible

module: aws_netapp_cvs_FileSystems: {
	module: "aws_netapp_cvs_FileSystems"

	short_description: "NetApp AWS Cloud Volumes Service Manage FileSystem."
	extends_documentation_fragment: [
		"netapp.awscvs",
	]
	version_added: "2.9"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, Update, Delete fileSystem on AWS Cloud Volumes Service.",
	]

	options: {
		state: {
			description: [
				"Whether the specified fileSystem should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}

		region: {
			description: [
				"The region to which the filesystem belongs to.",
			]
			required: true
			type:     "str"
		}

		creationToken: {
			description: [
				"Name of the filesystem",
			]
			required: true
			type:     "str"
		}

		quotaInBytes: {
			description: [
				"Size of the filesystem",
				"Required for create",
			]
			type: "int"
		}

		serviceLevel: {
			description: [
				"Service Level of a filesystem.",
			]
			choices: ["standard", "premium", "extreme"]
			type: "str"
		}

		exportPolicy: {
			description: [
				"The policy rules to export the filesystem",
			]
			type: "dict"
			suboptions: rules: {
				description: [
					"Set of rules to export the filesystem",
					"Requires allowedClients, access and protocol",
				]
				type: "list"
				suboptions: {
					allowedClients: {
						description: [
							"Comma separated list of ip address blocks of the clients to access the fileSystem",
							"Each address block contains the starting IP address and size for the block",
						]
						type: "str"
					}

					cifs: {
						description: [
							"Enable or disable cifs filesystem",
						]
						type: "bool"
					}

					nfsv3: {
						description: [
							"Enable or disable nfsv3 fileSystem",
						]
						type: "bool"
					}

					nfsv4: {
						description: [
							"Enable or disable nfsv4 filesystem",
						]
						type: "bool"
					}

					ruleIndex: {
						description: [
							"Index number of the rule",
						]
						type: "int"
					}

					unixReadOnly: {
						description: [
							"Should fileSystem have read only permission or not",
						]
						type: "bool"
					}

					unixReadWrite: {
						description: [
							"Should fileSystem have read write permission or not",
						]
						type: "bool"
					}
				}
			}
		}
	}
}
