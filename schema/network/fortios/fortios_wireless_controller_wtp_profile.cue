package ansible

module: fortios_wireless_controller_wtp_profile: {
	module:            "fortios_wireless_controller_wtp_profile"
	short_description: "Configure WTP profiles or FortiAP profiles that define radio settings for manageable FortiAP platforms in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and wtp_profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_wtp_profile: {
			description: [
				"Configure WTP profiles or FortiAP profiles that define radio settings for manageable FortiAP platforms.",
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
				ap_country: {
					description: [
						"Country in which this WTP, FortiAP or AP will operate .",
					]
					type: "str"
					choices: [
						"NA",
						"AL",
						"DZ",
						"AO",
						"AR",
						"AM",
						"AU",
						"AT",
						"AZ",
						"BH",
						"BD",
						"BB",
						"BY",
						"BE",
						"BZ",
						"BO",
						"BA",
						"BR",
						"BN",
						"BG",
						"KH",
						"CL",
						"CN",
						"CO",
						"CR",
						"HR",
						"CY",
						"CZ",
						"DK",
						"DO",
						"EC",
						"EG",
						"SV",
						"EE",
						"FI",
						"FR",
						"GE",
						"DE",
						"GR",
						"GL",
						"GD",
						"GU",
						"GT",
						"HT",
						"HN",
						"HK",
						"HU",
						"IS",
						"IN",
						"ID",
						"IR",
						"IE",
						"IL",
						"IT",
						"JM",
						"JO",
						"KZ",
						"KE",
						"KP",
						"KR",
						"KW",
						"LV",
						"LB",
						"LI",
						"LT",
						"LU",
						"MO",
						"MK",
						"MY",
						"MT",
						"MX",
						"MC",
						"MA",
						"MZ",
						"MM",
						"NP",
						"NL",
						"AN",
						"AW",
						"NZ",
						false,
						"OM",
						"PK",
						"PA",
						"PG",
						"PY",
						"PE",
						"PH",
						"PL",
						"PT",
						"PR",
						"QA",
						"RO",
						"RU",
						"RW",
						"SA",
						"RS",
						"ME",
						"SG",
						"SK",
						"SI",
						"ZA",
						"ES",
						"LK",
						"SE",
						"SD",
						"CH",
						"SY",
						"TW",
						"TZ",
						"TH",
						"TT",
						"TN",
						"TR",
						"AE",
						"UA",
						"GB",
						"US",
						"PS",
						"UY",
						"UZ",
						"VE",
						"VN",
						"YE",
						"ZB",
						"ZW",
						"JP",
						"CA",
					]
				}
				ble_profile: {
					description: [
						"Bluetooth Low Energy profile name. Source wireless-controller.ble-profile.name.",
					]
					type: "str"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				control_message_offload: {
					description: [
						"Enable/disable CAPWAP control message data channel offload.",
					]
					type: "str"
					choices: [
						"ebp-frame",
						"aeroscout-tag",
						"ap-list",
						"sta-list",
						"sta-cap-list",
						"stats",
						"aeroscout-mu",
					]
				}
				deny_mac_list: {
					description: [
						"List of MAC addresses that are denied access to this WTP, FortiAP, or AP.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						mac: {
							description: [
								"A WiFi device with this MAC address is denied access to this WTP, FortiAP or AP.",
							]
							type: "str"
						}
					}
				}
				dtls_in_kernel: {
					description: [
						"Enable/disable data channel DTLS in kernel.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dtls_policy: {
					description: [
						"WTP data channel DTLS policy .",
					]
					type: "str"
					choices: [
						"clear-text",
						"dtls-enabled",
						"ipsec-vpn",
					]
				}
				energy_efficient_ethernet: {
					description: [
						"Enable/disable use of energy efficient Ethernet on WTP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ext_info_enable: {
					description: [
						"Enable/disable station/VAP/radio extension information.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				handoff_roaming: {
					description: [
						"Enable/disable client load balancing during roaming to avoid roaming delay .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				handoff_rssi: {
					description: [
						"Minimum received signal strength indicator (RSSI) value for handoff (20 - 30).",
					]
					type: "int"
				}
				handoff_sta_thresh: {
					description: [
						"Threshold value for AP handoff.",
					]
					type: "int"
				}
				ip_fragment_preventing: {
					description: [
						"Select how to prevent IP fragmentation for CAPWAP tunneled control and data packets .",
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
				lbs: {
					description: [
						"Set various location based service (LBS) options.",
					]
					type: "dict"
					suboptions: {
						aeroscout: {
							description: [
								"Enable/disable AeroScout Real Time Location Service (RTLS) support .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						aeroscout_ap_mac: {
							description: [
								"Use BSSID or board MAC address as AP MAC address in AeroScout AP messages .",
							]
							type: "str"
							choices: [
								"bssid",
								"board-mac",
							]
						}
						aeroscout_mmu_report: {
							description: [
								"Enable/disable compounded AeroScout tag and MU report .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						aeroscout_mu: {
							description: [
								"Enable/disable AeroScout Mobile Unit (MU) support .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						aeroscout_mu_factor: {
							description: [
								"AeroScout MU mode dilution factor .",
							]
							type: "int"
						}
						aeroscout_mu_timeout: {
							description: [
								"AeroScout MU mode timeout (0 - 65535 sec).",
							]
							type: "int"
						}
						aeroscout_server_ip: {
							description: [
								"IP address of AeroScout server.",
							]
							type: "str"
						}
						aeroscout_server_port: {
							description: [
								"AeroScout server UDP listening port.",
							]
							type: "int"
						}
						ekahau_blink_mode: {
							description: [
								"Enable/disable Ekahau blink mode (now known as AiRISTA Flow) to track and locate WiFi tags .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ekahau_tag: {
							description: [
								"WiFi frame MAC address or WiFi Tag.",
							]
							type: "str"
						}
						erc_server_ip: {
							description: [
								"IP address of Ekahau RTLS Controller (ERC).",
							]
							type: "str"
						}
						erc_server_port: {
							description: [
								"Ekahau RTLS Controller (ERC) UDP listening port.",
							]
							type: "int"
						}
						fortipresence: {
							description: [
								"Enable/disable FortiPresence to monitor the location and activity of WiFi clients even if they don't connect to this WiFi network .",
							]

							type: "str"
							choices: [
								"foreign",
								"both",
								"disable",
							]
						}
						fortipresence_frequency: {
							description: [
								"FortiPresence report transmit frequency (5 - 65535 sec).",
							]
							type: "int"
						}
						fortipresence_port: {
							description: [
								"FortiPresence server UDP listening port .",
							]
							type: "int"
						}
						fortipresence_project: {
							description: [
								"FortiPresence project name (max. 16 characters).",
							]
							type: "str"
						}
						fortipresence_rogue: {
							description: [
								"Enable/disable FortiPresence finding and reporting rogue APs.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						fortipresence_secret: {
							description: [
								"FortiPresence secret password (max. 16 characters).",
							]
							type: "str"
						}
						fortipresence_server: {
							description: [
								"FortiPresence server IP address.",
							]
							type: "str"
						}
						fortipresence_unassoc: {
							description: [
								"Enable/disable FortiPresence finding and reporting unassociated stations.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						station_locate: {
							description: [
								"Enable/disable client station locating services for all clients, whether associated or not .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				led_schedules: {
					description: [
						"Recurring firewall schedules for illuminating LEDs on the FortiAP. If led-state is enabled, LEDs will be visible when at least one of the schedules is valid. Separate multiple schedule names with a space.",
					]

					type: "list"
					suboptions: name: {
						description: [
							"LED schedule name. Source firewall.schedule.group.name firewall.schedule.recurring.name.",
						]
						required: true
						type:     "str"
					}
				}
				led_state: {
					description: [
						"Enable/disable use of LEDs on WTP .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				lldp: {
					description: [
						"Enable/disable Link Layer Discovery Protocol (LLDP) for the WTP, FortiAP, or AP .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
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
				max_clients: {
					description: [
						"Maximum number of stations (STAs) supported by the WTP .",
					]
					type: "int"
				}
				name: {
					description: [
						"WTP (or FortiAP or AP) profile name.",
					]
					required: true
					type:     "str"
				}
				platform: {
					description: [
						"WTP, FortiAP, or AP platform.",
					]
					type: "dict"
					suboptions: type: {
						description: [
							"WTP, FortiAP or AP platform type. There are built-in WTP profiles for all supported FortiAP models. You can select a built-in profile and customize it or create a new profile.",
						]

						type: "str"
						choices: [
							"AP-11N",
							"220B",
							"210B",
							"222B",
							"112B",
							"320B",
							"11C",
							"14C",
							"223B",
							"28C",
							"320C",
							"221C",
							"25D",
							"222C",
							"224D",
							"214B",
							"21D",
							"24D",
							"112D",
							"223C",
							"321C",
							"C220C",
							"C225C",
							"C23JD",
							"C24JE",
							"S321C",
							"S322C",
							"S323C",
							"S311C",
							"S313C",
							"S321CR",
							"S322CR",
							"S323CR",
							"S421E",
							"S422E",
							"S423E",
							"421E",
							"423E",
							"221E",
							"222E",
							"223E",
							"224E",
							"S221E",
							"S223E",
							"U421E",
							"U422EV",
							"U423E",
							"U221EV",
							"U223EV",
							"U24JEV",
							"U321EV",
							"U323EV",
						]
					}
				}
				poe_mode: {
					description: [
						"Set the WTP, FortiAP, or AP's PoE mode.",
					]
					type: "str"
					choices: [
						"auto",
						"8023af",
						"8023at",
						"power-adapter",
					]
				}
				radio_1: {
					description: [
						"Configuration options for radio 1.",
					]
					type: "dict"
					suboptions: {
						amsdu: {
							description: [
								"Enable/disable 802.11n AMSDU support. AMSDU can improve performance if supported by your WiFi clients .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_handoff: {
							description: [
								"Enable/disable AP handoff of clients to other APs .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_addr: {
							description: [
								"MAC address to monitor.",
							]
							type: "str"
						}
						ap_sniffer_bufsize: {
							description: [
								"Sniffer buffer size (1 - 32 MB).",
							]
							type: "int"
						}
						ap_sniffer_chan: {
							description: [
								"Channel on which to operate the sniffer .",
							]
							type: "int"
						}
						ap_sniffer_ctl: {
							description: [
								"Enable/disable sniffer on WiFi control frame .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_data: {
							description: [
								"Enable/disable sniffer on WiFi data frame .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_beacon: {
							description: [
								"Enable/disable sniffer on WiFi management Beacon frames .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_other: {
							description: [
								"Enable/disable sniffer on WiFi management other frames  .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_probe: {
							description: [
								"Enable/disable sniffer on WiFi management probe frames .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						auto_power_high: {
							description: [
								"Automatic transmit power high limit in dBm (the actual range of transmit power depends on the AP platform type).",
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
								"802.11ac",
								"802.11n,g-only",
								"802.11g-only",
								"802.11n-only",
								"802.11n-5G-only",
								"802.11ac,n-only",
								"802.11ac-only",
							]
						}
						bandwidth_admission_control: {
							description: [
								"Enable/disable WiFi multimedia (WMM) bandwidth admission control to optimize WiFi bandwidth use. A request to join the wireless network is only allowed if the access point has enough bandwidth to support it.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						bandwidth_capacity: {
							description: [
								"Maximum bandwidth capacity allowed (1 - 600000 Kbps).",
							]
							type: "int"
						}
						beacon_interval: {
							description: [
								"Beacon interval. The time between beacon frames in msec (the actual range of beacon interval depends on the AP platform type).",
							]
							type: "int"
						}
						call_admission_control: {
							description: [
								"Enable/disable WiFi multimedia (WMM) call admission control to optimize WiFi bandwidth use for VoIP calls. New VoIP calls are only accepted if there is enough bandwidth available to support them.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						call_capacity: {
							description: [
								"Maximum number of Voice over WLAN (VoWLAN) phones supported by the radio (0 - 60).",
							]
							type: "int"
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
						channel_bonding: {
							description: [
								"Channel bandwidth: 80, 40, or 20MHz. Channels may use both 20 and 40 by enabling coexistence.",
							]
							type: "str"
							choices: [
								"80MHz",
								"40MHz",
								"20MHz",
							]
						}
						channel_utilization: {
							description: [
								"Enable/disable measuring channel utilization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						coexistence: {
							description: [
								"Enable/disable allowing both HT20 and HT40 on the same radio .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						darrp: {
							description: [
								"Enable/disable Distributed Automatic Radio Resource Provisioning (DARRP) to make sure the radio is always using the most optimal channel .",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						dtim: {
							description: [
								"DTIM interval. The frequency to transmit Delivery Traffic Indication Message (or Map) (DTIM) messages (1 - 255). Set higher to save client battery life.",
							]

							type: "int"
						}
						frag_threshold: {
							description: [
								"Maximum packet size that can be sent without fragmentation (800 - 2346 bytes).",
							]
							type: "int"
						}
						frequency_handoff: {
							description: [
								"Enable/disable frequency handoff of clients to other channels .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						max_clients: {
							description: [
								"Maximum number of stations (STAs) or WiFi clients supported by the radio. Range depends on the hardware.",
							]
							type: "int"
						}
						max_distance: {
							description: [
								"Maximum expected distance between the AP and clients (0 - 54000 m).",
							]
							type: "int"
						}
						mode: {
							description: [
								"Mode of radio 1. Radio 1 can be disabled, configured as an access point, a rogue AP monitor, or a sniffer.",
							]
							type: "str"
							choices: [
								"disabled",
								"ap",
								"monitor",
								"sniffer",
							]
						}
						power_level: {
							description: [
								"Radio power level as a percentage of the maximum transmit power (0 - 100).",
							]
							type: "int"
						}
						powersave_optimize: {
							description: [
								"Enable client power-saving features such as TIM, AC VO, and OBSS etc.",
							]
							type: "str"
							choices: [
								"tim",
								"ac-vo",
								"no-obss-scan",
								"no-11b-rate",
								"client-rate-follow",
							]
						}
						protection_mode: {
							description: [
								"Enable/disable 802.11g protection modes to support backwards compatibility with older clients (rtscts, ctsonly, disable).",
							]
							type: "str"
							choices: [
								"rtscts",
								"ctsonly",
								"disable",
							]
						}
						radio_id: {
							description: [
								"radio-id",
							]
							type: "int"
						}
						rts_threshold: {
							description: [
								"Maximum packet size for RTS transmissions, specifying the maximum size of a data packet before RTS/CTS (256 - 2346 bytes).",
							]
							type: "int"
						}
						short_guard_interval: {
							description: [
								"Use either the short guard interval (Short GI) of 400 ns or the long guard interval (Long GI) of 800 ns.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
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
						transmit_optimize: {
							description: [
								"Packet transmission optimization options including power saving, aggregation limiting, retry limiting, etc. All are enabled by default.",
							]

							type: "str"
							choices: [
								"disable",
								"power-save",
								"aggr-limit",
								"retry-limit",
								"send-bar",
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
						wids_profile: {
							description: [
								"Wireless Intrusion Detection System (WIDS) profile name to assign to the radio. Source wireless-controller.wids-profile.name.",
							]
							type: "str"
						}
					}
				}
				radio_2: {
					description: [
						"Configuration options for radio 2.",
					]
					type: "dict"
					suboptions: {
						amsdu: {
							description: [
								"Enable/disable 802.11n AMSDU support. AMSDU can improve performance if supported by your WiFi clients .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_handoff: {
							description: [
								"Enable/disable AP handoff of clients to other APs .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_addr: {
							description: [
								"MAC address to monitor.",
							]
							type: "str"
						}
						ap_sniffer_bufsize: {
							description: [
								"Sniffer buffer size (1 - 32 MB).",
							]
							type: "int"
						}
						ap_sniffer_chan: {
							description: [
								"Channel on which to operate the sniffer .",
							]
							type: "int"
						}
						ap_sniffer_ctl: {
							description: [
								"Enable/disable sniffer on WiFi control frame .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_data: {
							description: [
								"Enable/disable sniffer on WiFi data frame .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_beacon: {
							description: [
								"Enable/disable sniffer on WiFi management Beacon frames .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_other: {
							description: [
								"Enable/disable sniffer on WiFi management other frames  .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ap_sniffer_mgmt_probe: {
							description: [
								"Enable/disable sniffer on WiFi management probe frames .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						auto_power_high: {
							description: [
								"Automatic transmit power high limit in dBm (the actual range of transmit power depends on the AP platform type).",
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
								"WiFi band that Radio 2 operates on.",
							]
							type: "str"
							choices: [
								"802.11a",
								"802.11b",
								"802.11g",
								"802.11n",
								"802.11n-5G",
								"802.11ac",
								"802.11n,g-only",
								"802.11g-only",
								"802.11n-only",
								"802.11n-5G-only",
								"802.11ac,n-only",
								"802.11ac-only",
							]
						}
						bandwidth_admission_control: {
							description: [
								"Enable/disable WiFi multimedia (WMM) bandwidth admission control to optimize WiFi bandwidth use. A request to join the wireless network is only allowed if the access point has enough bandwidth to support it.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						bandwidth_capacity: {
							description: [
								"Maximum bandwidth capacity allowed (1 - 600000 Kbps).",
							]
							type: "int"
						}
						beacon_interval: {
							description: [
								"Beacon interval. The time between beacon frames in msec (the actual range of beacon interval depends on the AP platform type).",
							]
							type: "int"
						}
						call_admission_control: {
							description: [
								"Enable/disable WiFi multimedia (WMM) call admission control to optimize WiFi bandwidth use for VoIP calls. New VoIP calls are only accepted if there is enough bandwidth available to support them.",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						call_capacity: {
							description: [
								"Maximum number of Voice over WLAN (VoWLAN) phones supported by the radio (0 - 60).",
							]
							type: "int"
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
						channel_bonding: {
							description: [
								"Channel bandwidth: 80, 40, or 20MHz. Channels may use both 20 and 40 by enabling coexistence.",
							]
							type: "str"
							choices: [
								"80MHz",
								"40MHz",
								"20MHz",
							]
						}
						channel_utilization: {
							description: [
								"Enable/disable measuring channel utilization.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						coexistence: {
							description: [
								"Enable/disable allowing both HT20 and HT40 on the same radio .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						darrp: {
							description: [
								"Enable/disable Distributed Automatic Radio Resource Provisioning (DARRP) to make sure the radio is always using the most optimal channel .",
							]

							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						dtim: {
							description: [
								"DTIM interval. The frequency to transmit Delivery Traffic Indication Message (or Map) (DTIM) messages (1 - 255). Set higher to save client battery life.",
							]

							type: "int"
						}
						frag_threshold: {
							description: [
								"Maximum packet size that can be sent without fragmentation (800 - 2346 bytes).",
							]
							type: "int"
						}
						frequency_handoff: {
							description: [
								"Enable/disable frequency handoff of clients to other channels .",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						max_clients: {
							description: [
								"Maximum number of stations (STAs) or WiFi clients supported by the radio. Range depends on the hardware.",
							]
							type: "int"
						}
						max_distance: {
							description: [
								"Maximum expected distance between the AP and clients (0 - 54000 m).",
							]
							type: "int"
						}
						mode: {
							description: [
								"Mode of radio 2. Radio 2 can be disabled, configured as an access point, a rogue AP monitor, or a sniffer.",
							]
							type: "str"
							choices: [
								"disabled",
								"ap",
								"monitor",
								"sniffer",
							]
						}
						power_level: {
							description: [
								"Radio power level as a percentage of the maximum transmit power (0 - 100).",
							]
							type: "int"
						}
						powersave_optimize: {
							description: [
								"Enable client power-saving features such as TIM, AC VO, and OBSS etc.",
							]
							type: "str"
							choices: [
								"tim",
								"ac-vo",
								"no-obss-scan",
								"no-11b-rate",
								"client-rate-follow",
							]
						}
						protection_mode: {
							description: [
								"Enable/disable 802.11g protection modes to support backwards compatibility with older clients (rtscts, ctsonly, disable).",
							]
							type: "str"
							choices: [
								"rtscts",
								"ctsonly",
								"disable",
							]
						}
						radio_id: {
							description: [
								"radio-id",
							]
							type: "int"
						}
						rts_threshold: {
							description: [
								"Maximum packet size for RTS transmissions, specifying the maximum size of a data packet before RTS/CTS (256 - 2346 bytes).",
							]
							type: "int"
						}
						short_guard_interval: {
							description: [
								"Use either the short guard interval (Short GI) of 400 ns or the long guard interval (Long GI) of 800 ns.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
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
						transmit_optimize: {
							description: [
								"Packet transmission optimization options including power saving, aggregation limiting, retry limiting, etc. All are enabled by default.",
							]

							type: "str"
							choices: [
								"disable",
								"power-save",
								"aggr-limit",
								"retry-limit",
								"send-bar",
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
						wids_profile: {
							description: [
								"Wireless Intrusion Detection System (WIDS) profile name to assign to the radio. Source wireless-controller.wids-profile.name.",
							]
							type: "str"
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
						"Downlink CAPWAP tunnel MTU (0, 576, or 1500 bytes).",
					]
					type: "int"
				}
				tun_mtu_uplink: {
					description: [
						"Uplink CAPWAP tunnel MTU (0, 576, or 1500 bytes).",
					]
					type: "int"
				}
				wan_port_mode: {
					description: [
						"Enable/disable using a WAN port as a LAN port.",
					]
					type: "str"
					choices: [
						"wan-lan",
						"wan-only",
					]
				}
			}
		}
	}
}
