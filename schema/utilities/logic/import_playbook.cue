package ansible

module: import_playbook: {
	author:            "Ansible Core Team (@ansible)"
	module:            "import_playbook"
	short_description: "Import a playbook"
	description: [
		"Includes a file with a list of plays to be executed.",
		"Files with a list of plays can only be included at the top level.",
		"You cannot use this action inside a play.",
	]
	version_added: "2.4"
	options: "free-form": description: [
		"The name of the imported playbook is specified directly without any other option.",
	]
	notes: [
		"This is a core feature of Ansible, rather than a module, and cannot be overridden like a module.",
	]
	seealso: [{
		module: "import_role"
	}, {
		module: "import_tasks"
	}, {
		module: "include_role"
	}, {
		module: "include_tasks"
	}, {
		ref:         "playbooks_reuse_includes"
		description: "More information related to including and importing playbooks, roles and tasks."
	}]
}
