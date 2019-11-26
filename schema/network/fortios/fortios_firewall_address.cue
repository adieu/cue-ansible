package ansible

module: fortios_firewall_address: {
	module:            "fortios_firewall_address"
	short_description: "Configure IPv4 addresses in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and address category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		firewall_address: {
			description: [
				"Configure IPv4 addresses.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				allow_routing: {
					description: [
						"Enable/disable use of this address in the static route configuration.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				associated_interface: {
					description: [
						"Network interface associated with address. Source system.interface.name system.zone.name.",
					]
					type: "str"
				}
				cache_ttl: {
					description: [
						"Defines the minimal TTL of individual IP addresses in FQDN cache measured in seconds.",
					]
					type: "int"
				}
				color: {
					description: [
						"Color of icon on the GUI.",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				country: {
					description: [
						"IP addresses associated to a specific country.",
					]
					type: "str"
				}
				end_ip: {
					description: [
						"Final IP address (inclusive) in the range for the address.",
					]
					type: "str"
				}
				epg_name: {
					description: [
						"Endpoint group name.",
					]
					type: "str"
				}
				filter: {
					description: [
						"Match criteria filter.",
					]
					type: "str"
				}
				fqdn: {
					description: [
						"Fully Qualified Domain Name address.",
					]
					type: "str"
				}
				list: {
					description: [
						"IP address list.",
					]
					type: "list"
					suboptions: ip: {
						description: [
							"IP.",
						]
						required: true
						type:     "str"
					}
				}
				name: {
					description: [
						"Address name.",
					]
					required: true
					type:     "str"
				}
				obj_id: {
					description: [
						"Object ID for NSX.",
					]
					type: "str"
				}
				organization: {
					description: [
						"Organization domain name (Syntax: organization/domain).",
					]
					type: "str"
				}
				policy_group: {
					description: [
						"Policy group name.",
					]
					type: "str"
				}
				sdn: {
					description: [
						"SDN.",
					]
					type: "str"
					choices: [
						"aci",
						"aws",
						"azure",
						"gcp",
						"nsx",
						"nuage",
						"oci",
						"openstack",
					]
				}
				sdn_tag: {
					description: [
						"SDN Tag.",
					]
					type: "str"
				}
				start_ip: {
					description: [
						"First IP address (inclusive) in the range for the address.",
					]
					type: "str"
				}
				subnet: {
					description: [
						"IP address and subnet mask of address.",
					]
					type: "str"
				}
				subnet_name: {
					description: [
						"Subnet name.",
					]
					type: "str"
				}
				tagging: {
					description: [
						"Config object tagging.",
					]
					type: "list"
					suboptions: {
						category: {
							description: [
								"Tag category. Source system.object-tagging.category.",
							]
							type: "str"
						}
						name: {
							description: [
								"Tagging entry name.",
							]
							required: true
							type:     "str"
						}
						tags: {
							description: [
								"Tags.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Tag name. Source system.object-tagging.tags.name.",
								]
								required: true
								type:     "str"
							}
						}
					}
				}
				tenant: {
					description: [
						"Tenant.",
					]
					type: "str"
				}
				type: {
					description: [
						"Type of address.",
					]
					type: "str"
					choices: [
						"ipmask",
						"iprange",
						"fqdn",
						"geography",
						"wildcard",
						"wildcard-fqdn",
						"dynamic",
					]
				}
				uuid: {
					description: [
						"Universally Unique Identifier (UUID; automatically assigned but can be manually reset).",
					]
					type: "str"
				}
				visibility: {
					description: [
						"Enable/disable address visibility in the GUI.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wildcard: {
					description: [
						"IP address and wildcard netmask.",
					]
					type: "str"
				}
				wildcard_fqdn: {
					description: [
						"Fully Qualified Domain Name with wildcard characters.",
					]
					type: "str"
				}
			}
		}
	}
}
