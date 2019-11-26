package ansible

module: azure_rm_loadbalancer: {
	module: "azure_rm_loadbalancer"

	version_added: "2.4"

	short_description: "Manage Azure load balancers"

	description: [
		"Create, update and delete Azure load balancers.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the load balancer exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the load balancer.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the load balancer. Use C(present) to create/update a load balancer, or C(absent) to delete one.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		sku: {
			description: [
				"The load balancer SKU.",
			]
			choices: [
				"Basic",
				"Standard",
			]
			version_added: "2.6"
		}
		frontend_ip_configurations: {
			description: [
				"List of frontend IPs to be used.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the frontend ip configuration.",
					]
					required: true
				}
				public_ip_address: description: [
					"Name of an existing public IP address object in the current resource group to associate with the security group.",
				]
				private_ip_address: {
					description: [
						"The reference of the Public IP resource.",
					]
					version_added: "2.6"
				}
				private_ip_allocation_method: {
					description: [
						"The Private IP allocation method.",
					]
					choices: [
						"Static",
						"Dynamic",
					]
					version_added: "2.6"
				}
				subnet: {
					description: [
						"The reference of the subnet resource.",
						"Should be an existing subnet's resource id.",
					]
					version_added: "2.6"
				}
			}
			version_added: "2.5"
		}
		backend_address_pools: {
			description: [
				"List of backend address pools.",
			]
			suboptions: name: {
				description: [
					"Name of the backend address pool.",
				]
				required: true
			}
			version_added: "2.5"
		}
		probes: {
			description: [
				"List of probe definitions used to check endpoint health.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the probe.",
					]
					required: true
				}
				port: {
					description: [
						"Probe port for communicating the probe. Possible values range from 1 to 65535, inclusive.",
					]
					required: true
				}
				protocol: {
					description: [
						"The protocol of the end point to be probed.",
						"If C(Tcp) is specified, a received ACK is required for the probe to be successful.",
						"If C(Http) or C(Https) is specified, a 200 OK response from the specified URL is required for the probe to be successful.",
					]
					choices: [
						"Tcp",
						"Http",
						"Https",
					]
				}
				interval: {
					description: [
						"The interval, in seconds, for how frequently to probe the endpoint for health status.",
						"Slightly less than half the allocated timeout period, which allows two full probes before taking the instance out of rotation.",
						"The default value is C(15), the minimum value is C(5).",
					]
					default: 15
				}
				fail_count: {
					description: [
						"The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint.",
						"This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure.",
					]
					default: 3
					aliases: [
						"number_of_probes",
					]
				}
				request_path: description: [
					"The URI used for requesting health status from the VM.",
					"Path is required if I(protocol=Http) or I(protocol=Https). Otherwise, it is not allowed.",
				]
			}
			version_added: "2.5"
		}
		inbound_nat_pools: {
			description: [
				"Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer.",
				"Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range.",
				"Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound Nat rules.",
				"Inbound NAT pools are referenced from virtual machine scale sets.",
				"NICs that are associated with individual virtual machines cannot reference an inbound NAT pool.",
				"They have to reference individual inbound NAT rules.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the inbound NAT pool.",
					]
					required: true
				}
				frontend_ip_configuration_name: {
					description: [
						"A reference to frontend IP addresses.",
					]
					required: true
				}
				protocol: {
					description: [
						"IP protocol for the NAT pool.",
					]
					choices: [
						"Tcp",
						"Udp",
						"All",
					]
				}
				frontend_port_range_start: {
					description: [
						"The first port in the range of external ports that will be used to provide inbound NAT to NICs associated with the load balancer.",
						"Acceptable values range between 1 and 65534.",
					]
					required: true
				}
				frontend_port_range_end: {
					description: [
						"The last port in the range of external ports that will be used to provide inbound NAT to NICs associated with the load balancer.",
						"Acceptable values range between 1 and 65535.",
					]
					required: true
				}
				backend_port: description: [
					"The port used for internal connections on the endpoint.",
					"Acceptable values are between 1 and 65535.",
				]
			}
			version_added: "2.5"
		}
		load_balancing_rules: {
			description: [
				"Object collection representing the load balancing rules Gets the provisioning.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the load balancing rule.",
					]
					required: true
				}
				frontend_ip_configuration: {
					description: [
						"A reference to frontend IP addresses.",
					]
					required: true
				}
				backend_address_pool: {
					description: [
						"A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.",
					]
					required: true
				}
				probe: {
					description: [
						"The name of the load balancer probe this rule should use for health checks.",
					]
					required: true
				}
				protocol: {
					description: [
						"IP protocol for the load balancing rule.",
					]
					choices: [
						"Tcp",
						"Udp",
						"All",
					]
				}
				load_distribution: {
					description: [
						"The session persistence policy for this rule; C(Default) is no persistence.",
					]
					choices: [
						"Default",
						"SourceIP",
						"SourceIPProtocol",
					]
					default: "Default"
				}
				frontend_port: description: [
					"The port for the external endpoint.",
					"Frontend port numbers must be unique across all rules within the load balancer.",
					"Acceptable values are between 0 and 65534.",
					"Note that value 0 enables \"Any Port\".",
				]
				backend_port: description: [
					"The port used for internal connections on the endpoint.",
					"Acceptable values are between 0 and 65535.",
					"Note that value 0 enables \"Any Port\".",
				]
				idle_timeout: description: [
					"The timeout for the TCP idle connection.",
					"The value can be set between 4 and 30 minutes.",
					"The default value is C(4) minutes.",
					"This element is only used when the protocol is set to TCP.",
				]
				enable_floating_ip: description: [
					"Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.",
				]
			}
			version_added: "2.5"
		}
		inbound_nat_rules: {
			description: [
				"Collection of inbound NAT Rules used by a load balancer.",
				"Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool.",
				"Inbound NAT pools are referenced from virtual machine scale sets.",
				"NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool.",
				"They have to reference individual inbound NAT rules.",
			]
			suboptions: {
				name: {
					description: [
						"name of the inbound nat rule.",
					]
					required: true
				}
				frontend_ip_configuration: {
					description: [
						"A reference to frontend IP addresses.",
					]
					required: true
				}
				protocol: {
					description: [
						"IP protocol for the inbound nat rule.",
					]
					choices: [
						"Tcp",
						"Udp",
						"All",
					]
				}
				frontend_port: description: [
					"The port for the external endpoint.",
					"Frontend port numbers must be unique across all rules within the load balancer.",
					"Acceptable values are between 0 and 65534.",
					"Note that value 0 enables \"Any Port\".",
				]
				backend_port: description: [
					"The port used for internal connections on the endpoint.",
					"Acceptable values are between 0 and 65535.",
					"Note that value 0 enables \"Any Port\".",
				]
				idle_timeout: description: [
					"The timeout for the TCP idle connection.",
					"The value can be set between 4 and 30 minutes.",
					"The default value is C(4) minutes.",
					"This element is only used when I(protocol=Tcp).",
				]
				enable_floating_ip: description: [
					"Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group.",
					"This setting is required when using the SQL AlwaysOn Availability Groups in SQL server.",
					"This setting can't be changed after you create the endpoint.",
				]
				enable_tcp_reset: description: [
					"Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination.",
					"This element is only used when I(protocol=Tcp).",
				]
			}
			version_added: "2.8"
		}
		public_ip_address_name: {
			description: [
				"(deprecated) Name of an existing public IP address object to associate with the security group.",
				"This option has been deprecated, and will be removed in 2.9. Use I(frontend_ip_configurations) instead.",
			]
			aliases: [
				"public_ip_address",
				"public_ip_name",
				"public_ip",
			]
		}
		probe_port: description: [
			"(deprecated) The port that the health probe will use.",
			"This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.",
		]
		probe_protocol: {
			description: [
				"(deprecated) The protocol to use for the health probe.",
				"This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.",
			]
			choices: [
				"Tcp",
				"Http",
				"Https",
			]
		}
		probe_interval: {
			description: [
				"(deprecated) Time (in seconds) between endpoint health probes.",
				"This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.",
			]
			default: 15
		}
		probe_fail_count: {
			description: [
				"(deprecated) The amount of probe failures for the load balancer to make a health determination.",
				"This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.",
			]
			default: 3
		}
		probe_request_path: description: [
			"(deprecated) The URL that an HTTP probe or HTTPS probe will use (only relevant if I(probe_protocol=Http) or I(probe_protocol=Https)).",
			"This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.",
		]
		protocol: {
			description: [
				"(deprecated) The protocol (TCP or UDP) that the load balancer will use.",
				"This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.",
			]
			choices: [
				"Tcp",
				"Udp",
			]
		}
		load_distribution: {
			description: [
				"(deprecated) The type of load distribution that the load balancer will employ.",
				"This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.",
			]
			choices: [
				"Default",
				"SourceIP",
				"SourceIPProtocol",
			]
		}
		frontend_port: description: [
			"(deprecated) Frontend port that will be exposed for the load balancer.",
			"This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.",
		]
		backend_port: description: [
			"(deprecated) Backend port that will be exposed for the load balancer.",
			"This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.",
		]
		idle_timeout: {
			description: [
				"(deprecated) Timeout for TCP idle connection in minutes.",
				"This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.",
			]
			default: 4
		}
		natpool_frontend_port_start: description: [
			"(deprecated) Start of the port range for a NAT pool.",
			"This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.",
		]
		natpool_frontend_port_end: description: [
			"(deprecated) End of the port range for a NAT pool.",
			"This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.",
		]
		natpool_backend_port: description: [
			"(deprecated) Backend port used by the NAT pool.",
			"This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.",
		]
		natpool_protocol: description: [
			"(deprecated) The protocol for the NAT pool.",
			"This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.",
		]
	}
	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Thomas Stringer (@trstringer)",
		"Yuwei Zhou (@yuwzho)",
	]
}
