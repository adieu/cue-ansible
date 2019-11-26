package ansible

module: na_ontap_net_port: {
	module:            "na_ontap_net_port"
	short_description: "NetApp ONTAP network ports."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify a ONTAP network port.",
	]
	options: {
		state: {
			description: [
				"Whether the specified net port should exist or not.",
			]
			choices: ["present"]
			default: "present"
		}
		node: {
			description: [
				"Specifies the name of node.",
			]
			required: true
		}
		ports: {
			aliases: [
				"port",
			]
			description: [
				"Specifies the name of port(s).",
			]
			required: true
		}
		mtu: description: [
			"Specifies the maximum transmission unit (MTU) reported by the port.",
		]
		autonegotiate_admin: description: [
			"Enables or disables Ethernet auto-negotiation of speed, duplex and flow control.",
		]

		duplex_admin: description: [
			"Specifies the user preferred duplex setting of the port.",
			"Valid values auto, half, full",
		]
		speed_admin: description: [
			"Specifies the user preferred speed setting of the port.",
		]
		flowcontrol_admin: description: [
			"Specifies the user preferred flow control setting of the port.",
		]
		ipspace: description: [
			"Specifies the port's associated IPspace name.",
			"The 'Cluster' ipspace is reserved for cluster ports.",
		]
	}
}
