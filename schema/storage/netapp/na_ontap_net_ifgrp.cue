package ansible

module: na_ontap_net_ifgrp: {
	module:            "na_ontap_net_ifgrp"
	short_description: "NetApp Ontap modify network interface group"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, modify ports, destroy the network interface group",
	]
	options: {
		state: {
			description: [
				"Whether the specified network interface group should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		distribution_function: {
			description: [
				"Specifies the traffic distribution function for the ifgrp.",
			]
			choices: ["mac", "ip", "sequential", "port"]
		}

		name: {
			description: [
				"Specifies the interface group name.",
			]
			required: true
		}

		mode: description: [
			"Specifies the link policy for the ifgrp.",
		]

		node: {
			description: [
				"Specifies the name of node.",
			]
			required: true
		}

		ports: {
			aliases: [
				"port",
			]
			description: [
				"List of expected ports to be present in the interface group.",
				"If a port is present in this list, but not on the target, it will be added.",
				"If a port is not in the list, but present on the target, it will be removed.",
				"Make sure the list contains all ports you want to see on the target.",
			]
			version_added: "2.8"
		}
	}
}
