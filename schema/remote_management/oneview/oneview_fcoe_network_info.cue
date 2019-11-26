package ansible

module: oneview_fcoe_network_info: {
	module:            "oneview_fcoe_network_info"
	short_description: "Retrieve the information about one or more of the OneView FCoE Networks"
	description: [
		"Retrieve the information about one or more of the FCoE Networks from OneView.",
		"This module was called C(oneview_fcoe_network_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(oneview_fcoe_network_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.4"
	requirements: [
		"hpOneView >= 2.0.1",
	]
	author: [
		"Felipe Bulsoni (@fgbulsoni)",
		"Thiago Miotto (@tmiotto)",
		"Adriane Cardozo (@adriane-cardozo)",
	]
	options: name: description: [
		"FCoE Network name.",
	]
	extends_documentation_fragment: [
		"oneview",
		"oneview.factsparams",
	]
}
