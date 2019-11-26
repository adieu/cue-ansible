package ansible

module: oneview_logical_interconnect_group_info: {
	module:            "oneview_logical_interconnect_group_info"
	short_description: "Retrieve information about one or more of the OneView Logical Interconnect Groups"
	description: [
		"Retrieve information about one or more of the Logical Interconnect Groups from OneView",
		"This module was called C(oneview_logical_interconnect_group_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(oneview_logical_interconnect_group_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.5"
	requirements: [
		"hpOneView >= 2.0.1",
	]
	author: [
		"Felipe Bulsoni (@fgbulsoni)",
		"Thiago Miotto (@tmiotto)",
		"Adriane Cardozo (@adriane-cardozo)",
	]
	options: name: description: [
		"Logical Interconnect Group name.",
	]
	extends_documentation_fragment: [
		"oneview",
		"oneview.factsparams",
	]
}
