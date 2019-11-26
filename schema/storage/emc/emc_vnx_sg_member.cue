package ansible

module: emc_vnx_sg_member: {
	module: "emc_vnx_sg_member"

	short_description: "Manage storage group member on EMC VNX"

	version_added: "2.7"

	description: [
		"This module manages the members of an existing storage group.",
	]

	extends_documentation_fragment: [
		"emc.emc_vnx",
	]

	options: {
		name: {
			description: [
				"Name of the Storage group to manage.",
			]
			required: true
		}
		lunid: {
			description: [
				"Lun id to be added.",
			]
			required: true
		}
		state: {
			description: [
				"Indicates the desired lunid state.",
				"C(present) ensures specified lunid is present in the Storage Group.",
				"C(absent) ensures specified lunid is absent from Storage Group.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}

	author: ["Luca 'remix_tj' Lorenzetto (@remixtj)"]
}
