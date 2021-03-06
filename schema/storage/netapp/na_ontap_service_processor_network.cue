package ansible

module: na_ontap_service_processor_network: {
	module:            "na_ontap_service_processor_network"
	short_description: "NetApp ONTAP service processor network"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify a ONTAP service processor network",
	]
	options: {
		state: {
			description: [
				"Whether the specified service processor network should exist or not.",
			]
			choices: ["present"]
			default: "present"
		}
		address_type: {
			description: [
				"Specify address class.",
			]
			required: true
			choices: ["ipv4", "ipv6"]
		}
		is_enabled: {
			description: [
				"Specify whether to enable or disable the service processor network.",
			]
			required: true
			type:     "bool"
		}
		node: {
			description: [
				"The node where the service processor network should be enabled",
			]
			required: true
		}
		dhcp: {
			description: [
				"Specify dhcp type.",
			]
			choices: ["v4", "none"]
		}
		gateway_ip_address: description: [
			"Specify the gateway ip.",
		]
		ip_address: description: [
			"Specify the service processor ip address.",
		]
		netmask: description: [
			"Specify the service processor netmask.",
		]
		prefix_length: description: [
			"Specify the service processor prefix_length.",
		]
		wait_for_completion: {
			description: [
				"Set this parameter to 'true' for synchronous execution (wait until SP status is successfully updated)",
				"Set this parameter to 'false' for asynchronous execution",
				"For asynchronous, execution exits as soon as the request is sent, without checking SP status",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
}
