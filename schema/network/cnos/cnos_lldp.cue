package ansible

module: cnos_lldp: {
	module:            "cnos_lldp"
	version_added:     "2.8"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage LLDP configuration on Lenovo CNOS network devices."
	description: [
		"This module provides declarative management of LLDP service on Lenovc CNOS network devices.",
	]

	notes: [
		"Tested against CNOS 10.9.1",
	]
	options: state: {
		description: [
			"State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.",
		]

		default: "present"
		choices: ["present", "absent"]
	}
}
