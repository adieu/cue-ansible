package ansible

module: na_ontap_portset: {
	short_description: "NetApp ONTAP Create/Delete portset"
	author:            "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Delete ONTAP portset, modify ports in a portset.",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_portset"
	options: {
		state: {
			description: [
				"If you want to create a portset.",
			]
			default: "present"
		}
		vserver: {
			required: true
			description: [
				"Name of the SVM.",
			]
		}
		name: {
			required: true
			description: [
				"Name of the port set to create.",
			]
		}
		type: {
			description: [
				"Required for create.",
				"Protocols accepted for this portset.",
			]
			choices: ["fcp", "iscsi", "mixed"]
		}
		force: {
			description: [
				"If 'false' or not specified, the request will fail if there are any igroups bound to this portset.",
				"If 'true', forcibly destroy the portset, even if there are existing igroup bindings.",
			]
			type:    "bool"
			default: false
		}
		ports: description: [
			"Specify the ports associated with this portset. Should be comma separated.",
			"It represents the expected state of a list of ports at any time, and replaces the current value of ports.",
			"Adds a port if it is specified in expected state but not in current state.",
			"Deletes a port if it is in current state but not in expected state.",
		]
	}
	version_added: "2.8"
}
