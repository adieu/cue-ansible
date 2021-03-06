package ansible

module: hpilo_info: {
	module:            "hpilo_info"
	version_added:     "2.3"
	author:            "Dag Wieers (@dagwieers)"
	short_description: "Gather information through an HP iLO interface"
	description: [
		"This module gathers information on a specific system using its HP iLO interface. These information includes hardware and network related information useful for provisioning (e.g. macaddress, uuid).",
		"This module requires the C(hpilo) python module.",
		"This module was called C(hpilo_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(hpilo_info) module no longer returns C(ansible_facts)!",
	]

	options: {
		host: {
			description: [
				"The HP iLO hostname/address that is linked to the physical system.",
			]
			required: true
		}
		login: {
			description: [
				"The login name to authenticate to the HP iLO interface.",
			]
			default: "Administrator"
		}
		password: {
			description: [
				"The password to authenticate to the HP iLO interface.",
			]
			default: "admin"
		}
		ssl_version: {
			description: [
				"Change the ssl_version used.",
			]
			default: "TLSv1"
			choices: ["SSLv3", "SSLv23", "TLSv1", "TLSv1_1", "TLSv1_2"]
			version_added: "2.4"
		}
	}
	requirements: [
		"hpilo",
	]
	notes: [
		"This module ought to be run from a system that can access the HP iLO interface directly, either by using C(local_action) or using C(delegate_to).",
	]
}
