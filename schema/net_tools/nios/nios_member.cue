package ansible

module: nios_member: {
	module:            "nios_member"
	version_added:     "2.8"
	author:            "Krishna Vasudevan (@krisvasudevan)"
	short_description: "Configure Infoblox NIOS members"
	description: [
		"Adds and/or removes Infoblox NIOS servers.  This module manages NIOS C(member) objects using the Infoblox WAPI interface over REST.",
	]
	requirements: [
		"infoblox-client",
	]
	extends_documentation_fragment: "nios"
	options: {
		host_name: {
			description: [
				"Specifies the host name of the member to either add or remove from the NIOS instance.",
			]

			required: true
			aliases: [
				"name",
			]
		}
		vip_setting: {
			description: [
				"Configures the network settings for the grid member.",
			]
			required: true
			suboptions: {
				address: description: [
					"The IPv4 Address of the Grid Member",
				]
				subnet_mask: description: [
					"The subnet mask for the Grid Member",
				]
				gateway: description: [
					"The default gateway for the Grid Member",
				]
			}
		}
		ipv6_setting: {
			description: [
				"Configures the IPv6 settings for the grid member.",
			]
			required: true
			suboptions: {
				virtual_ip: description: [
					"The IPv6 Address of the Grid Member",
				]
				cidr_prefix: description: [
					"The IPv6 CIDR prefix for the Grid Member",
				]
				gateway: description: [
					"The gateway address for the Grid Member",
				]
			}
		}
		config_addr_type: {
			description: [
				"Address configuration type (IPV4/IPV6/BOTH)",
			]
			default: "IPV4"
		}
		comment: description: [
			"A descriptive comment of the Grid member.",
		]
		extattrs: description: [
			"Extensible attributes associated with the object.",
		]
		enable_ha: {
			description: [
				"If set to True, the member has two physical nodes (HA pair).",
			]
			type: "bool"
		}
		router_id: description: [
			"Virtual router identifier. Provide this ID if \"ha_enabled\" is set to \"true\". This is a unique VRID number (from 1 to 255) for the local subnet.",
		]
		lan2_enabled: {
			description: [
				"When set to \"true\", the LAN2 port is enabled as an independent port or as a port for failover purposes.",
			]
			type: "bool"
		}
		lan2_port_setting: {
			description: [
				"Settings for the Grid member LAN2 port if 'lan2_enabled' is set to \"true\".",
			]
			suboptions: {
				enabled: {
					description: [
						"If set to True, then it has its own IP settings.",
					]
					type: "bool"
				}
				network_setting: {
					description: [
						"If the 'enable' field is set to True, this defines IPv4 network settings for LAN2.",
					]
					suboptions: {
						address: description: [
							"The IPv4 Address of LAN2",
						]
						subnet_mask: description: [
							"The subnet mask of LAN2",
						]
						gateway: description: [
							"The default gateway of LAN2",
						]
					}
				}
				v6_network_setting: {
					description: [
						"If the 'enable' field is set to True, this defines IPv6 network settings for LAN2.",
					]
					suboptions: {
						virtual_ip: description: [
							"The IPv6 Address of LAN2",
						]
						cidr_prefix: description: [
							"The IPv6 CIDR prefix of LAN2",
						]
						gateway: description: [
							"The gateway address of LAN2",
						]
					}
				}
			}
		}
		platform: {
			description: [
				"Configures the Hardware Platform.",
			]
			default: "INFOBLOX"
		}
		node_info: {
			description: [
				"Configures the node information list with detailed status report on the operations of the Grid Member.",
			]
			suboptions: {
				lan2_physical_setting: {
					description: [
						"Physical port settings for the LAN2 interface.",
					]
					suboptions: {
						auto_port_setting_enabled: {
							description: [
								"Enable or disalbe the auto port setting.",
							]
							type: "bool"
						}
						duplex: description: [
							"The port duplex; if speed is 1000, duplex must be FULL.",
						]
						speed: description: [
							"The port speed; if speed is 1000, duplex is FULL.",
						]
					}
				}
				lan_ha_port_setting: {
					description: [
						"LAN/HA port settings for the node.",
					]
					suboptions: {
						ha_ip_address: description: [
							"HA IP address.",
						]
						ha_port_setting: {
							description: [
								"Physical port settings for the HA interface.",
							]
							suboptions: {
								auto_port_setting_enabled: {
									description: [
										"Enable or disalbe the auto port setting.",
									]
									type: "bool"
								}
								duplex: description: [
									"The port duplex; if speed is 1000, duplex must be FULL.",
								]
								speed: description: [
									"The port speed; if speed is 1000, duplex is FULL.",
								]
							}
						}
						lan_port_setting: {
							description: [
								"Physical port settings for the LAN interface.",
							]
							suboptions: {
								auto_port_setting_enabled: {
									description: [
										"Enable or disalbe the auto port setting.",
									]
									type: "bool"
								}
								duplex: description: [
									"The port duplex; if speed is 1000, duplex must be FULL.",
								]
								speed: description: [
									"The port speed; if speed is 1000, duplex is FULL.",
								]
							}
						}
						mgmt_ipv6addr: description: [
							"Public IPv6 address for the LAN1 interface.",
						]
						mgmt_lan: description: [
							"Public IPv4 address for the LAN1 interface.",
						]
					}
				}
				mgmt_network_setting: {
					description: [
						"Network settings for the MGMT port of the node.",
					]
					suboptions: {
						address: description: [
							"The IPv4 Address of MGMT",
						]
						subnet_mask: description: [
							"The subnet mask of MGMT",
						]
						gateway: description: [
							"The default gateway of MGMT",
						]
					}
				}
				v6_mgmt_network_setting: {
					description: [
						"The network settings for the IPv6 MGMT port of the node.",
					]
					suboptions: {
						virtual_ip: description: [
							"The IPv6 Address of MGMT",
						]
						cidr_prefix: description: [
							"The IPv6 CIDR prefix of MGMT",
						]
						gateway: description: [
							"The gateway address of MGMT",
						]
					}
				}
			}
		}
		mgmt_port_setting: {
			description: [
				"Settings for the member MGMT port.",
			]
			suboptions: {
				enabled: {
					description: [
						"Determines if MGMT port settings should be enabled.",
					]
					type: "bool"
				}
				security_access_enabled: {
					description: [
						"Determines if security access on the MGMT port is enabled or not.",
					]
					type: "bool"
				}
				vpn_enabled: {
					description: [
						"Determines if VPN on the MGMT port is enabled or not.",
					]
					type: "bool"
				}
			}
		}
		upgrade_group: {
			description: [
				"The name of the upgrade group to which this Grid member belongs.",
			]
			default: "Default"
		}
		use_syslog_proxy_setting: {
			description: [
				"Use flag for external_syslog_server_enable , syslog_servers, syslog_proxy_setting, syslog_size",
			]
			type: "bool"
		}
		external_syslog_server_enable: {
			description: [
				"Determines if external syslog servers should be enabled",
			]
			type: "bool"
		}
		syslog_servers: {
			description: [
				"The list of external syslog servers.",
			]
			suboptions: {
				address: description: [
					"The server address.",
				]
				category_list: description: [
					"The list of all syslog logging categories.",
				]
				connection_type: {
					description: [
						"The connection type for communicating with this server.(STCP/TCP?UDP)",
					]
					default: "UDP"
				}
				local_interface: {
					description: [
						"The local interface through which the appliance sends syslog messages to the syslog server.(ANY/LAN/MGMT)",
					]
					default: "ANY"
				}
				message_node_id: {
					description: [
						"Identify the node in the syslog message. (HOSTNAME/IP_HOSTNAME/LAN/MGMT)",
					]
					default: "LAN"
				}
				message_source: {
					description: [
						"The source of syslog messages to be sent to the external syslog server.",
					]
					default: "ANY"
				}
				only_category_list: {
					description: [
						"The list of selected syslog logging categories. The appliance forwards syslog messages that belong to the selected categories.",
					]
					type: "bool"
				}
				port: {
					description: [
						"The port this server listens on.",
					]
					default: 514
				}
				severity: {
					description: [
						"The severity filter. The appliance sends log messages of the specified severity and above to the external syslog server.",
					]
					default: "DEBUG"
				}
			}
		}
		pre_provisioning: {
			description: [
				"Pre-provisioning information.",
			]
			suboptions: {
				hardware_info: {
					description: [
						"An array of structures that describe the hardware being pre-provisioned.",
					]
					suboptions: {
						hwmodel: description: [
							"Hardware model",
						]
						hwtype: description: [
							"Hardware type.",
						]
					}
				}
				licenses: description: [
					"An array of license types.",
				]
			}
		}
		create_token: {
			description: [
				"Flag for initiating a create token request for pre-provisioned members.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.",
			]

			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
	}
}
