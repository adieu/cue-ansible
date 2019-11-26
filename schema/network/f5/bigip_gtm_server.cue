package ansible

module: bigip_gtm_server: {
	module:            "bigip_gtm_server"
	short_description: "Manages F5 BIG-IP GTM servers"
	description: [
		"Manage BIG-IP server configuration. This module is able to manipulate the server definitions in a BIG-IP.",
	]

	version_added: 2.5
	options: {
		name: {
			description: [
				"The name of the server.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"The server state. If C(absent), an attempt to delete the server will be made. This will only succeed if this server is not in use by a virtual server. C(present) creates the server and enables it. If C(enabled), enable the server if it exists. If C(disabled), create the server if needed, and set state to C(disabled).",
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
		datacenter: {
			description: [
				"Data center the server belongs to. When creating a new GTM server, this value is required.",
			]

			type: "str"
		}
		devices: {
			description: [
				"Lists the self IP addresses and translations for each device. When creating a new GTM server, this value is required. This list is a complex list that specifies a number of keys.",
				"The C(name) key specifies a name for the device. The device name must be unique per server. This key is required.",
				"The C(address) key contains an IP address, or list of IP addresses, for the destination server. This key is required.",
				"The C(translation) key contains an IP address to translate the C(address) value above to. This key is optional.",
				"Specifying duplicate C(name) fields is a supported means of providing device addresses. In this scenario, the addresses will be assigned to the C(name)'s list of addresses.",
			]

			type: "list"
		}
		server_type: {
			description: [
				"Specifies the server type. The server type determines the metrics that the system can collect from the server. When creating a new GTM server, the default value C(bigip) is used.",
			]

			type: "str"
			choices: [
				"alteon-ace-director",
				"cisco-css",
				"cisco-server-load-balancer",
				"generic-host",
				"radware-wsd",
				"windows-nt-4.0",
				"bigip",
				"cisco-local-director-v2",
				"extreme",
				"generic-load-balancer",
				"sun-solaris",
				"cacheflow",
				"cisco-local-director-v3",
				"foundry-server-iron",
				"netapp",
				"windows-2000-server",
			]
			aliases: [
				"product",
			]
		}
		link_discovery: {
			description: [
				"Specifies whether the system auto-discovers the links for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.",
				"If you set this parameter to C(enabled) or C(enabled-no-delete), you must also ensure that the C(virtual_server_discovery) parameter is also set to C(enabled) or C(enabled-no-delete).",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
				"enabled-no-delete",
			]
		}
		virtual_server_discovery: {
			description: [
				"Specifies whether the system auto-discovers the virtual servers for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
				"enabled-no-delete",
			]
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
		iquery_options: {
			description: [
				"Specifies whether the Global Traffic Manager uses this BIG-IP system to conduct a variety of probes before delegating traffic to it.",
			]

			suboptions: {
				allow_path: {
					description: [
						"Specifies that the system verifies the logical network route between a data center server and a local DNS server.",
					]

					type: "bool"
				}
				allow_service_check: {
					description: [
						"Specifies that the system verifies that an application on a server is running, by remotely running the application using an external service checker program.",
					]

					type: "bool"
				}
				allow_snmp: {
					description: [
						"Specifies that the system checks the performance of a server running an SNMP agent.",
					]

					type: "bool"
				}
			}
			type:          "dict"
			version_added: 2.7
		}
		monitors: {
			description: [
				"Specifies the health monitors that the system currently uses to monitor this resource.",
				"When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.",
			]

			type:          "list"
			version_added: 2.8
		}
		availability_requirements: {
			description: [
				"Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.",
			]

			suboptions: {
				type: {
					description: [
						"Monitor rule type when C(monitors) is specified.",
						"When creating a new pool, if this value is not specified, the default of 'all' will be used.",
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
			type:          "dict"
			version_added: 2.8
		}
		prober_preference: {
			description: [
				"Specifies the type of prober to use to monitor this server's resources.",
				"This option is ignored in C(TMOS) version C(12.x).",
				"From C(TMOS) version C(13.x) and up, when prober_preference is set to C(pool) a C(prober_pool) parameter must be specified.",
			]

			type: "str"
			choices: [
				"inside-datacenter",
				"outside-datacenter",
				"inherit",
				"pool",
			]
			version_added: 2.8
		}
		prober_fallback: {
			description: [
				"Specifies the type of prober to use to monitor this server's resources when the preferred prober is not available.",
				"This option is ignored in C(TMOS) version C(12.x).",
				"From C(TMOS) version C(13.x) and up, when prober_preference is set to C(pool) a C(prober_pool) parameter must be specified.",
				"The choices are mutually exclusive with prober_preference parameter, with the exception of C(any-available) or C(none) option.",
			]

			type: "str"
			choices: [
				"any",
				"inside-datacenter",
				"outside-datacenter",
				"inherit",
				"pool",
				"none",
			]
			version_added: 2.8
		}
		prober_pool: {
			description: [
				"Specifies the name of the prober pool to use to monitor this server's resources.",
				"From C(TMOS) version C(13.x) and up, this parameter is mandatory when C(prober_preference) is set to C(pool).",
				"Format of the name can be either be prepended by partition (C(/Common/foo)), or specified just as an object name (C(foo)).",
				"In C(TMOS) version C(12.x) prober_pool can be set to empty string to revert to default setting of inherit.",
			]
			type:          "str"
			version_added: 2.8
		}
		limits: {
			description: [
				"Specifies resource thresholds or limit requirements at the pool member level.",
				"When you enable one or more limit settings, the system then uses that data to take members in and out of service.",
				"You can define limits for any or all of the limit settings. However, when a member does not meet the resource threshold limit requirement, the system marks the member as unavailable and directs load-balancing traffic to another resource.",
			]

			suboptions: {
				bits_enabled: {
					description: [
						"Whether the bits limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				packets_enabled: {
					description: [
						"Whether the packets limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				connections_enabled: {
					description: [
						"Whether the current connections limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				cpu_enabled: {
					description: [
						"Whether the CPU limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				memory_enabled: {
					description: [
						"Whether the memory limit it enabled or not.",
						"This parameter allows you to switch on or off the effect of the limit.",
					]
					type: "bool"
				}
				bits_limit: {
					description: [
						"Specifies the maximum allowable data throughput rate, in bits per second, for the member.",
						"If the network traffic volume exceeds this limit, the system marks the member as unavailable.",
					]

					type: "int"
				}
				packets_limit: {
					description: [
						"Specifies the maximum allowable data transfer rate, in packets per second, for the member.",
						"If the network traffic volume exceeds this limit, the system marks the member as unavailable.",
					]

					type: "int"
				}
				connections_limit: {
					description: [
						"Specifies the maximum number of concurrent connections, combined, for all of the member.",
						"If the connections exceed this limit, the system marks the server as unavailable.",
					]

					type: "int"
				}
				cpu_limit: {
					description: [
						"Specifies the percent of CPU usage.",
						"If percent of CPU usage goes above the limit, the system marks the server as unavailable.",
					]
					type: "int"
				}
				memory_limit: {
					description: [
						"Specifies the available memory required by the virtual servers on the server.",
						"If available memory falls below this limit, the system marks the server as unavailable.",
					]
					type: "int"
				}
			}
			type:          "dict"
			version_added: 2.8
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Robert Teller (@r-teller)",
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
