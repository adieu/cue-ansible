package ansible

module: fortios_facts: {
	module:            "fortios_facts"
	version_added:     "2.9"
	short_description: "Get facts about fortios devices."
	description: [
		"Collects facts from network devices running the fortios operating system. This module places the facts gathered in the fact tree keyed by the respective resource name.  This facts module will only collect those facts which user specified in playbook.",
	]

	author: [
		"Don Yao (@fortinetps)",
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Support both legacy mode (local_action) and httpapi",
		"Legacy mode run as a local_action in your playbook, requires fortiosapi library developed by Fortinet",
		"httpapi mode is the new recommend way for network modules",
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
			type:     "str"
			default:  ""
			required: false
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:     "str"
			default:  "root"
			required: false
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:     "bool"
			default:  true
			required: false
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:     "bool"
			default:  false
			required: false
		}
		gather_subset: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include system_current-admins_select, system_firmware_select, system_fortimanager_status, system_ha-checksums_select, system_interface_select, system_status_select and system_time_select",
			]

			type:     "list"
			elements: "dict"
			required: true
			suboptions: {
				fact: {
					description: [
						"Name of the facts to gather",
					]
					type:     "str"
					required: true
				}
				filters: {
					description: [
						"Filters apply when gathering facts",
					]
					type:     "list"
					elements: "dict"
					required: false
				}
			}
		}
	}
}
