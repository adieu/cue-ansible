package ansible

module: na_ontap_lun_copy: {
	module: "na_ontap_lun_copy"

	short_description: "NetApp ONTAP copy LUNs"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Copy LUNs on NetApp ONTAP.",
	]

	options: {

		state: {
			description: [
				"Whether the specified LUN should exist or not.",
			]
			choices: ["present"]
			default: "present"
		}

		destination_vserver: {
			description: [
				"the name of the Vserver that will host the new LUN.",
			]
			required: true
		}

		destination_path: {
			description: [
				"Specifies the full path to the new LUN.",
			]
			required: true
		}

		source_path: {
			description: [
				"Specifies the full path to the source LUN.",
			]
			required: true
		}

		source_vserver: description: [
			"Specifies the name of the vserver hosting the LUN to be copied.",
		]
	}
}
