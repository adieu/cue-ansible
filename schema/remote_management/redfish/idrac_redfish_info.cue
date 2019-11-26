package ansible

module: idrac_redfish_info: {
	module:            "idrac_redfish_info"
	version_added:     "2.8"
	short_description: "Manages servers through iDRAC using Dell Redfish APIs"
	description: [
		"Builds Redfish URIs locally and sends them to remote iDRAC controllers to get information back.",
		"For use with Dell iDRAC operations that require Redfish OEM extensions",
		"This module was called C(idrac_redfish_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(idrac_redfish_info) module no longer returns C(ansible_facts)!",
	]

	options: {
		category: {
			required: true
			description: [
				"Category to execute on iDRAC controller",
			]
			type: "str"
		}
		command: {
			required: true
			description: [
				"List of commands to execute on iDRAC controller",
			]
			type: "list"
		}
		baseuri: {
			required: true
			description: [
				"Base URI of iDRAC controller",
			]
			type: "str"
		}
		username: {
			required: true
			description: [
				"User for authentication with iDRAC controller",
			]
			type: "str"
		}
		password: {
			required: true
			description: [
				"Password for authentication with iDRAC controller",
			]
			type: "str"
		}
		timeout: {
			description: [
				"Timeout in seconds for URL requests to OOB controller",
			]
			default: 10
			type:    "int"
		}
	}

	author: "Jose Delarosa (@jose-delarosa)"
}
