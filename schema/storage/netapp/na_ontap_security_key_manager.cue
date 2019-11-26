package ansible

module: na_ontap_security_key_manager: {
	module: "na_ontap_security_key_manager"

	short_description: "NetApp ONTAP security key manager."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Add or delete or setup key management on NetApp ONTAP.",
	]

	options: {

		state: {
			description: [
				"Whether the specified key manager should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		ip_address: {
			description: [
				"The IP address of the key management server.",
			]
			required: true
		}

		tcp_port: {
			description: [
				"The TCP port on which the key management server listens for incoming connections.",
			]
			default: 5696
		}

		node: description: [
			"The node which key management server runs on.",
		]
	}
}
