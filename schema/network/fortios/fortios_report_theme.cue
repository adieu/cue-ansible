package ansible

module: fortios_report_theme: {
	module:            "fortios_report_theme"
	short_description: "Report themes configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify report feature and theme category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		report_theme: {
			description: [
				"Report themes configuration",
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
				bullet_list_style: {
					description: [
						"Bullet list style.",
					]
					type: "str"
				}
				column_count: {
					description: [
						"Report page column count.",
					]
					type: "str"
					choices: [
						1,
						2,
						3,
					]
				}
				default_html_style: {
					description: [
						"Default HTML report style.",
					]
					type: "str"
				}
				default_pdf_style: {
					description: [
						"Default PDF report style.",
					]
					type: "str"
				}
				graph_chart_style: {
					description: [
						"Graph chart style.",
					]
					type: "str"
				}
				heading1_style: {
					description: [
						"Report heading style.",
					]
					type: "str"
				}
				heading2_style: {
					description: [
						"Report heading style.",
					]
					type: "str"
				}
				heading3_style: {
					description: [
						"Report heading style.",
					]
					type: "str"
				}
				heading4_style: {
					description: [
						"Report heading style.",
					]
					type: "str"
				}
				hline_style: {
					description: [
						"Horizontal line style.",
					]
					type: "str"
				}
				image_style: {
					description: [
						"Image style.",
					]
					type: "str"
				}
				name: {
					description: [
						"Report theme name.",
					]
					required: true
					type:     "str"
				}
				normal_text_style: {
					description: [
						"Normal text style.",
					]
					type: "str"
				}
				numbered_list_style: {
					description: [
						"Numbered list style.",
					]
					type: "str"
				}
				page_footer_style: {
					description: [
						"Report page footer style.",
					]
					type: "str"
				}
				page_header_style: {
					description: [
						"Report page header style.",
					]
					type: "str"
				}
				page_orient: {
					description: [
						"Report page orientation.",
					]
					type: "str"
					choices: [
						"portrait",
						"landscape",
					]
				}
				page_style: {
					description: [
						"Report page style.",
					]
					type: "str"
				}
				report_subtitle_style: {
					description: [
						"Report subtitle style.",
					]
					type: "str"
				}
				report_title_style: {
					description: [
						"Report title style.",
					]
					type: "str"
				}
				table_chart_caption_style: {
					description: [
						"Table chart caption style.",
					]
					type: "str"
				}
				table_chart_even_row_style: {
					description: [
						"Table chart even row style.",
					]
					type: "str"
				}
				table_chart_head_style: {
					description: [
						"Table chart head row style.",
					]
					type: "str"
				}
				table_chart_odd_row_style: {
					description: [
						"Table chart odd row style.",
					]
					type: "str"
				}
				table_chart_style: {
					description: [
						"Table chart style.",
					]
					type: "str"
				}
				toc_heading1_style: {
					description: [
						"Table of contents heading style.",
					]
					type: "str"
				}
				toc_heading2_style: {
					description: [
						"Table of contents heading style.",
					]
					type: "str"
				}
				toc_heading3_style: {
					description: [
						"Table of contents heading style.",
					]
					type: "str"
				}
				toc_heading4_style: {
					description: [
						"Table of contents heading style.",
					]
					type: "str"
				}
				toc_title_style: {
					description: [
						"Table of contents title style.",
					]
					type: "str"
				}
			}
		}
	}
}
