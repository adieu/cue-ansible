package ansible

module: na_ontap_ports: {
	module:            "na_ontap_ports"
	short_description: "NetApp ONTAP add/remove ports"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.9"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Add or remove ports for broadcast domain and portset.",
	]

	options: {
		state: {
			description: [
				"Whether the specified port should be added or removed.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}

		vserver: {
			description: [
				"Name of the SVM.",
				"Specify this option when operating on portset.",
			]
			type: "str"
		}

		names: {
			description: [
				"List of ports.",
			]
			type:     "list"
			required: true
		}

		resource_name: {
			description: [
				"name of the portset or broadcast domain.",
			]
			type:     "str"
			required: true
		}

		resource_type: {
			description: [
				"type of the resource to add a port to or remove a port from.",
			]
			choices: ["broadcast_domain", "portset"]
			required: true
			type:     "str"
		}

		ipspace: {
			description: [
				"Specify the required ipspace for the broadcast domain.",
				"A domain ipspace can not be modified after the domain has been created.",
			]
			type: "str"
		}

		portset_type: {
			description: [
				"Protocols accepted for portset.",
			]
			choices: ["fcp", "iscsi", "mixed"]
			type: "str"
		}
	}
}
