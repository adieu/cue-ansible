package ansible

module: import_tasks: {
	author:            "Ansible Core Team (@ansible)"
	module:            "import_tasks"
	short_description: "Import a task list"
	description: [
		"Imports a list of tasks to be added to the current playbook for subsequent execution.",
	]
	version_added: "2.4"
	options: "free-form": description: [
		"The name of the imported file is specified directly without any other option.",
		"Most keywords, including loops and conditionals, only applied to the imported tasks, not to this statement itself.",
		"If you need any of those to apply, use M(include_tasks) instead.",
	]
	notes: [
		"This is a core feature of Ansible, rather than a module, and cannot be overridden like a module.",
	]
	seealso: [{
		module: "import_playbook"
	}, {
		module: "import_role"
	}, {
		module: "include_role"
	}, {
		module: "include_tasks"
	}, {
		ref:         "playbooks_reuse_includes"
		description: "More information related to including and importing playbooks, roles and tasks."
	}]
}
