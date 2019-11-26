package ansible

module: na_ontap_broadcast_domain: {
	module:            "na_ontap_broadcast_domain"
	short_description: "NetApp ONTAP manage broadcast domains."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify a ONTAP broadcast domain.",
	]
	options: {
		state: {
			description: [
				"Whether the specified broadcast domain should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Specify the broadcast domain name.",
			]
			required: true
			aliases: [
				"broadcast_domain",
			]
		}
		from_name: {
			description: [
				"Specify the  broadcast domain name to be split into new broadcast domain.",
			]
			version_added: "2.8"
		}
		mtu: description: [
			"Specify the required mtu for the broadcast domain.",
		]
		ipspace: description: [
			"Specify the required ipspace for the broadcast domain.",
			"A domain ipspace can not be modified after the domain has been created.",
		]
		ports: description: [
			"Specify the ports associated with this broadcast domain. Should be comma separated.",
			"It represents the expected state of a list of ports at any time.",
			"Add a port if it is specified in expected state but not in current state.",
			"Delete a port if it is specified in current state but not in expected state.",
			"For split action, it represents the ports to be split from current broadcast domain and added to the new broadcast domain.",
			"if all ports are removed or split from a broadcast domain, the broadcast domain will be deleted automatically.",
		]
	}
}
