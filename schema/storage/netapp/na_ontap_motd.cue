package ansible

module: na_ontap_motd: {
	module: "na_ontap_motd"
	author: [
		"Piotr Olczak (@dprts) <polczak@redhat.com>",
		"NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	short_description: "Setup motd"
	description: [
		"This module allows you to manipulate motd for a vserver",
		"It also allows to manipulate motd at the cluster level by using the cluster vserver (cserver)",
	]
	version_added: "2.7"
	requirements: [
		"netapp_lib",
	]
	options: {
		state: {
			description: [
				"If C(state=present) sets MOTD given in I(message) C(state=absent) removes it.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		message: {
			description: [
				"MOTD Text message, required when C(state=present).",
			]
			type: "str"
		}
		vserver: {
			description: [
				"The name of the SVM motd should be set for.",
			]
			required: true
			type:     "str"
		}
		show_cluster_motd: {
			description: [
				"Set to I(false) if Cluster-level Message of the Day should not be shown",
			]
			type:    "bool"
			default: true
		}
	}
}
