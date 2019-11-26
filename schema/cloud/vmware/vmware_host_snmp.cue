package ansible

module: vmware_host_snmp: {
	module:            "vmware_host_snmp"
	short_description: "Configures SNMP on an ESXi host system"
	description: [
		"This module can be used to configure the embedded SNMP agent on an ESXi host.",
	]
	version_added: 2.8
	author: [
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 6.5",
		"You need to reset the agent (to factory defaults) if you want to clear all community strings, trap targets, or filters",
		"SNMP v3 configuration isn't implemented yet",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		state: {
			description: [
				"Enable, disable, or reset the SNMP agent.",
			]
			type: "str"
			choices: ["disabled", "enabled", "reset"]
			default: "disabled"
		}
		community: {
			description: [
				"List of SNMP community strings.",
			]
			type: "list"
		}
		snmp_port: {
			description: [
				"Port used by the SNMP agent.",
			]
			type:    "int"
			default: 161
		}
		trap_targets: {
			description: [
				"A list of trap targets.",
				"You need to use C(hostname), C(port), and C(community) for each trap target.",
			]
			default: []
			type: "list"
		}
		trap_filter: {
			description: [
				"A list of trap oids for traps not to be sent by agent, e.g. [ 1.3.6.1.4.1.6876.4.1.1.0, 1.3.6.1.4.1.6876.4.1.1.1 ]",
				"Use value C(reset) to clear settings.",
			]
			type: "list"
		}
		send_trap: {
			description: [
				"Send a test trap to validate the configuration.",
			]
			type:    "bool"
			default: false
		}
		hw_source: {
			description: [
				"Source hardware events from IPMI sensors or CIM Indications.",
				"The embedded SNMP agent receives hardware events either from IPMI sensors C(sensors) or CIM indications C(indications).",
			]
			type: "str"
			choices: ["indications", "sensors"]
			default: "indications"
		}
		log_level: {
			description: [
				"Syslog logging level.",
			]
			type: "str"
			choices: ["debug", "info", "warning", "error"]
			default: "info"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
