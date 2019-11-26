package ansible

module: meta: {
	module:            "meta"
	short_description: "Execute Ansible 'actions'"
	version_added:     "1.2"
	description: [
		"Meta tasks are a special kind of task which can influence Ansible internal execution or state.",
		"Meta tasks can be used anywhere within your playbook.",
		"This module is also supported for Windows targets.",
	]
	options: free_form: {
		description: [
			"This module takes a free form command, as a string. There is not an actual option named \"free form\".  See the examples!",
			"C(flush_handlers) makes Ansible run any handler tasks which have thus far been notified. Ansible inserts these tasks internally at certain points to implicitly trigger handler runs (after pre/post tasks, the final role execution, and the main tasks section of your plays).",
			"C(refresh_inventory) (added in Ansible 2.0) forces the reload of the inventory, which in the case of dynamic inventory scripts means they will be re-executed. If the dynamic inventory script is using a cache, Ansible cannot know this and has no way of refreshing it (you can disable the cache or, if available for your specific inventory datasource (e.g. aws), you can use the an inventory plugin instead of an inventory script). This is mainly useful when additional hosts are created and users wish to use them instead of using the M(add_host) module.",
			"C(noop) (added in Ansible 2.0) This literally does 'nothing'. It is mainly used internally and not recommended for general use.",
			"C(clear_facts) (added in Ansible 2.1) causes the gathered facts for the hosts specified in the play's list of hosts to be cleared, including the fact cache.",
			"C(clear_host_errors) (added in Ansible 2.1) clears the failed state (if any) from hosts specified in the play's list of hosts.",
			"C(end_play) (added in Ansible 2.2) causes the play to end without failing the host(s). Note that this affects all hosts.",
			"C(reset_connection) (added in Ansible 2.3) interrupts a persistent connection (i.e. ssh + control persist)",
			"C(end_host) (added in Ansible 2.8) is a per-host variation of C(end_play). Causes the play to end for the current host without failing it.",
		]
		choices: ["clear_facts", "clear_host_errors", "end_host", "end_play", "flush_handlers", "noop", "refresh_inventory", "reset_connection"]
		required: true
	}
	notes: [
		"C(meta) is not really a module nor action_plugin as such it cannot be overwritten.",
		"C(clear_facts) will remove the persistent facts from M(set_fact) using C(cacheable=True), but not the current host variable it creates for the current run.",
		"Looping on meta tasks is not supported.",
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "assert"
	}, {
		module: "fail"
	}]
	author: ["Ansible Core Team"]
}
