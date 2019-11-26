package ansible

module: na_ontap_nvme: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Delete NVMe Service",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_nvme"
	options: {
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified NVMe should exist or not.",
			]
			default: "present"
		}
		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			required: true
		}
		status_admin: {
			description: [
				"Whether the status of NVMe should be up or down",
			]
			type: "bool"
		}
	}
	short_description: "NetApp ONTAP Manage NVMe Service"
	version_added:     "2.8"
}
