package ansible

module: icx_vlan: {
	module:            "icx_vlan"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage VLANs on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of VLANs on ICX network devices.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		name: {
			description: [
				"Name of the VLAN.",
			]
			type: "str"
		}
		vlan_id: {
			description: [
				"ID of the VLAN. Range 1-4094.",
			]
			required: true
			type:     "int"
		}
		interfaces: {
			description: [
				"List of ethernet ports or LAGS to be added as access(untagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.",
			]

			suboptions: {
				name: {
					description: [
						"Name of the interface or lag",
					]
					type: "list"
				}
				purge: {
					description: [
						"Purge interfaces not defined in the I(name)",
					]
					type: "bool"
				}
			}
			type: "dict"
		}
		tagged: {
			description: [
				"List of ethernet ports or LAGS to be added as trunk(tagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.",
			]

			suboptions: {
				name: {
					description: [
						"Name of the interface or lag",
					]
					type: "list"
				}
				purge: {
					description: [
						"Purge interfaces not defined in the I(name)",
					]
					type: "bool"
				}
			}
			type: "dict"
		}
		ip_dhcp_snooping: {
			description: [
				"Enables DHCP snooping on a VLAN.",
			]
			type: "bool"
		}
		ip_arp_inspection: {
			description: [
				"Enables dynamic ARP inspection on a VLAN.",
			]
			type: "bool"
		}
		associated_interfaces: {
			description: [
				"This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.",
			]

			type: "list"
		}
		associated_tagged: {
			description: [
				"This is a intent option and checks the operational state of  given vlan C(name) for associated tagged ports and lags. If the value in the C(associated_tagged) does not match with the operational state of vlan interfaces on device it will result in failure.",
			]

			type: "list"
		}
		delay: {
			description: [
				"Delay the play should wait to check for declarative intent params values.",
			]
			default: 10
			type:    "int"
		}
		stp: {
			description: [
				"Enable spanning-tree 802-1w/rstp for this vlan.",
			]
			suboptions: {
				type: {
					description: [
						"Specify the type of spanning-tree",
					]
					type:    "str"
					default: "802-1w"
					choices: ["802-1w", "rstp"]
				}
				priority: {
					description: [
						"Configures the priority of the bridge. The value ranges from 0 through 65535. A lower numerical value means the bridge has a higher priority. Thus, the highest priority is 0. The default is 32768.",
					]

					type: "str"
				}
				enabled: {
					description: [
						"Manage the state(Enable/Disable) of the spanning_tree_802_1w in the current vlan",
					]
					type: "bool"
				}
			}
			type: "dict"
		}
		aggregate: {
			description: [
				"List of VLANs definitions.",
			]
			type: "list"
			suboptions: {
				name: {
					description: [
						"Name of the VLAN.",
					]
					type: "str"
				}
				vlan_id: {
					description: [
						"ID of the VLAN. Range 1-4094.",
					]
					required: true
					type:     "str"
				}
				ip_dhcp_snooping: {
					description: [
						"Enables DHCP snooping on a VLAN.",
					]
					type: "bool"
				}
				ip_arp_inspection: {
					description: [
						"Enables dynamic ARP inspection on a VLAN.",
					]
					type: "bool"
				}
				tagged: {
					description: [
						"List of ethernet ports or LAGS to be added as trunk(tagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.",
					]

					suboptions: {
						name: {
							description: [
								"Name of the interface or lag",
							]
							type: "list"
						}
						purge: {
							description: [
								"Purge interfaces not defined in the I(name)",
							]
							type: "bool"
						}
					}
					type: "dict"
				}
				interfaces: {
					description: [
						"List of ethernet ports or LAGS to be added as access(untagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.",
					]

					suboptions: {
						name: {
							description: [
								"Name of the interface or lag",
							]
							type: "list"
						}
						purge: {
							description: [
								"Purge interfaces not defined in the I(name)",
							]
							type: "bool"
						}
					}
					type: "dict"
				}
				delay: {
					description: [
						"Delay the play should wait to check for declarative intent params values.",
					]
					type: "int"
				}
				stp: {
					description: [
						"Enable spanning-tree 802-1w/rstp for this vlan.",
					]
					suboptions: {
						type: {
							description: [
								"Specify the type of spanning-tree",
							]
							type:    "str"
							default: "802-1w"
							choices: ["802-1w", "rstp"]
						}
						priority: {
							description: [
								"Configures the priority of the bridge. The value ranges from 0 through 65535. A lower numerical value means the bridge has a higher priority. Thus, the highest priority is 0. The default is 32768.",
							]

							type: "str"
						}
						enabled: {
							description: [
								"Manage the state(Enable/Disable) of the spanning_tree_802_1w in the current vlan",
							]
							type: "bool"
						}
					}
					type: "dict"
				}
				state: {
					description: [
						"State of the VLAN configuration.",
					]
					type: "str"
					choices: ["present", "absent"]
				}
				check_running_config: {
					description: [
						"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
					]

					type: "bool"
				}
				associated_interfaces: {
					description: [
						"This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.",
					]

					type: "list"
				}
				associated_tagged: {
					description: [
						"This is a intent option and checks the operational state of  given vlan C(name) for associated tagged ports and lags. If the value in the C(associated_tagged) does not match with the operational state of vlan interfaces on device it will result in failure.",
					]

					type: "list"
				}
			}
		}
		purge: {
			description: [
				"Purge VLANs not defined in the I(aggregate) parameter.",
			]
			default: false
			type:    "bool"
		}
		state: {
			description: [
				"State of the VLAN configuration.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
