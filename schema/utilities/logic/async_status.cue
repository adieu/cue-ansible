package ansible

module: async_status: {
	module:            "async_status"
	short_description: "Obtain status of asynchronous task"
	description: [
		"This module gets the status of an asynchronous task.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.5"
	options: {
		jid: {
			description: [
				"Job or task identifier",
			]
			type:     "str"
			required: true
		}
		mode: {
			description: [
				"If C(status), obtain the status.",
				"If C(cleanup), clean up the async job cache (by default in C(~/.ansible_async/)) for the specified job I(jid).",
			]
			type: "str"
			choices: ["cleanup", "status"]
			default: "status"
		}
	}
	notes: [
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		ref:         "playbooks_async"
		description: "Detailed information on how to use asynchronous actions and polling."
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
