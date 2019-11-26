package ansible

module: fmgr_secprof_dns: {
	module:        "fmgr_secprof_dns"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manage DNS security profiles in FortiManager"
	description: [
		"Manage DNS security profiles in FortiManager",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values.",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		youtube_restrict: {
			type: "str"
			description: [
				"Set safe search for YouTube restriction level.",
				"choice | strict | Enable strict safe seach for YouTube.",
				"choice | moderate | Enable moderate safe search for YouTube.",
			]
			required: false
			choices: ["strict", "moderate"]
		}

		sdns_ftgd_err_log: {
			type: "str"
			description: [
				"Enable/disable FortiGuard SDNS rating error logging.",
				"choice | disable | Disable FortiGuard SDNS rating error logging.",
				"choice | enable | Enable FortiGuard SDNS rating error logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		sdns_domain_log: {
			type: "str"
			description: [
				"Enable/disable domain filtering and botnet domain logging.",
				"choice | disable | Disable domain filtering and botnet domain logging.",
				"choice | enable | Enable domain filtering and botnet domain logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		safe_search: {
			type: "str"
			description: [
				"Enable/disable Google, Bing, and YouTube safe search.",
				"choice | disable | Disable Google, Bing, and YouTube safe search.",
				"choice | enable | Enable Google, Bing, and YouTube safe search.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		redirect_portal: {
			type: "str"
			description: [
				"IP address of the SDNS redirect portal.",
			]
			required: false
		}

		name: {
			type: "str"
			description: [
				"Profile name.",
			]
			required: false
		}

		log_all_domain: {
			type: "str"
			description: [
				"Enable/disable logging of all domains visited (detailed DNS logging).",
				"choice | disable | Disable logging of all domains visited.",
				"choice | enable | Enable logging of all domains visited.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		external_ip_blocklist: {
			type: "str"
			description: [
				"One or more external IP block lists.",
			]
			required: false
		}

		comment: {
			type: "str"
			description: [
				"Comment for the security profile to show in the FortiManager GUI.",
			]
			required: false
		}

		block_botnet: {
			type: "str"
			description: [
				"Enable/disable blocking botnet C&C; DNS lookups.",
				"choice | disable | Disable blocking botnet C&C; DNS lookups.",
				"choice | enable | Enable blocking botnet C&C; DNS lookups.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		block_action: {
			type: "str"
			description: [
				"Action to take for blocked domains.",
				"choice | block | Return NXDOMAIN for blocked domains.",
				"choice | redirect | Redirect blocked domains to SDNS portal.",
			]
			required: false
			choices: ["block", "redirect"]
		}

		domain_filter_domain_filter_table: {
			type: "str"
			description: [
				"DNS domain filter table ID.",
			]
			required: false
		}

		ftgd_dns_options: {
			type: "str"
			description: [
				"FortiGuard DNS filter options.",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | error-allow | Allow all domains when FortiGuard DNS servers fail.",
				"flag | ftgd-disable | Disable FortiGuard DNS domain rating.",
			]
			required: false
			choices: ["error-allow", "ftgd-disable"]
		}

		ftgd_dns_filters_action: {
			type: "str"
			description: [
				"Action to take for DNS requests matching the category.",
				"choice | monitor | Allow DNS requests matching the category and log the result.",
				"choice | block | Block DNS requests matching the category.",
			]
			required: false
			choices: ["monitor", "block"]
		}

		ftgd_dns_filters_category: {
			type: "str"
			description: [
				"Category number.",
			]
			required: false
		}

		ftgd_dns_filters_log: {
			type: "str"
			description: [
				"Enable/disable DNS filter logging for this DNS profile.",
				"choice | disable | Disable DNS filter logging.",
				"choice | enable | Enable DNS filter logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}
	}
}
