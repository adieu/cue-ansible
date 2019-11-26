package ansible

module: ovirt_host_info: {
	module:            "ovirt_host_info"
	short_description: "Retrieve information about one or more oVirt/RHV hosts"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV hosts.",
		"This module was called C(ovirt_host_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_host_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_hosts), which contains a list of hosts. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		pattern: description: [
			"Search term which is accepted by oVirt/RHV search backend.",
			"For example to search host X from datacenter Y use following pattern: name=X and datacenter=Y",
		]

		all_content: {
			description: [
				"If I(true) all the attributes of the hosts should be included in the response.",
			]

			default:       false
			version_added: "2.7"
			type:          "bool"
		}
		cluster_version: {
			description: [
				"Filter the hosts based on the cluster version.",
			]
			type:          "str"
			version_added: "2.8"
		}
	}

	extends_documentation_fragment: "ovirt_info"
}
