package ansible

module: na_elementsw_volume_pair: {
	module: "na_elementsw_volume_pair"

	short_description: "NetApp Element Software Volume Pair"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, delete volume pair",
	]

	options: {

		state: {
			description: [
				"Whether the specified volume pair should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		src_volume: {
			description: [
				"Source volume name or volume ID",
			]
			required: true
		}

		src_account: {
			description: [
				"Source account name or ID",
			]
			required: true
		}

		dest_volume: {
			description: [
				"Destination volume name or volume ID",
			]
			required: true
		}

		dest_account: {
			description: [
				"Destination account name or ID",
			]
			required: true
		}

		mode: {
			description: [
				"Mode to start the volume pairing",
			]
			choices: ["async", "sync", "snapshotsonly"]
			default: "async"
		}

		dest_mvip: {
			description: [
				"Destination IP address of the paired cluster.",
			]
			required: true
		}

		dest_username: description: [
			"Destination username for the paired cluster",
			"Optional if this is same as source cluster username.",
		]

		dest_password: description: [
			"Destination password for the paired cluster",
			"Optional if this is same as source cluster password.",
		]
	}
}
