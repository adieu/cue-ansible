package ansible

module: na_ontap_snmp: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Delete SNMP community",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_snmp"
	options: {
		access_control: {
			description: [
				"Access control for the community. The only supported value is 'ro' (read-only)",
			]
			required: true
		}
		community_name: {
			description: [
				"The name of the SNMP community to manage.",
			]
			required: true
		}
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified SNMP community should exist or not.",
			]
			default: "present"
		}
	}
	short_description: "NetApp ONTAP SNMP community"
	version_added:     "2.6"
}
