package ansible

module: oneview_datacenter_info: {
	module:            "oneview_datacenter_info"
	short_description: "Retrieve information about the OneView Data Centers"
	description: [
		"Retrieve information about the OneView Data Centers.",
		"This module was called C(oneview_datacenter_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(oneview_datacenter_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.5"
	requirements: [
		"hpOneView >= 2.0.1",
	]
	author: [
		"Alex Monteiro (@aalexmonteiro)",
		"Madhav Bharadwaj (@madhav-bharadwaj)",
		"Priyanka Sood (@soodpr)",
		"Ricardo Galeno (@ricardogpsf)",
	]
	options: {
		name: description: [
			"Data Center name.",
		]
		options: description: [
			"Retrieve additional information. Options available: 'visualContent'.",
		]
	}

	extends_documentation_fragment: [
		"oneview",
		"oneview.factsparams",
	]
}
