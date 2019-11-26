package ansible

module: netapp_e_amg: {
	module:            "netapp_e_amg"
	short_description: "NetApp E-Series create, remove, and update asynchronous mirror groups"
	description: [
		"Allows for the creation, removal and updating of Asynchronous Mirror Groups for NetApp E-series storage arrays",
	]
	version_added: "2.2"
	author:        "Kevin Hulquest (@hulquest)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		name: {
			description: [
				"The name of the async array you wish to target, or create.",
				"If C(state) is present and the name isn't found, it will attempt to create.",
			]
			required: true
		}
		secondaryArrayId: {
			description: [
				"The ID of the secondary array to be used in mirroring process",
			]
			required: true
		}
		syncIntervalMinutes: {
			description: [
				"The synchronization interval in minutes",
			]
			default: 10
		}
		manualSync: {
			description: [
				"Setting this to true will cause other synchronization values to be ignored",
			]
			type:    "bool"
			default: "no"
		}
		recoveryWarnThresholdMinutes: {
			description: [
				"Recovery point warning threshold (minutes). The user will be warned when the age of the last good failures point exceeds this value",
			]
			default: 20
		}
		repoUtilizationWarnThreshold: {
			description: [
				"Recovery point warning threshold",
			]
			default: 80
		}
		interfaceType: {
			description: [
				"The intended protocol to use if both Fibre and iSCSI are available.",
			]
			choices: [
				"iscsi",
				"fibre",
			]
		}
		syncWarnThresholdMinutes: {
			description: [
				"The threshold (in minutes) for notifying the user that periodic synchronization has taken too long to complete.",
			]
			default: 10
		}
		state: {
			description: [
				"A C(state) of present will either create or update the async mirror group.",
				"A C(state) of absent will remove the async mirror group.",
			]
			choices: ["absent", "present"]
			required: true
		}
	}
}
