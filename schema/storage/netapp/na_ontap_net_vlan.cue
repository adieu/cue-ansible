package ansible

module: na_ontap_net_vlan: {
	module:            "na_ontap_net_vlan"
	short_description: "NetApp ONTAP network VLAN"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create or Delete a network VLAN",
	]
	options: {
		state: {
			description: [
				"Whether the specified network VLAN should exist or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		parent_interface: {
			description: [
				"The interface that hosts the VLAN interface.",
			]
			required: true
		}
		vlanid: {
			description: [
				"The VLAN id. Ranges from 1 to 4094.",
			]
			required: true
		}
		node: {
			description: [
				"Node name of VLAN interface.",
			]
			required: true
		}
	}
	notes: ["The C(interface_name) option has been removed and should be deleted from playbooks"]
}
