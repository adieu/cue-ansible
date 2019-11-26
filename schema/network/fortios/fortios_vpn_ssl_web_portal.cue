package ansible

module: fortios_vpn_ssl_web_portal: {
	module:            "fortios_vpn_ssl_web_portal"
	short_description: "Portal in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_ssl_web feature and portal category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_ssl_web_portal: {
			description: [
				"Portal.",
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
				allow_user_access: {
					description: [
						"Allow user access to SSL-VPN applications.",
					]
					type: "str"
					choices: [
						"web",
						"ftp",
						"smb",
						"telnet",
						"ssh",
						"vnc",
						"rdp",
						"ping",
						"citrix",
						"portforward",
					]
				}
				auto_connect: {
					description: [
						"Enable/disable automatic connect by client when system is up.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bookmark_group: {
					description: [
						"Portal bookmark group.",
					]
					type: "list"
					suboptions: {
						bookmarks: {
							description: [
								"Bookmark table.",
							]
							type: "list"
							suboptions: {
								additional_params: {
									description: [
										"Additional parameters.",
									]
									type: "str"
								}
								apptype: {
									description: [
										"Application type.",
									]
									type: "str"
									choices: [
										"citrix",
										"ftp",
										"portforward",
										"rdp",
										"smb",
										"ssh",
										"telnet",
										"vnc",
										"web",
									]
								}
								description: {
									description: [
										"Description.",
									]
									type: "str"
								}
								folder: {
									description: [
										"Network shared file folder parameter.",
									]
									type: "str"
								}
								form_data: {
									description: [
										"Form data.",
									]
									type: "list"
									suboptions: {
										name: {
											description: [
												"Name.",
											]
											required: true
											type:     "str"
										}
										value: {
											description: [
												"Value.",
											]
											type: "str"
										}
									}
								}
								host: {
									description: [
										"Host name/IP parameter.",
									]
									type: "str"
								}
								listening_port: {
									description: [
										"Listening port (0 - 65535).",
									]
									type: "int"
								}
								load_balancing_info: {
									description: [
										"The load balancing information or cookie which should be provided to the connection broker.",
									]
									type: "str"
								}
								logon_password: {
									description: [
										"Logon password.",
									]
									type: "str"
								}
								logon_user: {
									description: [
										"Logon user.",
									]
									type: "str"
								}
								name: {
									description: [
										"Bookmark name.",
									]
									required: true
									type:     "str"
								}
								port: {
									description: [
										"Remote port.",
									]
									type: "int"
								}
								preconnection_blob: {
									description: [
										"An arbitrary string which identifies the RDP source.",
									]
									type: "str"
								}
								preconnection_id: {
									description: [
										"The numeric ID of the RDP source (0-2147483648).",
									]
									type: "int"
								}
								remote_port: {
									description: [
										"Remote port (0 - 65535).",
									]
									type: "int"
								}
								security: {
									description: [
										"Security mode for RDP connection.",
									]
									type: "str"
									choices: [
										"rdp",
										"nla",
										"tls",
										"any",
									]
								}
								server_layout: {
									description: [
										"Server side keyboard layout.",
									]
									type: "str"
									choices: [
										"de-de-qwertz",
										"en-gb-qwerty",
										"en-us-qwerty",
										"es-es-qwerty",
										"fr-fr-azerty",
										"fr-ch-qwertz",
										"it-it-qwerty",
										"ja-jp-qwerty",
										"pt-br-qwerty",
										"sv-se-qwerty",
										"tr-tr-qwerty",
										"failsafe",
									]
								}
								show_status_window: {
									description: [
										"Enable/disable showing of status window.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
								sso: {
									description: [
										"Single Sign-On.",
									]
									type: "str"
									choices: [
										"disable",
										"static",
										"auto",
									]
								}
								sso_credential: {
									description: [
										"Single sign-on credentials.",
									]
									type: "str"
									choices: [
										"sslvpn-login",
										"alternative",
									]
								}
								sso_credential_sent_once: {
									description: [
										"Single sign-on credentials are only sent once to remote server.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
								sso_password: {
									description: [
										"SSO password.",
									]
									type: "str"
								}
								sso_username: {
									description: [
										"SSO user name.",
									]
									type: "str"
								}
								url: {
									description: [
										"URL parameter.",
									]
									type: "str"
								}
							}
						}
						name: {
							description: [
								"Bookmark group name.",
							]
							required: true
							type:     "str"
						}
					}
				}
				custom_lang: {
					description: [
						"Change the web portal display language. Overrides config system global set language. You can use config system custom-language and execute system custom-language to add custom language files. Source system.custom-language.name.",
					]

					type: "str"
				}
				customize_forticlient_download_url: {
					description: [
						"Enable support of customized download URL for FortiClient.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				display_bookmark: {
					description: [
						"Enable to display the web portal bookmark widget.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				display_connection_tools: {
					description: [
						"Enable to display the web portal connection tools widget.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				display_history: {
					description: [
						"Enable to display the web portal user login history widget.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				display_status: {
					description: [
						"Enable to display the web portal status widget.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dns_server1: {
					description: [
						"IPv4 DNS server 1.",
					]
					type: "str"
				}
				dns_server2: {
					description: [
						"IPv4 DNS server 2.",
					]
					type: "str"
				}
				dns_suffix: {
					description: [
						"DNS suffix.",
					]
					type: "str"
				}
				exclusive_routing: {
					description: [
						"Enable/disable all traffic go through tunnel only.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_download: {
					description: [
						"Enable/disable download option for FortiClient.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				forticlient_download_method: {
					description: [
						"FortiClient download method.",
					]
					type: "str"
					choices: [
						"direct",
						"ssl-vpn",
					]
				}
				heading: {
					description: [
						"Web portal heading message.",
					]
					type: "str"
				}
				hide_sso_credential: {
					description: [
						"Enable to prevent SSO credential being sent to client.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				host_check: {
					description: [
						"Type of host checking performed on endpoints.",
					]
					type: "str"
					choices: [
						"none",
						"av",
						"fw",
						"av-fw",
						"custom",
					]
				}
				host_check_interval: {
					description: [
						"Periodic host check interval. Value of 0 means disabled and host checking only happens when the endpoint connects.",
					]
					type: "int"
				}
				host_check_policy: {
					description: [
						"One or more policies to require the endpoint to have specific security software.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Host check software list name. Source vpn.ssl.web.host-check-software.name.",
						]
						required: true
						type:     "str"
					}
				}
				ip_mode: {
					description: [
						"Method by which users of this SSL-VPN tunnel obtain IP addresses.",
					]
					type: "str"
					choices: [
						"range",
						"user-group",
					]
				}
				ip_pools: {
					description: [
						"IPv4 firewall source address objects reserved for SSL-VPN tunnel mode clients.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				ipv6_dns_server1: {
					description: [
						"IPv6 DNS server 1.",
					]
					type: "str"
				}
				ipv6_dns_server2: {
					description: [
						"IPv6 DNS server 2.",
					]
					type: "str"
				}
				ipv6_exclusive_routing: {
					description: [
						"Enable/disable all IPv6 traffic go through tunnel only.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ipv6_pools: {
					description: [
						"IPv4 firewall source address objects reserved for SSL-VPN tunnel mode clients.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				ipv6_service_restriction: {
					description: [
						"Enable/disable IPv6 tunnel service restriction.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ipv6_split_tunneling: {
					description: [
						"Enable/disable IPv6 split tunneling.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ipv6_split_tunneling_routing_address: {
					description: [
						"IPv6 SSL-VPN tunnel mode firewall address objects that override firewall policy destination addresses to control split-tunneling access.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				ipv6_tunnel_mode: {
					description: [
						"Enable/disable IPv6 SSL-VPN tunnel mode.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ipv6_wins_server1: {
					description: [
						"IPv6 WINS server 1.",
					]
					type: "str"
				}
				ipv6_wins_server2: {
					description: [
						"IPv6 WINS server 2.",
					]
					type: "str"
				}
				keep_alive: {
					description: [
						"Enable/disable automatic reconnect for FortiClient connections.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				limit_user_logins: {
					description: [
						"Enable to limit each user to one SSL-VPN session at a time.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				mac_addr_action: {
					description: [
						"Client MAC address action.",
					]
					type: "str"
					choices: [
						"allow",
						"deny",
					]
				}
				mac_addr_check: {
					description: [
						"Enable/disable MAC address host checking.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				mac_addr_check_rule: {
					description: [
						"Client MAC address check rule.",
					]
					type: "list"
					suboptions: {
						mac_addr_list: {
							description: [
								"Client MAC address list.",
							]
							type: "list"
							suboptions: addr: {
								description: [
									"Client MAC address.",
								]
								required: true
								type:     "str"
							}
						}
						mac_addr_mask: {
							description: [
								"Client MAC address mask.",
							]
							type: "int"
						}
						name: {
							description: [
								"Client MAC address check rule name.",
							]
							required: true
							type:     "str"
						}
					}
				}
				macos_forticlient_download_url: {
					description: [
						"Download URL for Mac FortiClient.",
					]
					type: "str"
				}
				name: {
					description: [
						"Portal name.",
					]
					required: true
					type:     "str"
				}
				os_check: {
					description: [
						"Enable to let the FortiGate decide action based on client OS.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				os_check_list: {
					description: [
						"SSL VPN OS checks.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"OS check options.",
							]
							type: "str"
							choices: [
								"deny",
								"allow",
								"check-up-to-date",
							]
						}
						latest_patch_level: {
							description: [
								"Latest OS patch level.",
							]
							type: "str"
						}
						name: {
							description: [
								"Name.",
							]
							required: true
							type:     "str"
						}
						tolerance: {
							description: [
								"OS patch level tolerance.",
							]
							type: "int"
						}
					}
				}
				redir_url: {
					description: [
						"Client login redirect URL.",
					]
					type: "str"
				}
				save_password: {
					description: [
						"Enable/disable FortiClient saving the user's password.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				service_restriction: {
					description: [
						"Enable/disable tunnel service restriction.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				skip_check_for_unsupported_browser: {
					description: [
						"Enable to skip host check if browser does not support it.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				skip_check_for_unsupported_os: {
					description: [
						"Enable to skip host check if client OS does not support it.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				smb_ntlmv1_auth: {
					description: [
						"Enable support of NTLMv1 for Samba authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				smbv1: {
					description: [
						"Enable/disable support of SMBv1 for Samba.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				split_dns: {
					description: [
						"Split DNS for SSL VPN.",
					]
					type: "list"
					suboptions: {
						dns_server1: {
							description: [
								"DNS server 1.",
							]
							type: "str"
						}
						dns_server2: {
							description: [
								"DNS server 2.",
							]
							type: "str"
						}
						domains: {
							description: [
								"Split DNS domains used for SSL-VPN clients separated by comma(,).",
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
						ipv6_dns_server1: {
							description: [
								"IPv6 DNS server 1.",
							]
							type: "str"
						}
						ipv6_dns_server2: {
							description: [
								"IPv6 DNS server 2.",
							]
							type: "str"
						}
					}
				}
				split_tunneling: {
					description: [
						"Enable/disable IPv4 split tunneling.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				split_tunneling_routing_address: {
					description: [
						"IPv4 SSL-VPN tunnel mode firewall address objects that override firewall policy destination addresses to control split-tunneling access.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				theme: {
					description: [
						"Web portal color scheme.",
					]
					type: "str"
					choices: [
						"blue",
						"green",
						"red",
						"melongene",
						"mariner",
					]
				}
				tunnel_mode: {
					description: [
						"Enable/disable IPv4 SSL-VPN tunnel mode.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				user_bookmark: {
					description: [
						"Enable to allow web portal users to create their own bookmarks.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				user_group_bookmark: {
					description: [
						"Enable to allow web portal users to create bookmarks for all users in the same user group.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_mode: {
					description: [
						"Enable/disable SSL VPN web mode.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				windows_forticlient_download_url: {
					description: [
						"Download URL for Windows FortiClient.",
					]
					type: "str"
				}
				wins_server1: {
					description: [
						"IPv4 WINS server 1.",
					]
					type: "str"
				}
				wins_server2: {
					description: [
						"IPv4 WINS server 1.",
					]
					type: "str"
				}
			}
		}
	}
}
