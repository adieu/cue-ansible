package ansible

module: purefa_facts: {
	module:        "purefa_facts"
	version_added: "2.6"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favor of C(_info) module."
		alternative: "Use M(purefa_info) instead."
	}
	short_description: "Collect facts from Pure Storage FlashArray"
	description: [
		"Collect facts information from a Pure Storage Flasharray running the Purity//FA operating system. By default, the module will collect basic fact information including hosts, host groups, protection groups and volume counts. Additional fact information can be collected based on the configured set of arguments.",
	]

	author: [
		"Pure Storage ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will define the facts to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnet, interfaces, hgroups, pgroups, hosts, admins, volumes, snapshots, pods, vgroups, offload, apps and arrays.",
		]

		type:     "list"
		required: false
		default:  "minimum"
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
