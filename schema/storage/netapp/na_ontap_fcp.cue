package ansible

module: na_ontap_fcp: {
	module:            "na_ontap_fcp"
	short_description: "NetApp ONTAP Start, Stop and Enable FCP services."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Start, Stop and Enable FCP services.",
	]
	options: {
		state: {
			description: [
				"Whether the FCP should be enabled or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		status: {
			description: [
				"Whether the FCP should be up or down",
			]
			choices: ["up", "down"]
			default: "up"
		}

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}
	}
}
