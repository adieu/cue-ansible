package ansible

module: pn_snmp_trap_sink: {
	module:            "pn_snmp_trap_sink"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/delete snmp-trap-sink"
	description: [
		"This module can be used to create a SNMP trap sink and delete a SNMP trap sink.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(present) to create snmp-trap-sink and C(absent) to delete snmp-trap-sink.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent"]
		}
		pn_dest_host: {
			description: [
				"destination host.",
			]
			type: "str"
		}
		pn_community: {
			description: [
				"community type.",
			]
			type: "str"
		}
		pn_dest_port: {
			description: [
				"destination port.",
			]
			type:    "str"
			default: "162"
		}
		pn_type: {
			description: [
				"trap type.",
			]
			type: "str"
			choices: ["TRAP_TYPE_V1_TRAP", "TRAP_TYPE_V2C_TRAP", "TRAP_TYPE_V2_INFORM"]
			default: "TRAP_TYPE_V2C_TRAP"
		}
	}
}
