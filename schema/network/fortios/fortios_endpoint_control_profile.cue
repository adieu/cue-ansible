package ansible

module: fortios_endpoint_control_profile: {
	module:            "fortios_endpoint_control_profile"
	short_description: "Configure FortiClient endpoint control profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify endpoint_control feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		endpoint_control_profile: {
			description: [
				"Configure FortiClient endpoint control profiles.",
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
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				device_groups: {
					description: [
						"Device groups.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Device group object from available options. Source user.device-group.name user.device-category.name.",
						]
						required: true
						type:     "str"
					}
				}
				forticlient_android_settings: {
					description: [
						"FortiClient settings for Android platform.",
					]
					type: "dict"
					suboptions: {
						disable_wf_when_protected: {
							description: [
								"Enable/disable FortiClient web category filtering when protected by FortiGate.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_advanced_vpn: {
							description: [
								"Enable/disable advanced FortiClient VPN configuration.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_advanced_vpn_buffer: {
							description: [
								"Advanced FortiClient VPN configuration.",
							]
							type: "str"
						}
						forticlient_vpn_provisioning: {
							description: [
								"Enable/disable FortiClient VPN provisioning.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_vpn_settings: {
							description: [
								"FortiClient VPN settings.",
							]
							type: "list"
							suboptions: {
								auth_method: {
									description: [
										"Authentication method.",
									]
									type: "str"
									choices: [
										"psk",
										"certificate",
									]
								}
								name: {
									description: [
										"VPN name.",
									]
									required: true
									type:     "str"
								}
								preshared_key: {
									description: [
										"Pre-shared secret for PSK authentication.",
									]
									type: "str"
								}
								remote_gw: {
									description: [
										"IP address or FQDN of the remote VPN gateway.",
									]
									type: "str"
								}
								sslvpn_access_port: {
									description: [
										"SSL VPN access port (1 - 65535).",
									]
									type: "int"
								}
								sslvpn_require_certificate: {
									description: [
										"Enable/disable requiring SSL VPN client certificate.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
								type: {
									description: [
										"VPN type (IPsec or SSL VPN).",
									]
									type: "str"
									choices: [
										"ipsec",
										"ssl",
									]
								}
							}
						}
						forticlient_wf: {
							description: [
								"Enable/disable FortiClient web filtering.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_wf_profile: {
							description: [
								"The FortiClient web filter profile to apply. Source webfilter.profile.name.",
							]
							type: "str"
						}
					}
				}
				forticlient_ios_settings: {
					description: [
						"FortiClient settings for iOS platform.",
					]
					type: "dict"
					suboptions: {
						client_vpn_provisioning: {
							description: [
								"FortiClient VPN provisioning.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_vpn_settings: {
							description: [
								"FortiClient VPN settings.",
							]
							type: "list"
							suboptions: {
								auth_method: {
									description: [
										"Authentication method.",
									]
									type: "str"
									choices: [
										"psk",
										"certificate",
									]
								}
								name: {
									description: [
										"VPN name.",
									]
									required: true
									type:     "str"
								}
								preshared_key: {
									description: [
										"Pre-shared secret for PSK authentication.",
									]
									type: "str"
								}
								remote_gw: {
									description: [
										"IP address or FQDN of the remote VPN gateway.",
									]
									type: "str"
								}
								sslvpn_access_port: {
									description: [
										"SSL VPN access port (1 - 65535).",
									]
									type: "int"
								}
								sslvpn_require_certificate: {
									description: [
										"Enable/disable requiring SSL VPN client certificate.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
								type: {
									description: [
										"VPN type (IPsec or SSL VPN).",
									]
									type: "str"
									choices: [
										"ipsec",
										"ssl",
									]
								}
								vpn_configuration_content: {
									description: [
										"Content of VPN configuration.",
									]
									type: "str"
								}
								vpn_configuration_name: {
									description: [
										"Name of VPN configuration.",
									]
									type: "str"
								}
							}
						}
						configuration_content: {
							description: [
								"Content of configuration profile.",
							]
							type: "str"
						}
						configuration_name: {
							description: [
								"Name of configuration profile.",
							]
							type: "str"
						}
						disable_wf_when_protected: {
							description: [
								"Enable/disable FortiClient web category filtering when protected by FortiGate.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						distribute_configuration_profile: {
							description: [
								"Enable/disable configuration profile (.mobileconfig file) distribution.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_wf: {
							description: [
								"Enable/disable FortiClient web filtering.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_wf_profile: {
							description: [
								"The FortiClient web filter profile to apply. Source webfilter.profile.name.",
							]
							type: "str"
						}
					}
				}
				forticlient_winmac_settings: {
					description: [
						"FortiClient settings for Windows/Mac platform.",
					]
					type: "dict"
					suboptions: {
						av_realtime_protection: {
							description: [
								"Enable/disable FortiClient AntiVirus real-time protection.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						av_signature_up_to_date: {
							description: [
								"Enable/disable FortiClient AV signature updates.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_application_firewall: {
							description: [
								"Enable/disable the FortiClient application firewall.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_application_firewall_list: {
							description: [
								"FortiClient application firewall rule list. Source application.list.name.",
							]
							type: "str"
						}
						forticlient_av: {
							description: [
								"Enable/disable FortiClient AntiVirus scanning.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_ems_compliance: {
							description: [
								"Enable/disable FortiClient Enterprise Management Server (EMS) compliance.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_ems_compliance_action: {
							description: [
								"FortiClient EMS compliance action.",
							]
							type: "str"
							choices: [
								"block",
								"warning",
							]
						}
						forticlient_ems_entries: {
							description: [
								"FortiClient EMS entries.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"FortiClient EMS name. Source endpoint-control.forticlient-ems.name.",
								]
								required: true
								type:     "str"
							}
						}
						forticlient_linux_ver: {
							description: [
								"Minimum FortiClient Linux version.",
							]
							type: "str"
						}
						forticlient_log_upload: {
							description: [
								"Enable/disable uploading FortiClient logs.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_log_upload_level: {
							description: [
								"Select the FortiClient logs to upload.",
							]
							type: "str"
							choices: [
								"traffic",
								"vulnerability",
								"event",
							]
						}
						forticlient_log_upload_server: {
							description: [
								"IP address or FQDN of the server to which to upload FortiClient logs.",
							]
							type: "str"
						}
						forticlient_mac_ver: {
							description: [
								"Minimum FortiClient Mac OS version.",
							]
							type: "str"
						}
						forticlient_minimum_software_version: {
							description: [
								"Enable/disable requiring clients to run FortiClient with a minimum software version number.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_operating_system: {
							description: [
								"FortiClient operating system.",
							]
							type: "list"
							suboptions: {
								id: {
									description: [
										"Operating system entry ID.",
									]
									required: true
									type:     "int"
								}
								os_name: {
									description: [
										"Customize operating system name or Mac OS format:x.x.x",
									]
									type: "str"
								}
								os_type: {
									description: [
										"Operating system type.",
									]
									type: "str"
									choices: [
										"custom",
										"mac-os",
										"win-7",
										"win-80",
										"win-81",
										"win-10",
										"win-2000",
										"win-home-svr",
										"win-svr-10",
										"win-svr-2003",
										"win-svr-2003-r2",
										"win-svr-2008",
										"win-svr-2008-r2",
										"win-svr-2012",
										"win-svr-2012-r2",
										"win-sto-svr-2003",
										"win-vista",
										"win-xp",
										"ubuntu-linux",
										"centos-linux",
										"redhat-linux",
										"fedora-linux",
									]
								}
							}
						}
						forticlient_own_file: {
							description: [
								"Checking the path and filename of the FortiClient application.",
							]
							type: "list"
							suboptions: {
								file: {
									description: [
										"File path and name.",
									]
									type: "str"
								}
								id: {
									description: [
										"File ID.",
									]
									required: true
									type:     "int"
								}
							}
						}
						forticlient_registration_compliance_action: {
							description: [
								"FortiClient registration compliance action.",
							]
							type: "str"
							choices: [
								"block",
								"warning",
							]
						}
						forticlient_registry_entry: {
							description: [
								"FortiClient registry entry.",
							]
							type: "list"
							suboptions: {
								id: {
									description: [
										"Registry entry ID.",
									]
									required: true
									type:     "int"
								}
								registry_entry: {
									description: [
										"Registry entry.",
									]
									type: "str"
								}
							}
						}
						forticlient_running_app: {
							description: [
								"Use FortiClient to verify if the listed applications are running on the client.",
							]
							type: "list"
							suboptions: {
								app_name: {
									description: [
										"Application name.",
									]
									type: "str"
								}
								app_sha256_signature: {
									description: [
										"App's SHA256 signature.",
									]
									type: "str"
								}
								app_sha256_signature2: {
									description: [
										"App's SHA256 Signature.",
									]
									type: "str"
								}
								app_sha256_signature3: {
									description: [
										"App's SHA256 Signature.",
									]
									type: "str"
								}
								app_sha256_signature4: {
									description: [
										"App's SHA256 Signature.",
									]
									type: "str"
								}
								application_check_rule: {
									description: [
										"Application check rule.",
									]
									type: "str"
									choices: [
										"present",
										"absent",
									]
								}
								id: {
									description: [
										"Application ID.",
									]
									required: true
									type:     "int"
								}
								process_name: {
									description: [
										"Process name.",
									]
									type: "str"
								}
								process_name2: {
									description: [
										"Process name.",
									]
									type: "str"
								}
								process_name3: {
									description: [
										"Process name.",
									]
									type: "str"
								}
								process_name4: {
									description: [
										"Process name.",
									]
									type: "str"
								}
							}
						}
						forticlient_security_posture: {
							description: [
								"Enable/disable FortiClient security posture check options.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_security_posture_compliance_action: {
							description: [
								"FortiClient security posture compliance action.",
							]
							type: "str"
							choices: [
								"block",
								"warning",
							]
						}
						forticlient_system_compliance: {
							description: [
								"Enable/disable enforcement of FortiClient system compliance.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_system_compliance_action: {
							description: [
								"Block or warn clients not compliant with FortiClient requirements.",
							]
							type: "str"
							choices: [
								"block",
								"warning",
							]
						}
						forticlient_vuln_scan: {
							description: [
								"Enable/disable FortiClient vulnerability scanning.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_vuln_scan_compliance_action: {
							description: [
								"FortiClient vulnerability compliance action.",
							]
							type: "str"
							choices: [
								"block",
								"warning",
							]
						}
						forticlient_vuln_scan_enforce: {
							description: [
								"Configure the level of the vulnerability found that causes a FortiClient vulnerability compliance action.",
							]
							type: "str"
							choices: [
								"critical",
								"high",
								"medium",
								"low",
								"info",
							]
						}
						forticlient_vuln_scan_enforce_grace: {
							description: [
								"FortiClient vulnerability scan enforcement grace period (0 - 30 days).",
							]
							type: "int"
						}
						forticlient_vuln_scan_exempt: {
							description: [
								"Enable/disable compliance exemption for vulnerabilities that cannot be patched automatically.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_wf: {
							description: [
								"Enable/disable FortiClient web filtering.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						forticlient_wf_profile: {
							description: [
								"The FortiClient web filter profile to apply. Source webfilter.profile.name.",
							]
							type: "str"
						}
						forticlient_win_ver: {
							description: [
								"Minimum FortiClient Windows version.",
							]
							type: "str"
						}
						os_av_software_installed: {
							description: [
								"Enable/disable checking for OS recognized AntiVirus software.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						sandbox_address: {
							description: [
								"FortiSandbox address.",
							]
							type: "str"
						}
						sandbox_analysis: {
							description: [
								"Enable/disable sending files to FortiSandbox for analysis.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
					}
				}
				on_net_addr: {
					description: [
						"Addresses for on-net detection.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address object from available options. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				profile_name: {
					description: [
						"Profile name.",
					]
					type: "str"
				}
				replacemsg_override_group: {
					description: [
						"Select an endpoint control replacement message override group from available options. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				src_addr: {
					description: [
						"Source addresses.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address object from available options. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				user_groups: {
					description: [
						"User groups.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"User group name. Source user.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				users: {
					description: [
						"Users.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"User name. Source user.local.name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
