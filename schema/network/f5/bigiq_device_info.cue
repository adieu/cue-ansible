package ansible

module: bigiq_device_info: {
	module:            "bigiq_device_info"
	short_description: "Collect information from F5 BIG-IQ devices"
	description: [
		"Collect information from F5 BIG-IQ devices.",
		"This module was called C(bigiq_device_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: 2.8
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the information returned to a given subset.",
			"Can specify a list of values to include a larger subset.",
			"Values can also be used with an initial C(!) to specify that a specific subset should not be collected.",
		]

		type:     "list"
		required: true
		choices: [
			"all",
			"applications",
			"managed-devices",
			"purchased-pool-licenses",
			"regkey-pools",
			"system-info",
			"vlans",
			"!all",
			"!applications",
			"!managed-devices",
			"!purchased-pool-licenses",
			"!regkey-pools",
			"!system-info",
			"!vlans",
		]
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
