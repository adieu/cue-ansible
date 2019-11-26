package ansible

module: include: {
	author:            "Ansible Core Team (@ansible)"
	module:            "include"
	short_description: "Include a play or task list"
	description: [
		"Includes a file with a list of plays or tasks to be executed in the current playbook.",
		"Files with a list of plays can only be included at the top level. Lists of tasks can only be included where tasks normally run (in play).",
		"Before Ansible 2.0, all includes were 'static' and were executed when the play was compiled.",
		"Static includes are not subject to most directives. For example, loops or conditionals are applied instead to each inherited task.",
		"Since Ansible 2.0, task includes are dynamic and behave more like real tasks. This means they can be looped, skipped and use variables from any source. Ansible tries to auto detect this, but you can use the C(static) directive (which was added in Ansible 2.1) to bypass autodetection.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.6"
	options: "free-form": description: [
		"This module allows you to specify the name of the file directly without any other options.",
	]
	notes: [
		"This is a core feature of Ansible, rather than a module, and cannot be overridden like a module.",
		"Include has some unintuitive behaviours depending on if it is running in a static or dynamic in play or in playbook context, in an effort to clarify behaviours we are moving to a new set modules (M(include_tasks), M(include_role), M(import_playbook), M(import_tasks)) that have well established and clear behaviours.",
		"B(This module will still be supported for some time but we are looking at deprecating it in the near future.)",
	]
	seealso: [{
		module: "import_playbook"
	}, {
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
