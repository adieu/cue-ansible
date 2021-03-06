package ansible

module: netapp_e_lun_mapping: {
	module: "netapp_e_lun_mapping"
	author: [
		"Kevin Hulquest (@hulquest)",
		"Nathan Swartz (@ndswartz)",
	]
	short_description: "NetApp E-Series create, delete, or modify lun mappings"
	description: [
		"Create, delete, or modify mappings between a volume and a targeted host/host+ group.",
	]
	version_added: "2.2"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			description: [
				"Present will ensure the mapping exists, absent will remove the mapping.",
			]
			required: true
			choices: ["present", "absent"]
		}
		target: {
			description: [
				"The name of host or hostgroup you wish to assign to the mapping",
				"If omitted, the default hostgroup is used.",
				"If the supplied I(volume_name) is associated with a different target, it will be updated to what is supplied here.",
			]
			required: false
		}
		volume_name: {
			description: [
				"The name of the volume you wish to include in the mapping.",
			]
			required: true
			aliases: [
				"volume",
			]
		}
		lun: {
			description: [
				"The LUN value you wish to give the mapping.",
				"If the supplied I(volume_name) is associated with a different LUN, it will be updated to what is supplied here.",
				"LUN value will be determine by the storage-system when not specified.",
			]
			version_added: 2.7
			required:      false
		}
		target_type: {
			description: [
				"This option specifies the whether the target should be a host or a group of hosts",
				"Only necessary when the target name is used for both a host and a group of hosts",
			]
			choices: [
				"host",
				"group",
			]
			version_added: 2.7
			required:      false
		}
	}
}
