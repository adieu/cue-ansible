package ansible

module: fortios_wireless_controller_wtp: {
	module:            "fortios_wireless_controller_wtp"
	short_description: "Configure Wireless Termination Points (WTPs), that is, FortiAPs or APs to be managed by FortiGate in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and wtp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_wtp: {
			description: [
				"Configure Wireless Termination Points (WTPs), that is, FortiAPs or APs to be managed by FortiGate.",
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
				admin: {
					description: [
						"Configure how the FortiGate operating as a wireless controller discovers and manages this WTP, AP or FortiAP.",
					]
					type: "str"
					choices: [
						"discovered",
						"disable",
						"enable",
					]
				}
				allowaccess: {
					description: [
						"Control management access to the managed WTP, FortiAP, or AP. Separate entries with a space.",
					]
					type: "str"
					choices: [
						"telnet",
						"http",
						"https",
						"ssh",
					]
				}
				bonjour_profile: {
					description: [
						"Bonjour profile name. Source wireless-controller.bonjour-profile.name.",
					]
					type: "str"
				}
				coordinate_enable: {
					description: [
						"Enable/disable WTP coordinates (X,Y axis).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				coordinate_latitude: {
					description: [
						"WTP latitude coordinate.",
					]
					type: "str"
				}
				coordinate_longitude: {
					description: [
						"WTP longitude coordinate.",
					]
					type: "str"
				}
				coordinate_x: {
					description: [
						"X axis coordinate.",
					]
					type: "str"
				}
				coordinate_y: {
					description: [
						"Y axis coordinate.",
					]
					type: "str"
				}
				image_download: {
					description: [
						"Enable/disable WTP image download.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				index: {
					description: [
						"Index (0 - 4294967295).",
					]
					type: "int"
				}
				ip_fragment_preventing: {
					description: [
						"Method by which IP fragmentation is prevented for CAPWAP tunneled control and data packets .",
					]
					type: "str"
					choices: [
						"tcp-mss-adjust",
						"icmp-unreachable",
					]
				}
				lan: {
					description: [
						"WTP LAN port mapping.",
					]
					type: "dict"
					suboptions: {
						port_mode: {
							description: [
								"LAN port mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port_ssid: {
							description: [
								"Bridge LAN port to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port1_mode: {
							description: [
								"LAN port 1 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port1_ssid: {
							description: [
								"Bridge LAN port 1 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port2_mode: {
							description: [
								"LAN port 2 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port2_ssid: {
							description: [
								"Bridge LAN port 2 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port3_mode: {
							description: [
								"LAN port 3 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port3_ssid: {
							description: [
								"Bridge LAN port 3 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port4_mode: {
							description: [
								"LAN port 4 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port4_ssid: {
							description: [
								"Bridge LAN port 4 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port5_mode: {
							description: [
								"LAN port 5 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port5_ssid: {
							description: [
								"Bridge LAN port 5 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port6_mode: {
							description: [
								"LAN port 6 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port6_ssid: {
							description: [
								"Bridge LAN port 6 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port7_mode: {
							description: [
								"LAN port 7 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port7_ssid: {
							description: [
								"Bridge LAN port 7 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
						port8_mode: {
							description: [
								"LAN port 8 mode.",
							]
							type: "str"
							choices: [
								"offline",
								"nat-to-wan",
								"bridge-to-wan",
								"bridge-to-ssid",
							]
						}
						port8_ssid: {
							description: [
								"Bridge LAN port 8 to SSID. Source wireless-controller.vap.name.",
							]
							type: "str"
						}
					}
				}
				led_state: {
					description: [
						"Enable to allow the FortiAPs LEDs to light. Disable to keep the LEDs off. You may want to keep the LEDs off so they are not distracting in low light areas etc.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				location: {
					description: [
						"Field for describing the physical location of the WTP, AP or FortiAP.",
					]
					type: "str"
				}
				login_passwd: {
					description: [
						"Set the managed WTP, FortiAP, or AP's administrator password.",
					]
					type: "str"
				}
				login_passwd_change: {
					description: [
						"Change or reset the administrator password of a managed WTP, FortiAP or AP (yes, default, or no).",
					]
					type: "str"
					choices: [
						true,
						"default",
						false,
					]
				}
				mesh_bridge_enable: {
					description: [
						"Enable/disable mesh Ethernet bridge when WTP is configured as a mesh branch/leaf AP.",
					]
					type: "str"
					choices: [
						"default",
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"WTP, AP or FortiAP configuration name.",
					]
					type: "str"
				}
				override_allowaccess: {
					description: [
						"Enable to override the WTP profile management access configuration.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_ip_fragment: {
					description: [
						"Enable/disable overriding the WTP profile IP fragment prevention setting.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_lan: {
					description: [
						"Enable to override the WTP profile LAN port setting.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_led_state: {
					description: [
						"Enable to override the profile LED state setting for this FortiAP. You must enable this option to use the led-state command to turn off the FortiAP's LEDs.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_login_passwd_change: {
					description: [
						"Enable to override the WTP profile login-password (administrator password) setting.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_split_tunnel: {
					description: [
						"Enable/disable overriding the WTP profile split tunneling setting.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				override_wan_port_mode: {
					description: [
						"Enable/disable overriding the wan-port-mode in the WTP profile.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				radio_1: {
					description: [
						"Configuration options for radio 1.",
					]
					type: "dict"
					suboptions: {
						auto_power_high: {
							description: [
								"Automatic transmission power high limit in decibels (dB) of the measured power referenced to one milliwatt (mW), or dBm (10 - 17 dBm).",
							]

							type: "int"
						}
						auto_power_level: {
							description: [
								"Enable/disable automatic power-level adjustment to prevent co-channel interference .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						auto_power_low: {
							description: [
								"Automatic transmission power low limit in dBm (the actual range of transmit power depends on the AP platform type).",
							]
							type: "int"
						}
						band: {
							description: [
								"WiFi band that Radio 1 operates on.",
							]
							type: "str"
							choices: [
								"802.11a",
								"802.11b",
								"802.11g",
								"802.11n",
								"802.11n-5G",
								"802.11n,g-only",
								"802.11g-only",
								"802.11n-only",
								"802.11n-5G-only",
								"802.11ac",
								"802.11ac,n-only",
								"802.11ac-only",
							]
						}
						channel: {
							description: [
								"Selected list of wireless radio channels.",
							]
							type: "list"
							suboptions: chan: {
								description: [
									"Channel number.",
								]
								required: true
								type:     "str"
							}
						}
						override_analysis: {
							description: [
								"Enable to override the WTP profile spectrum analysis configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_band: {
							description: [
								"Enable to override the WTP profile band setting.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_channel: {
							description: [
								"Enable to override WTP profile channel settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_txpower: {
							description: [
								"Enable to override the WTP profile power level configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_vaps: {
							description: [
								"Enable to override WTP profile Virtual Access Point (VAP) settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						power_level: {
							description: [
								"Radio power level as a percentage of the maximum transmit power (0 - 100).",
							]
							type: "int"
						}
						radio_id: {
							description: [
								"radio-id",
							]
							type: "int"
						}
						spectrum_analysis: {
							description: [
								"Enable/disable spectrum analysis to find interference that would negatively impact wireless performance.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						vap_all: {
							description: [
								"Enable/disable the automatic inheritance of all Virtual Access Points (VAPs) .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						vaps: {
							description: [
								"Manually selected list of Virtual Access Points (VAPs).",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Virtual Access Point (VAP) name. Source wireless-controller.vap-group.name wireless-controller.vap.name.",
								]
								required: true
								type:     "str"
							}
						}
					}
				}
				radio_2: {
					description: [
						"Configuration options for radio 2.",
					]
					type: "dict"
					suboptions: {
						auto_power_high: {
							description: [
								"Automatic transmission power high limit in decibels (dB) of the measured power referenced to one milliwatt (mW), or dBm (10 - 17 dBm).",
							]

							type: "int"
						}
						auto_power_level: {
							description: [
								"Enable/disable automatic power-level adjustment to prevent co-channel interference .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						auto_power_low: {
							description: [
								"Automatic transmission power low limit in dBm (the actual range of transmit power depends on the AP platform type).",
							]
							type: "int"
						}
						band: {
							description: [
								"WiFi band that Radio 1 operates on.",
							]
							type: "str"
							choices: [
								"802.11a",
								"802.11b",
								"802.11g",
								"802.11n",
								"802.11n-5G",
								"802.11n,g-only",
								"802.11g-only",
								"802.11n-only",
								"802.11n-5G-only",
								"802.11ac",
								"802.11ac,n-only",
								"802.11ac-only",
							]
						}
						channel: {
							description: [
								"Selected list of wireless radio channels.",
							]
							type: "list"
							suboptions: chan: {
								description: [
									"Channel number.",
								]
								required: true
								type:     "str"
							}
						}
						override_analysis: {
							description: [
								"Enable to override the WTP profile spectrum analysis configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_band: {
							description: [
								"Enable to override the WTP profile band setting.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_channel: {
							description: [
								"Enable to override WTP profile channel settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_txpower: {
							description: [
								"Enable to override the WTP profile power level configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						override_vaps: {
							description: [
								"Enable to override WTP profile Virtual Access Point (VAP) settings.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						power_level: {
							description: [
								"Radio power level as a percentage of the maximum transmit power (0 - 100).",
							]
							type: "int"
						}
						radio_id: {
							description: [
								"radio-id",
							]
							type: "int"
						}
						spectrum_analysis: {
							description: [
								"Enable/disable spectrum analysis to find interference that would negatively impact wireless performance.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						vap_all: {
							description: [
								"Enable/disable the automatic inheritance of all Virtual Access Points (VAPs) .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						vaps: {
							description: [
								"Manually selected list of Virtual Access Points (VAPs).",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Virtual Access Point (VAP) name. Source wireless-controller.vap-group.name wireless-controller.vap.name.",
								]
								required: true
								type:     "str"
							}
						}
					}
				}
				split_tunneling_acl: {
					description: [
						"Split tunneling ACL filter list.",
					]
					type: "list"
					suboptions: {
						dest_ip: {
							description: [
								"Destination IP and mask for the split-tunneling subnet.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
					}
				}
				split_tunneling_acl_local_ap_subnet: {
					description: [
						"Enable/disable automatically adding local subnetwork of FortiAP to split-tunneling ACL .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				split_tunneling_acl_path: {
					description: [
						"Split tunneling ACL path is local/tunnel.",
					]
					type: "str"
					choices: [
						"tunnel",
						"local",
					]
				}
				tun_mtu_downlink: {
					description: [
						"Downlink tunnel MTU in octets. Set the value to either 0 (by default), 576, or 1500.",
					]
					type: "int"
				}
				tun_mtu_uplink: {
					description: [
						"Uplink tunnel maximum transmission unit (MTU) in octets (eight-bit bytes). Set the value to either 0 (by default), 576, or 1500.",
					]
					type: "int"
				}
				wan_port_mode: {
					description: [
						"Enable/disable using the FortiAP WAN port as a LAN port.",
					]
					type: "str"
					choices: [
						"wan-lan",
						"wan-only",
					]
				}
				wtp_id: {
					description: [
						"WTP ID.",
					]
					type: "str"
				}
				wtp_mode: {
					description: [
						"WTP, AP, or FortiAP operating mode; normal (by default) or remote. A tunnel mode SSID can be assigned to an AP in normal mode but not remote mode, while a local-bridge mode SSID can be assigned to an AP in either normal mode or remote mode.",
					]

					type: "str"
					choices: [
						"normal",
						"remote",
					]
				}
				wtp_profile: {
					description: [
						"WTP profile name to apply to this WTP, AP or FortiAP. Source wireless-controller.wtp-profile.name.",
					]
					type: "str"
				}
			}
		}
	}
}
