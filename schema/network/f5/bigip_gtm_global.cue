package ansible

module: bigip_gtm_global: {
	module:            "bigip_gtm_global"
	short_description: "Manages global GTM settings"
	description: [
		"Manages global GTM settings. These settings include general, load balancing, and metrics related settings.",
	]

	version_added: 2.6
	options: {
		synchronization: {
			description: [
				"Specifies whether this system is a member of a synchronization group.",
				"When you enable synchronization, the system periodically queries other systems in the synchronization group to obtain and distribute configuration and metrics collection updates.",
				"The synchronization group may contain systems configured as Global Traffic Manager and Link Controller systems.",
			]

			type: "bool"
		}
		synchronization_group_name: {
			description: [
				"Specifies the name of the synchronization group to which the system belongs.",
			]
			type: "str"
		}
		synchronize_zone_files: {
			description: [
				"Specifies that the system synchronizes Domain Name System (DNS) zone files among the synchronization group members.",
			]

			type: "bool"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
