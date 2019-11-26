package ansible

module: fortios_report_layout: {
	module:            "fortios_report_layout"
	short_description: "Report layout configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify report feature and layout category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		report_layout: {
			description: [
				"Report layout configuration.",
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
				body_item: {
					description: [
						"Configure report body item.",
					]
					type: "list"
					suboptions: {
						chart: {
							description: [
								"Report item chart name.",
							]
							type: "str"
						}
						chart_options: {
							description: [
								"Report chart options.",
							]
							type: "str"
							choices: [
								"include-no-data",
								"hide-title",
								"show-caption",
							]
						}
						column: {
							description: [
								"Report section column number.",
							]
							type: "int"
						}
						content: {
							description: [
								"Report item text content.",
							]
							type: "str"
						}
						description: {
							description: [
								"Description.",
							]
							type: "str"
						}
						drill_down_items: {
							description: [
								"Control how drill down charts are shown.",
							]
							type: "str"
						}
						drill_down_types: {
							description: [
								"Control whether keys from the parent being combined or not.",
							]
							type: "str"
						}
						hide: {
							description: [
								"Enable/disable hide item in report.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"Report item ID.",
							]
							required: true
							type:     "int"
						}
						img_src: {
							description: [
								"Report item image file name.",
							]
							type: "str"
						}
						list: {
							description: [
								"Configure report list item.",
							]
							type: "list"
							suboptions: {
								content: {
									description: [
										"List entry content.",
									]
									type: "str"
								}
								id: {
									description: [
										"List entry ID.",
									]
									required: true
									type:     "int"
								}
							}
						}
						list_component: {
							description: [
								"Report item list component.",
							]
							type: "str"
							choices: [
								"bullet",
								"numbered",
							]
						}
						misc_component: {
							description: [
								"Report item miscellaneous component.",
							]
							type: "str"
							choices: [
								"hline",
								"page-break",
								"column-break",
								"section-start",
							]
						}
						parameters: {
							description: [
								"Parameters.",
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
								name: {
									description: [
										"Field name that match field of parameters defined in dataset.",
									]
									type: "str"
								}
								value: {
									description: [
										"Value to replace corresponding field of parameters defined in dataset.",
									]
									type: "str"
								}
							}
						}
						style: {
							description: [
								"Report item style.",
							]
							type: "str"
						}
						table_caption_style: {
							description: [
								"Table chart caption style.",
							]
							type: "str"
						}
						table_column_widths: {
							description: [
								"Report item table column widths.",
							]
							type: "str"
						}
						table_even_row_style: {
							description: [
								"Table chart even row style.",
							]
							type: "str"
						}
						table_head_style: {
							description: [
								"Table chart head style.",
							]
							type: "str"
						}
						table_odd_row_style: {
							description: [
								"Table chart odd row style.",
							]
							type: "str"
						}
						text_component: {
							description: [
								"Report item text component.",
							]
							type: "str"
							choices: [
								"text",
								"heading1",
								"heading2",
								"heading3",
							]
						}
						title: {
							description: [
								"Report section title.",
							]
							type: "str"
						}
						top_n: {
							description: [
								"Value of top.",
							]
							type: "int"
						}
						type: {
							description: [
								"Report item type.",
							]
							type: "str"
							choices: [
								"text",
								"image",
								"chart",
								"misc",
							]
						}
					}
				}
				cutoff_option: {
					description: [
						"Cutoff-option is either run-time or custom.",
					]
					type: "str"
					choices: [
						"run-time",
						"custom",
					]
				}
				cutoff_time: {
					description: [
						"Custom cutoff time to generate report [hh:mm].",
					]
					type: "str"
				}
				day: {
					description: [
						"Schedule days of week to generate report.",
					]
					type: "str"
					choices: [
						"sunday",
						"monday",
						"tuesday",
						"wednesday",
						"thursday",
						"friday",
						"saturday",
					]
				}
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				email_recipients: {
					description: [
						"Email recipients for generated reports.",
					]
					type: "str"
				}
				email_send: {
					description: [
						"Enable/disable sending emails after reports are generated.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				format: {
					description: [
						"Report format.",
					]
					type: "str"
					choices: [
						"pdf",
					]
				}
				max_pdf_report: {
					description: [
						"Maximum number of PDF reports to keep at one time (oldest report is overwritten).",
					]
					type: "int"
				}
				name: {
					description: [
						"Report layout name.",
					]
					required: true
					type:     "str"
				}
				options: {
					description: [
						"Report layout options.",
					]
					type: "str"
					choices: [
						"include-table-of-content",
						"auto-numbering-heading",
						"view-chart-as-heading",
						"show-html-navbar-before-heading",
						"dummy-option",
					]
				}
				page: {
					description: [
						"Configure report page.",
					]
					type: "dict"
					suboptions: {
						column_break_before: {
							description: [
								"Report page auto column break before heading.",
							]
							type: "str"
							choices: [
								"heading1",
								"heading2",
								"heading3",
							]
						}
						footer: {
							description: [
								"Configure report page footer.",
							]
							type: "dict"
							suboptions: {
								footer_item: {
									description: [
										"Configure report footer item.",
									]
									type: "list"
									suboptions: {
										content: {
											description: [
												"Report item text content.",
											]
											type: "str"
										}
										description: {
											description: [
												"Description.",
											]
											type: "str"
										}
										id: {
											description: [
												"Report item ID.",
											]
											required: true
											type:     "int"
										}
										img_src: {
											description: [
												"Report item image file name.",
											]
											type: "str"
										}
										style: {
											description: [
												"Report item style.",
											]
											type: "str"
										}
										type: {
											description: [
												"Report item type.",
											]
											type: "str"
											choices: [
												"text",
												"image",
											]
										}
									}
								}
								style: {
									description: [
										"Report footer style.",
									]
									type: "str"
								}
							}
						}
						header: {
							description: [
								"Configure report page header.",
							]
							type: "dict"
							suboptions: {
								header_item: {
									description: [
										"Configure report header item.",
									]
									type: "list"
									suboptions: {
										content: {
											description: [
												"Report item text content.",
											]
											type: "str"
										}
										description: {
											description: [
												"Description.",
											]
											type: "str"
										}
										id: {
											description: [
												"Report item ID.",
											]
											required: true
											type:     "int"
										}
										img_src: {
											description: [
												"Report item image file name.",
											]
											type: "str"
										}
										style: {
											description: [
												"Report item style.",
											]
											type: "str"
										}
										type: {
											description: [
												"Report item type.",
											]
											type: "str"
											choices: [
												"text",
												"image",
											]
										}
									}
								}
								style: {
									description: [
										"Report header style.",
									]
									type: "str"
								}
							}
						}
						options: {
							description: [
								"Report page options.",
							]
							type: "str"
							choices: [
								"header-on-first-page",
								"footer-on-first-page",
							]
						}
						page_break_before: {
							description: [
								"Report page auto page break before heading.",
							]
							type: "str"
							choices: [
								"heading1",
								"heading2",
								"heading3",
							]
						}
						paper: {
							description: [
								"Report page paper.",
							]
							type: "str"
							choices: [
								"a4",
								"letter",
							]
						}
					}
				}
				schedule_type: {
					description: [
						"Report schedule type.",
					]
					type: "str"
					choices: [
						"demand",
						"daily",
						"weekly",
					]
				}
				style_theme: {
					description: [
						"Report style theme.",
					]
					type: "str"
				}
				subtitle: {
					description: [
						"Report subtitle.",
					]
					type: "str"
				}
				time: {
					description: [
						"Schedule time to generate report [hh:mm].",
					]
					type: "str"
				}
				title: {
					description: [
						"Report title.",
					]
					type: "str"
				}
			}
		}
	}
}
