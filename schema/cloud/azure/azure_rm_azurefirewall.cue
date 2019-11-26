package ansible

module: azure_rm_azurefirewall: {
	module:            "azure_rm_azurefirewall"
	version_added:     "2.9"
	short_description: "Manage Azure Firewall instance"
	description: [
		"Create, update and delete instance of Azure Firewall.",
	]
	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the Azure Firewall.",
			]
			required: true
			type:     "str"
		}
		location: {
			description: [
				"Resource location.",
			]
			type: "str"
		}
		application_rule_collections: {
			description: [
				"Collection of application rule collections used by Azure Firewall.",
			]
			type: "list"
			suboptions: {
				priority: {
					description: [
						"Priority of the application rule collection resource.",
					]
					type: "int"
				}
				action: {
					description: [
						"The action type of a rule collection.",
					]
					choices: [
						"allow",
						"deny",
					]
					type: "str"
				}
				rules: {
					description: [
						"Collection of rules used by a application rule collection.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Name of the application rule.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description of the rule.",
							]
							type: "str"
						}
						source_addresses: {
							description: [
								"List of source IP addresses for this rule.",
							]
							type: "list"
						}
						protocols: {
							description: [
								"Array of ApplicationRuleProtocols.",
							]
							type: "list"
						}
						target_fqdns: {
							description: [
								"List of FQDNs for this rule.",
							]
							type: "list"
						}
						fqdn_tags: {
							description: [
								"List of FQDN Tags for this rule.",
							]
							type: "list"
						}
					}
				}
				name: {
					description: [
						"Gets name of the resource that is unique within a resource group.",
						"This name can be used to access the resource.",
					]
					type: "str"
				}
			}
		}
		nat_rule_collections: {
			description: [
				"Collection of NAT rule collections used by Azure Firewall.",
			]
			type: "list"
			suboptions: {
				priority: {
					description: [
						"Priority of the NAT rule collection resource.",
					]
					type: "int"
				}
				action: {
					description: [
						"The action type of a NAT rule collection",
					]
					choices: [
						"snat",
						"dnat",
					]
					type: "str"
				}
				rules: {
					description: [
						"Collection of rules used by a NAT rule collection.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Name of the NAT rule.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description of the rule.",
							]
							type: "str"
						}
						source_addresses: {
							description: [
								"List of source IP addresses for this rule.",
							]
							type: "list"
						}
						destination_addresses: {
							description: [
								"List of destination IP addresses for this rule.",
							]
							type: "list"
						}
						destination_ports: {
							description: [
								"List of destination ports.",
							]
							type: "list"
						}
						protocols: {
							description: [
								"Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule.",
							]
							type: "list"
						}
						translated_address: {
							description: [
								"The translated address for this NAT rule.",
							]
							type: "str"
						}
						translated_port: {
							description: [
								"The translated port for this NAT rule.",
							]
							type: "str"
						}
					}
				}
				name: {
					description: [
						"Gets name of the resource that is unique within a resource group.",
						"This name can be used to access the resource.",
					]
					type: "str"
				}
			}
		}
		network_rule_collections: {
			description: [
				"Collection of network rule collections used by Azure Firewall.",
			]
			type: "list"
			suboptions: {
				priority: {
					description: [
						"Priority of the network rule collection resource.",
					]
					type: "int"
				}
				action: {
					description: [
						"The action type of a rule collection.",
					]
					type: "str"
					choices: [
						"allow",
						"deny",
					]
				}
				rules: {
					description: [
						"Collection of rules used by a network rule collection.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"Name of the network rule.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description of the rule.",
							]
							type: "str"
						}
						protocols: {
							description: [
								"Array of AzureFirewallNetworkRuleProtocols.",
							]
							type: "list"
						}
						source_addresses: {
							description: [
								"List of source IP addresses for this rule.",
							]
							type: "list"
						}
						destination_addresses: {
							description: [
								"List of destination IP addresses.",
							]
							type: "list"
						}
						destination_ports: {
							description: [
								"List of destination ports.",
							]
							type: "list"
						}
					}
				}
				name: {
					description: [
						"Gets name of the resource that is unique within a resource group.",
						"This name can be used to access the resource.",
					]
					type: "str"
				}
			}
		}
		ip_configurations: {
			description: [
				"IP configuration of the Azure Firewall resource.",
			]
			type: "list"
			suboptions: {
				subnet: {
					description: [
						"Existing subnet.",
						"It can be a string containing subnet resource ID.",
						"It can be a dictionary containing I(name), I(virtual_network_name) and optionally I(resource_group) .",
					]
					type: "raw"
				}
				public_ip_address: {
					description: [
						"Existing public IP address.",
						"It can be a string containing resource ID.",
						"It can be a string containing a name in current resource group.",
						"It can be a dictionary containing I(name) and optionally I(resource_group).",
					]
					type: "raw"
				}
				name: {
					description: [
						"Name of the resource that is unique within a resource group.",
						"This name can be used to access the resource.",
					]
					type: "str"
				}
			}
		}
		state: {
			description: [
				"Assert the state of the AzureFirewall.",
				"Use C(present) to create or update an AzureFirewall and C(absent) to delete it.",
			]
			default: "present"
			type:    "str"
			choices: [
				"absent",
				"present",
			]
		}
	}
	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]
	author: [
		"Zim Kalinowski (@zikalino)",
		"Jurijs Fadejevs (@needgithubid)",
	]
}
