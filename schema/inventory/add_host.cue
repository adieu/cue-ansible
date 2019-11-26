package ansible

module: add_host: {
	module:            "add_host"
	short_description: "Add a host (and alternatively a group) to the ansible-playbook in-memory inventory"
	description: [
		"Use variables to create new hosts and groups in inventory for use in later plays of the same playbook.",
		"Takes variables so you can define the new hosts more fully.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.9"
	options: {
		name: {
			description: [
				"The hostname/ip of the host to add to the inventory, can include a colon and a port number.",
			]
			type:     "str"
			required: true
			aliases: ["host", "hostname"]
		}
		groups: {
			description: [
				"The groups to add the hostname to.",
			]
			type: "list"
			aliases: ["group", "groupname"]
		}
	}
	notes: [
		"This module bypasses the play host loop and only runs once for all the hosts in the play, if you need it to iterate use a with-loop construct.",
		"The alias C(host) of the parameter C(name) is only available on Ansible 2.4 and newer.",
		"Since Ansible 2.4, the C(inventory_dir) variable is now set to C(None) instead of the 'global inventory source', because you can now have multiple sources.  An example was added that shows how to partially restore the previous behaviour.",
		"Windows targets are supported by this module.",
	]
	seealso: [{
		module: "group_by"
	}]
	author: [
		"Ansible Core Team",
		"Seth Vidal (@skvidal)",
	]
}
