package ansible

module: na_ontap_vscan_scanner_pool: {
	module:            "na_ontap_vscan_scanner_pool"
	short_description: "NetApp ONTAP Vscan Scanner Pools Configuration."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Configure a Vscan Scanner Pool",
	]
	options: {
		state: {
			description: [
				"Whether a Vscan Scanner pool is present or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		vserver: {
			description: [
				"the name of the data vserver to use.",
			]
			required: true
		}

		hostnames: description: [
			"List of hostnames of Vscan servers which are allowed to connect to Data ONTAP",
		]

		privileged_users: description: [
			"List of privileged usernames. Username must be in the form \"domain-name\\user-name\"",
		]

		scanner_pool: {
			description: [
				"the name of the virus scanner pool",
			]
			required: true
		}

		scanner_policy: {
			description: [
				"The name of the Virus scanner Policy",
			]
			choices: ["primary", "secondary", "idle"]
		}
	}
}
