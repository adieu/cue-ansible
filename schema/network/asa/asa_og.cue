package ansible

module: asa_og: {
	module:        "asa_og"
	version_added: "2.8"
	author: [
		"Federico Olivieri (@Federico87)",
	]
	short_description: "Manage object groups on a Cisco ASA"
	description: [
		"This module allows you to create and update object-group network/service on Cisco ASA device.",
	]
	options: {
		name: {
			description: [
				"Name of the object group.",
			]
			required: true
		}
		group_type: {
			description: [
				"The object group type.",
			]
			choices: ["network-object", "service-object", "port-object"]
			required: true
		}
		protocol: {
			description: [
				"The protocol for object-group service with port-object.",
			]
			choices: ["udp", "tcp", "tcp-udp"]
		}
		host_ip: {
			description: [
				"The host IP address for object-group network.",
			]
			type: "list"
		}
		description: description: [
			"The description for the object-group.",
		]
		group_object: {
			description: [
				"The group-object for network object-group.",
			]
			type: "list"
		}
		ip_mask: {
			description: [
				"The IP address and mask for network object-group.",
			]
			type: "list"
		}
		port_range: description: [
			"The port range for port-object.",
		]
		port_eq: description: [
			"The single port for port-object.",
		]
		service_cfg: description: [
			"The service-object configuration protocol, direction, range or port.",
		]
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent", "replace"]
		}
	}
}
