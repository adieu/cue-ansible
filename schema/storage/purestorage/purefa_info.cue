package ansible

module: purefa_info: {
	module:            "purefa_info"
	version_added:     "2.9"
	short_description: "Collect information from Pure Storage FlashArray"
	description: [
		"Collect information from a Pure Storage Flasharray running the Purity//FA operating system. By default, the module will collect basic information including hosts, host groups, protection groups and volume counts. Additional information can be collected based on the configured set of arguments.",
	]

	author: [
		"Pure Storage ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will define the information to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnet, interfaces, hgroups, pgroups, hosts, admins, volumes, snapshots, pods, vgroups, offload, apps, arrays, certs and kmip.",
		]

		type:     "list"
		required: false
		default:  "minimum"
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
