package ansible

module: cloud_init_data_facts: {
	module:            "cloud_init_data_facts"
	short_description: "Retrieve facts of cloud-init."
	description: [
		"Gathers facts by reading the status.json and result.json of cloud-init.",
	]
	version_added: 2.6
	author:        "René Moser (@resmo)"
	options: filter: {
		description: ["Filter facts"]
		choices: ["status", "result"]
	}
	notes: ["See http://cloudinit.readthedocs.io/ for more information about cloud-init."]
}
