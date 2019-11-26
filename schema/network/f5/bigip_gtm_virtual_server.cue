package ansible

module: bigip_gtm_virtual_server: {
	module:            "bigip_gtm_virtual_server"
	short_description: "Manages F5 BIG-IP GTM virtual servers"
	description: [
		"Manages F5 BIG-IP GTM virtual servers. A GTM server can have many virtual servers associated with it. They are arranged in much the same way that pool members are to pools.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the virtual server.",
			]
			type:          "str"
			version_added: 2.6
		}
		server_name: {
			description: [
				"Specifies the name of the server that the virtual server is associated with.",
			]
			type:          "str"
			version_added: 2.6
		}
		address: {
			description: [
				"Specifies the IP Address of the virtual server.",
				"When creating a new GTM virtual server, this parameter is required.",
			]
			type:          "str"
			version_added: 2.6
		}
		port: {
			description: [
				"Specifies the service port number for the virtual server or pool member. For example, the HTTP service is typically port 80.",
				"To specify all ports, use an C(*).",
				"When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.",
			]

			type: "int"
		}
		translation_address: {
			description: [
				"Specifies the translation IP address for the virtual server.",
				"To unset this parameter, provide an empty string (C(\"\")) as a value.",
				"When creating a new GTM virtual server, if this parameter is not specified, a default of C(::) will be used.",
			]

			type:          "str"
			version_added: 2.6
		}
		translation_port: {
			description: [
				"Specifies the translation port number or service name for the virtual server.",
				"To specify all ports, use an C(*).",
				"When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.",
			]

			type:          "str"
			version_added: 2.6
		}
		availability_requirements: {
			description: [
				"Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.",
			]

			type: "dict"
			suboptions: {
				type: {
					description: [
						"Monitor rule type when C(monitors) is specified.",
						"When creating a new virtual, if this value is not specified, the default of 'all' will be used.",
					]
					type: "str"
					choices: [
						"all",
						"at_least",
						"require",
					]
				}
				at_least: {
					description: [
						"Specifies the minimum number of active health monitors that must be successful before the link is considered up.",
						"This parameter is only relevant when a C(type) of C(at_least) is used.",
						"This parameter will be ignored if a type of either C(all) or C(require) is used.",
					]
					type: "int"
				}
				number_of_probes: {
					description: [
						"Specifies the minimum number of probes that must succeed for this server to be declared up.",
						"When creating a new virtual server, if this parameter is specified, then the C(number_of_probers) parameter must also be specified.",
						"The value of this parameter should always be B(lower) than, or B(equal to), the value of C(number_of_probers).",
						"This parameter is only relevant when a C(type) of C(require) is used.",
						"This parameter will be ignored if a type of either C(all) or C(at_least) is used.",
					]
					type: "int"
				}
				number_of_probers: {
					description: [
						"Specifies the number of probers that should be used when running probes.",
						"When creating a new virtual server, if this parameter is specified, then the C(number_of_probes) parameter must also be specified.",
						"The value of this parameter should always be B(higher) than, or B(equal to), the value of C(number_of_probers).",
						"This parameter is only relevant when a C(type) of C(require) is used.",
						"This parameter will be ignored if a type of either C(all) or C(at_least) is used.",
					]
					type: "int"
				}
			}
			version_added: 2.6
		}
		monitors: {
			description: [
				"Specifies the health monitors that the system currently uses to monitor this resource.",
				"When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.",
			]

			type:          "list"
			version_added: 2.6
		}
		virtual_server_dependencies: {
			description: [
				"Specifies the virtual servers on which the current virtual server depends.",
				"If any of the specified servers are unavailable, the current virtual server is also listed as unavailable.",
			]
			type: "list"
			suboptions: {
				server: {
					description: [
						"Server which the dependant virtual server is part of.",
					]
					type:     "str"
					required: true
				}
				virtual_server: {
					description: [
						"Virtual server to depend on.",
					]
					type:     "str"
					required: true
				}
			}
			version_added: 2.6
		}
		link: {
			description: [
				"Specifies a link to assign to the server or virtual server.",
			]
			type:          "str"
			version_added: 2.6
		}
		limits: {
			description: [
				"Specifies resource thresholds or limit requirements at the server level.",
				"When you enable one or more limit settings, the system then uses that data to take servers in and out of service.",
				"You can define limits for any or all of the limit settings. However, when a server does not meet the resource threshold limit requirement, the system marks the entire server as unavailable and directs load-balancing traffic to another resource.",
				"The limit settings available depend on the type of server.",
			]
			type: "dict"
			suboptions: {
				bits_enabled: {
					description: [
						"Whether the bits limit is enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				packets_enabled: {
					description: [
						"Whether the packets limit is enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				connections_enabled: {
					description: [
						"Whether the current connections limit is enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				bits_limit: {
					description: [
						"Specifies the maximum allowable data throughput rate, in bits per second, for the virtual servers on the server.",
						"If the network traffic volume exceeds this limit, the system marks the server as unavailable.",
					]
					type: "int"
				}
				packets_limit: {
					description: [
						"Specifies the maximum allowable data transfer rate, in packets per second, for the virtual servers on the server.",
						"If the network traffic volume exceeds this limit, the system marks the server as unavailable.",
					]
					type: "int"
				}
				connections_limit: {
					description: [
						"Specifies the maximum number of concurrent connections, combined, for all of the virtual servers on the server.",
						"If the connections exceed this limit, the system marks the server as unavailable.",
					]
					type: "int"
				}
			}
			version_added: 2.6
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.6
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
				"enabled",
				"disabled",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
