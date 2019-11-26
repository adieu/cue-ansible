package ansible

module: fortios_system_admin: {
	module:            "fortios_system_admin"
	short_description: "Configure admin users in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and admin category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_admin: {
			description: [
				"Configure admin users.",
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
				accprofile: {
					description: [
						"Access profile for this administrator. Access profiles control administrator access to FortiGate features. Source system.accprofile.name.",
					]
					type: "str"
				}
				accprofile_override: {
					description: [
						"Enable to use the name of an access profile provided by the remote authentication server to control the FortiGate features that this administrator can access.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_remove_admin_session: {
					description: [
						"Enable/disable allow admin session to be removed by privileged admin users.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				email_to: {
					description: [
						"This administrator's email address.",
					]
					type: "str"
				}
				force_password_change: {
					description: [
						"Enable/disable force password change on next login.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fortitoken: {
					description: [
						"This administrator's FortiToken serial number.",
					]
					type: "str"
				}
				guest_auth: {
					description: [
						"Enable/disable guest authentication.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				guest_lang: {
					description: [
						"Guest management portal language. Source system.custom-language.name.",
					]
					type: "str"
				}
				guest_usergroups: {
					description: [
						"Select guest user groups.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Select guest user groups.",
						]
						required: true
						type:     "str"
					}
				}
				gui_dashboard: {
					description: [
						"GUI dashboards.",
					]
					type: "list"
					suboptions: {
						columns: {
							description: [
								"Number of columns.",
							]
							type: "int"
						}
						id: {
							description: [
								"Dashboard ID.",
							]
							required: true
							type:     "int"
						}
						layout_type: {
							description: [
								"Layout type.",
							]
							type: "str"
							choices: [
								"responsive",
								"fixed",
							]
						}
						name: {
							description: [
								"Dashboard name.",
							]
							type: "str"
						}
						scope: {
							description: [
								"Dashboard scope.",
							]
							type: "str"
							choices: [
								"global",
								"vdom",
							]
						}
						widget: {
							description: [
								"Dashboard widgets.",
							]
							type: "list"
							suboptions: {
								fabric_device: {
									description: [
										"Fabric device to monitor.",
									]
									type: "str"
								}
								fortiview_filters: {
									description: [
										"FortiView filters.",
									]
									type: "list"
									suboptions: {
										id: {
											description: [
												"FortiView Filter ID.",
											]
											required: true
											type:     "int"
										}
										key: {
											description: [
												"Filter key.",
											]
											type: "str"
										}
										value: {
											description: [
												"Filter value.",
											]
											type: "str"
										}
									}
								}
								fortiview_sort_by: {
									description: [
										"FortiView sort by.",
									]
									type: "str"
								}
								fortiview_timeframe: {
									description: [
										"FortiView timeframe.",
									]
									type: "str"
								}
								fortiview_type: {
									description: [
										"FortiView type.",
									]
									type: "str"
								}
								fortiview_visualization: {
									description: [
										"FortiView visualization.",
									]
									type: "str"
								}
								height: {
									description: [
										"Height.",
									]
									type: "int"
								}
								id: {
									description: [
										"Widget ID.",
									]
									required: true
									type:     "int"
								}
								industry: {
									description: [
										"Security Audit Rating industry.",
									]
									type: "str"
									choices: [
										"default",
										"custom",
									]
								}
								interface: {
									description: [
										"Interface to monitor. Source system.interface.name.",
									]
									type: "str"
								}
								region: {
									description: [
										"Security Audit Rating region.",
									]
									type: "str"
									choices: [
										"default",
										"custom",
									]
								}
								title: {
									description: [
										"Widget title.",
									]
									type: "str"
								}
								type: {
									description: [
										"Widget type.",
									]
									type: "str"
									choices: [
										"sysinfo",
										"licinfo",
										"vminfo",
										"forticloud",
										"cpu-usage",
										"memory-usage",
										"disk-usage",
										"log-rate",
										"sessions",
										"session-rate",
										"tr-history",
										"analytics",
										"usb-modem",
										"admins",
										"security-fabric",
										"security-fabric-ranking",
										"ha-status",
										"vulnerability-summary",
										"host-scan-summary",
										"fortiview",
										"botnet-activity",
										"fortimail",
									]
								}
								width: {
									description: [
										"Width.",
									]
									type: "int"
								}
								x_pos: {
									description: [
										"X position.",
									]
									type: "int"
								}
								y_pos: {
									description: [
										"Y position.",
									]
									type: "int"
								}
							}
						}
					}
				}
				gui_global_menu_favorites: {
					description: [
						"Favorite GUI menu IDs for the global VDOM.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Select menu ID.",
						]
						required: true
						type:     "str"
					}
				}
				gui_vdom_menu_favorites: {
					description: [
						"Favorite GUI menu IDs for VDOMs.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Select menu ID.",
						]
						required: true
						type:     "str"
					}
				}
				hidden: {
					description: [
						"Admin user hidden attribute.",
					]
					type: "int"
				}
				history0: {
					description: [
						"history0",
					]
					type: "str"
				}
				history1: {
					description: [
						"history1",
					]
					type: "str"
				}
				ip6_trusthost1: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost10: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost2: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost3: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost4: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost5: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost6: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost7: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost8: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				ip6_trusthost9: {
					description: [
						"Any IPv6 address from which the administrator can connect to the FortiGate unit. Default allows access from any IPv6 address.",
					]
					type: "str"
				}
				login_time: {
					description: [
						"Record user login time.",
					]
					type: "list"
					suboptions: {
						last_failed_login: {
							description: [
								"Last failed login time.",
							]
							type: "str"
						}
						last_login: {
							description: [
								"Last successful login time.",
							]
							type: "str"
						}
						usr_name: {
							description: [
								"User name.",
							]
							type: "str"
						}
					}
				}
				name: {
					description: [
						"User name.",
					]
					required: true
					type:     "str"
				}
				password: {
					description: [
						"Admin user password.",
					]
					type: "str"
				}
				password_expire: {
					description: [
						"Password expire time.",
					]
					type: "str"
				}
				peer_auth: {
					description: [
						"Set to enable peer certificate authentication (for HTTPS admin access).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				peer_group: {
					description: [
						"Name of peer group defined under config user group which has PKI members. Used for peer certificate authentication (for HTTPS admin access).",
					]

					type: "str"
				}
				radius_vdom_override: {
					description: [
						"Enable to use the names of VDOMs provided by the remote authentication server to control the VDOMs that this administrator can access.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				remote_auth: {
					description: [
						"Enable/disable authentication using a remote RADIUS, LDAP, or TACACS+ server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				remote_group: {
					description: [
						"User group name used for remote auth.",
					]
					type: "str"
				}
				schedule: {
					description: [
						"Firewall schedule used to restrict when the administrator can log in. No schedule means no restrictions.",
					]
					type: "str"
				}
				sms_custom_server: {
					description: [
						"Custom SMS server to send SMS messages to. Source system.sms-server.name.",
					]
					type: "str"
				}
				sms_phone: {
					description: [
						"Phone number on which the administrator receives SMS messages.",
					]
					type: "str"
				}
				sms_server: {
					description: [
						"Send SMS messages using the FortiGuard SMS server or a custom server.",
					]
					type: "str"
					choices: [
						"fortiguard",
						"custom",
					]
				}
				ssh_certificate: {
					description: [
						"Select the certificate to be used by the FortiGate for authentication with an SSH client. Source certificate.local.name.",
					]
					type: "str"
				}
				ssh_public_key1: {
					description: [
						"Public key of an SSH client. The client is authenticated without being asked for credentials. Create the public-private key pair in the SSH client application.",
					]

					type: "str"
				}
				ssh_public_key2: {
					description: [
						"Public key of an SSH client. The client is authenticated without being asked for credentials. Create the public-private key pair in the SSH client application.",
					]

					type: "str"
				}
				ssh_public_key3: {
					description: [
						"Public key of an SSH client. The client is authenticated without being asked for credentials. Create the public-private key pair in the SSH client application.",
					]

					type: "str"
				}
				trusthost1: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost10: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost2: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost3: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost4: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost5: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost6: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost7: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost8: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				trusthost9: {
					description: [
						"Any IPv4 address or subnet address and netmask from which the administrator can connect to the FortiGate unit. Default allows access from any IPv4 address.",
					]

					type: "str"
				}
				two_factor: {
					description: [
						"Enable/disable two-factor authentication.",
					]
					type: "str"
					choices: [
						"disable",
						"fortitoken",
						"email",
						"sms",
					]
				}
				vdom: {
					description: [
						"Virtual domain(s) that the administrator can access.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Virtual domain name. Source system.vdom.name.",
						]
						required: true
						type:     "str"
					}
				}
				wildcard: {
					description: [
						"Enable/disable wildcard RADIUS authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
