package ansible

module: na_ontap_net_subnet: {
	module:            "na_ontap_net_subnet"
	short_description: "NetApp ONTAP Create, delete, modify network subnets."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "Storage Engineering (@Albinpopote) <ansible@black-perl.fr>"
	description: [
		"Create, modify, destroy the network subnet",
	]
	options: {
		state: {
			description: [
				"Whether the specified network interface group should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		broadcast_domain: {
			description: [
				"Specify the required broadcast_domain name for the subnet.",
				"A broadcast domain can not be modified after the subnet has been created",
			]
			required: true
		}

		name: {
			description: [
				"Specify the subnet name.",
			]
			required: true
		}

		from_name: description: [
			"Name of the subnet to be renamed",
		]

		gateway: description: [
			"Specify the gateway for the default route of the subnet.",
		]

		ipspace: description: [
			"Specify the ipspace for the subnet.",
			"The default value for this parameter is the default IPspace, named 'Default'.",
		]

		ip_ranges: description: [
			"Specify the list of IP address ranges associated with the subnet.",
		]

		subnet: {
			description: [
				"Specify the subnet (ip and mask).",
			]
			required: true
		}
	}
}
