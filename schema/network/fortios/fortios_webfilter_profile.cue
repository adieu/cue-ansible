package ansible

module: fortios_webfilter_profile: {
	module:            "fortios_webfilter_profile"
	short_description: "Configure Web filter profiles in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify webfilter feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		webfilter_profile: {
			description: [
				"Configure Web filter profiles.",
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
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				extended_log: {
					description: [
						"Enable/disable extended logging for web filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ftgd_wf: {
					description: [
						"FortiGuard Web Filter settings.",
					]
					type: "dict"
					suboptions: {
						exempt_quota: {
							description: [
								"Do not stop quota for these categories.",
							]
							type: "str"
						}
						filters: {
							description: [
								"FortiGuard filters.",
							]
							type: "list"
							suboptions: {
								action: {
									description: [
										"Action to take for matches.",
									]
									type: "str"
									choices: [
										"block",
										"authenticate",
										"monitor",
										"warning",
									]
								}
								auth_usr_grp: {
									description: [
										"Groups with permission to authenticate.",
									]
									type: "str"
									suboptions: name: {
										description: [
											"User group name. Source user.group.name.",
										]
										required: true
										type:     "str"
									}
								}
								category: {
									description: [
										"Categories and groups the filter examines.",
									]
									type: "int"
								}
								id: {
									description: [
										"ID number.",
									]
									required: true
									type:     "int"
								}
								log: {
									description: [
										"Enable/disable logging.",
									]
									type: "str"
									choices: [
										"enable",
										"disable",
									]
								}
								override_replacemsg: {
									description: [
										"Override replacement message.",
									]
									type: "str"
								}
								warn_duration: {
									description: [
										"Duration of warnings.",
									]
									type: "str"
								}
								warning_duration_type: {
									description: [
										"Re-display warning after closing browser or after a timeout.",
									]
									type: "str"
									choices: [
										"session",
										"timeout",
									]
								}
								warning_prompt: {
									description: [
										"Warning prompts in each category or each domain.",
									]
									type: "str"
									choices: [
										"per-domain",
										"per-category",
									]
								}
							}
						}
						max_quota_timeout: {
							description: [
								"Maximum FortiGuard quota used by single page view in seconds (excludes streams).",
							]
							type: "int"
						}
						options: {
							description: [
								"Options for FortiGuard Web Filter.",
							]
							type: "str"
							choices: [
								"error-allow",
								"rate-server-ip",
								"connect-request-bypass",
								"ftgd-disable",
							]
						}
						ovrd: {
							description: [
								"Allow web filter profile overrides.",
							]
							type: "str"
						}
						quota: {
							description: [
								"FortiGuard traffic quota settings.",
							]
							type: "list"
							suboptions: {
								category: {
									description: [
										"FortiGuard categories to apply quota to (category action must be set to monitor).",
									]
									type: "str"
								}
								duration: {
									description: [
										"Duration of quota.",
									]
									type: "str"
								}
								id: {
									description: [
										"ID number.",
									]
									required: true
									type:     "int"
								}
								override_replacemsg: {
									description: [
										"Override replacement message.",
									]
									type: "str"
								}
								type: {
									description: [
										"Quota type.",
									]
									type: "str"
									choices: [
										"time",
										"traffic",
									]
								}
								unit: {
									description: [
										"Traffic quota unit of measurement.",
									]
									type: "str"
									choices: [
										"B",
										"KB",
										"MB",
										"GB",
									]
								}
								value: {
									description: [
										"Traffic quota value.",
									]
									type: "int"
								}
							}
						}
						rate_crl_urls: {
							description: [
								"Enable/disable rating CRL by URL.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						rate_css_urls: {
							description: [
								"Enable/disable rating CSS by URL.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						rate_image_urls: {
							description: [
								"Enable/disable rating images by URL.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						rate_javascript_urls: {
							description: [
								"Enable/disable rating JavaScript by URL.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
					}
				}
				https_replacemsg: {
					description: [
						"Enable replacement messages for HTTPS.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				inspection_mode: {
					description: [
						"Web filtering inspection mode.",
					]
					type: "str"
					choices: [
						"proxy",
						"flow-based",
					]
				}
				log_all_url: {
					description: [
						"Enable/disable logging all URLs visited.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Profile name.",
					]
					required: true
					type:     "str"
				}
				options: {
					description: [
						"Options.",
					]
					type: "str"
					choices: [
						"activexfilter",
						"cookiefilter",
						"javafilter",
						"block-invalid-url",
						"jscript",
						"js",
						"vbs",
						"unknown",
						"intrinsic",
						"wf-referer",
						"wf-cookie",
						"per-user-bwl",
					]
				}
				override: {
					description: [
						"Web Filter override settings.",
					]
					type: "dict"
					suboptions: {
						ovrd_cookie: {
							description: [
								"Allow/deny browser-based (cookie) overrides.",
							]
							type: "str"
							choices: [
								"allow",
								"deny",
							]
						}
						ovrd_dur: {
							description: [
								"Override duration.",
							]
							type: "str"
						}
						ovrd_dur_mode: {
							description: [
								"Override duration mode.",
							]
							type: "str"
							choices: [
								"constant",
								"ask",
							]
						}
						ovrd_scope: {
							description: [
								"Override scope.",
							]
							type: "str"
							choices: [
								"user",
								"user-group",
								"ip",
								"browser",
								"ask",
							]
						}
						ovrd_user_group: {
							description: [
								"User groups with permission to use the override.",
							]
							type: "str"
							suboptions: name: {
								description: [
									"User group name. Source user.group.name.",
								]
								required: true
								type:     "str"
							}
						}
						profile: {
							description: [
								"Web filter profile with permission to create overrides.",
							]
							type: "list"
							suboptions: name: {
								description: [
									"Web profile. Source webfilter.profile.name.",
								]
								required: true
								type:     "str"
							}
						}
						profile_attribute: {
							description: [
								"Profile attribute to retrieve from the RADIUS server.",
							]
							type: "str"
							choices: [
								"User-Name",
								"NAS-IP-Address",
								"Framed-IP-Address",
								"Framed-IP-Netmask",
								"Filter-Id",
								"Login-IP-Host",
								"Reply-Message",
								"Callback-Number",
								"Callback-Id",
								"Framed-Route",
								"Framed-IPX-Network",
								"Class",
								"Called-Station-Id",
								"Calling-Station-Id",
								"NAS-Identifier",
								"Proxy-State",
								"Login-LAT-Service",
								"Login-LAT-Node",
								"Login-LAT-Group",
								"Framed-AppleTalk-Zone",
								"Acct-Session-Id",
								"Acct-Multi-Session-Id",
							]
						}
						profile_type: {
							description: [
								"Override profile type.",
							]
							type: "str"
							choices: [
								"list",
								"radius",
							]
						}
					}
				}
				ovrd_perm: {
					description: [
						"Permitted override types.",
					]
					type: "str"
					choices: [
						"bannedword-override",
						"urlfilter-override",
						"fortiguard-wf-override",
						"contenttype-check-override",
					]
				}
				post_action: {
					description: [
						"Action taken for HTTP POST traffic.",
					]
					type: "str"
					choices: [
						"normal",
						"block",
					]
				}
				replacemsg_group: {
					description: [
						"Replacement message group. Source system.replacemsg-group.name.",
					]
					type: "str"
				}
				web: {
					description: [
						"Web content filtering settings.",
					]
					type: "dict"
					suboptions: {
						blacklist: {
							description: [
								"Enable/disable automatic addition of URLs detected by FortiSandbox to blacklist.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						bword_table: {
							description: [
								"Banned word table ID. Source webfilter.content.id.",
							]
							type: "int"
						}
						bword_threshold: {
							description: [
								"Banned word score threshold.",
							]
							type: "int"
						}
						content_header_list: {
							description: [
								"Content header list. Source webfilter.content-header.id.",
							]
							type: "int"
						}
						keyword_match: {
							description: [
								"Search keywords to log when match is found.",
							]
							type: "str"
							suboptions: pattern: {
								description: [
									"Pattern/keyword to search for.",
								]
								required: true
								type:     "str"
							}
						}
						log_search: {
							description: [
								"Enable/disable logging all search phrases.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						safe_search: {
							description: [
								"Safe search type.",
							]
							type: "str"
							choices: [
								"url",
								"header",
							]
						}
						urlfilter_table: {
							description: [
								"URL filter table ID. Source webfilter.urlfilter.id.",
							]
							type: "int"
						}
						whitelist: {
							description: [
								"FortiGuard whitelist settings.",
							]
							type: "str"
							choices: [
								"exempt-av",
								"exempt-webcontent",
								"exempt-activex-java-cookie",
								"exempt-dlp",
								"exempt-rangeblock",
								"extended-log-others",
							]
						}
						youtube_restrict: {
							description: [
								"YouTube EDU filter level.",
							]
							type: "str"
							choices: [
								"none",
								"strict",
								"moderate",
							]
						}
					}
				}
				web_content_log: {
					description: [
						"Enable/disable logging logging blocked web content.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_extended_all_action_log: {
					description: [
						"Enable/disable extended any filter action logging for web filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_activex_log: {
					description: [
						"Enable/disable logging ActiveX.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_applet_log: {
					description: [
						"Enable/disable logging Java applets.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_command_block_log: {
					description: [
						"Enable/disable logging blocked commands.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_cookie_log: {
					description: [
						"Enable/disable logging cookie filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_cookie_removal_log: {
					description: [
						"Enable/disable logging blocked cookies.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_js_log: {
					description: [
						"Enable/disable logging Java scripts.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_jscript_log: {
					description: [
						"Enable/disable logging JScripts.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_referer_log: {
					description: [
						"Enable/disable logging referrers.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_unknown_log: {
					description: [
						"Enable/disable logging unknown scripts.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_filter_vbs_log: {
					description: [
						"Enable/disable logging VBS scripts.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_ftgd_err_log: {
					description: [
						"Enable/disable logging rating errors.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_ftgd_quota_usage: {
					description: [
						"Enable/disable logging daily quota usage.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_invalid_domain_log: {
					description: [
						"Enable/disable logging invalid domain names.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				web_url_log: {
					description: [
						"Enable/disable logging URL filtering.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wisp: {
					description: [
						"Enable/disable web proxy WISP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wisp_algorithm: {
					description: [
						"WISP server selection algorithm.",
					]
					type: "str"
					choices: [
						"primary-secondary",
						"round-robin",
						"auto-learning",
					]
				}
				wisp_servers: {
					description: [
						"WISP servers.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Server name. Source web-proxy.wisp.name.",
						]
						required: true
						type:     "str"
					}
				}
				youtube_channel_filter: {
					description: [
						"YouTube channel filter.",
					]
					type: "list"
					suboptions: {
						channel_id: {
							description: [
								"YouTube channel ID to be filtered.",
							]
							type: "str"
						}
						comment: {
							description: [
								"Comment.",
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
				youtube_channel_status: {
					description: [
						"YouTube channel filter status.",
					]
					type: "str"
					choices: [
						"disable",
						"blacklist",
						"whitelist",
					]
				}
			}
		}
	}
}
