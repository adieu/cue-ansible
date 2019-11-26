package ansible

module: os_loadbalancer: {
	module:                         "os_loadbalancer"
	short_description:              "Add/Delete load balancer from OpenStack Cloud"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.7"
	author:                         "Lingxian Kong (@lingxiankong)"
	description: [
		"Add or Remove load balancer from the OpenStack load-balancer service(Octavia). Load balancer update is not supported for now.",
	]

	options: {
		name: {
			description: [
				"Name that has to be given to the load balancer",
			]
			required: true
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		vip_network: description: [
			"The name or id of the network for the virtual IP of the load balancer. One of I(vip_network), I(vip_subnet), or I(vip_port) must be specified for creation.",
		]

		vip_subnet: description: [
			"The name or id of the subnet for the virtual IP of the load balancer. One of I(vip_network), I(vip_subnet), or I(vip_port) must be specified for creation.",
		]

		vip_port: description: [
			"The name or id of the load balancer virtual IP port. One of I(vip_network), I(vip_subnet), or I(vip_port) must be specified for creation.",
		]

		vip_address: description: [
			"IP address of the load balancer virtual IP.",
		]
		public_ip_address: description: [
			"Public IP address associated with the VIP.",
		]
		auto_public_ip: {
			description: [
				"Allocate a public IP address and associate with the VIP automatically.",
			]
			type:    "bool"
			default: "no"
		}
		public_network: description: [
			"The name or ID of a Neutron external network.",
		]
		delete_public_ip: {
			description: [
				"When C(state=absent) and this option is true, any public IP address associated with the VIP will be deleted along with the load balancer.",
			]

			type:    "bool"
			default: "no"
		}
		listeners: {
			description: [
				"A list of listeners that attached to the load balancer.",
			]
			suboptions: {
				name: description: [
					"The listener name or ID.",
				]
				protocol: {
					description: [
						"The protocol for the listener.",
					]
					default: "HTTP"
				}
				protocol_port: {
					description: [
						"The protocol port number for the listener.",
					]
					default: 80
				}
				pool: {
					description: [
						"The pool attached to the listener.",
					]
					suboptions: {
						name: description: [
							"The pool name or ID.",
						]
						protocol: {
							description: [
								"The protocol for the pool.",
							]
							default: "HTTP"
						}
						lb_algorithm: {
							description: [
								"The load balancing algorithm for the pool.",
							]
							default: "ROUND_ROBIN"
						}
						members: {
							description: [
								"A list of members that added to the pool.",
							]
							suboptions: {
								name: description: [
									"The member name or ID.",
								]
								address: description: [
									"The IP address of the member.",
								]
								protocol_port: {
									description: [
										"The protocol port number for the member.",
									]
									default: 80
								}
								subnet: description: [
									"The name or ID of the subnet the member service is accessible from.",
								]
							}
						}
					}
				}
			}
		}

		wait: {
			description: [
				"If the module should wait for the load balancer to be created or deleted.",
			]

			type:    "bool"
			default: "yes"
		}
		timeout: {
			description: [
				"The amount of time the module should wait.",
			]
			default: 180
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: ["openstacksdk"]
}
