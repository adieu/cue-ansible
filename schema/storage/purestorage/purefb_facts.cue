package ansible

module: purefb_facts: {
	module:        "purefb_facts"
	version_added: "2.7"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favor of C(_info) module."
		alternative: "Use M(purefb_info) instead."
	}
	short_description: "Collect facts from Pure Storage FlashBlade"
	description: [
		"Collect facts information from a Pure Storage FlashBlade running the Purity//FB operating system. By default, the module will collect basic fact information including hosts, host groups, protection groups and volume counts. Additional fact information can be collected based on the configured set of arguments.",
	]

	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will define the facts to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnets, lags, filesystems and snapshots.",
		]

		required: false
		type:     "list"
		default:  "minimum"
	}
	extends_documentation_fragment: ["purestorage.fb"]
}
