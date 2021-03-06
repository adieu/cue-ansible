package ansible

module: include_role: {
	author:            "Ansible Core Team (@ansible)"
	module:            "include_role"
	short_description: "Load and execute a role"
	description: [
		"Dynamically loads and executes a specified role as a task.",
		"May be used only where Ansible tasks are allowed - inside C(pre_tasks), C(tasks), or C(post_tasks) playbook objects, or as a task inside a role.",
		"Task-level keywords, loops, and conditionals apply only to the C(include_role) statement itself.",
		"To apply keywords to the tasks within the role, pass them using the C(apply) option or use M(import_role) instead.",
		"Ignores some keywords, like C(until) and C(retries).",
		"This module is also supported for Windows targets.",
	]
	version_added: "2.2"
	options: {
		apply: {
			description: [
				"Accepts a hash of task keywords (e.g. C(tags), C(become)) that will be applied to all tasks within the included role.",
			]
			version_added: "2.7"
		}
		name: {
			description: [
				"The name of the role to be executed.",
			]
			type:     "str"
			required: true
		}
		tasks_from: {
			description: [
				"File to load from a role's C(tasks/) directory.",
			]
			type:    "str"
			default: "main"
		}
		vars_from: {
			description: [
				"File to load from a role's C(vars/) directory.",
			]
			type:    "str"
			default: "main"
		}
		defaults_from: {
			description: [
				"File to load from a role's C(defaults/) directory.",
			]
			type:    "str"
			default: "main"
		}
		allow_duplicates: {
			description: [
				"Overrides the role's metadata setting to allow using a role more than once with the same parameters.",
			]
			type:    "bool"
			default: true
		}
		public: {
			description: [
				"This option dictates whether the role's C(vars) and C(defaults) are exposed to the playbook. If set to C(yes) the variables will be available to tasks following the C(include_role) task. This functionality differs from standard variable exposure for roles listed under the C(roles) header or C(import_role) as they are exposed at playbook parsing time, and available to earlier roles and tasks as well.",
			]

			type:          "bool"
			default:       false
			version_added: "2.7"
		}
		handlers_from: {
			description: [
				"File to load from a role's C(handlers/) directory.",
			]
			type:          "str"
			default:       "main"
			version_added: "2.8"
		}
	}
	notes: [
		"Handlers are made available to the whole play.",
		"Before Ansible 2.4, as with C(include), this task could be static or dynamic, If static, it implied that it won't need templating, loops or conditionals and will show included tasks in the C(--list) options. Ansible would try to autodetect what is needed, but you can set C(static) to C(yes) or C(no) at task level to control this.",
		"After Ansible 2.4, you can use M(import_role) for C(static) behaviour and this action for C(dynamic) one.",
	]
	seealso: [{
		module: "import_playbook"
	}, {
		module: "import_role"
	}, {
		module: "import_tasks"
	}, {
		module: "include_tasks"
	}, {
		ref:         "playbooks_reuse_includes"
		description: "More information related to including and importing playbooks, roles and tasks."
	}]
}
