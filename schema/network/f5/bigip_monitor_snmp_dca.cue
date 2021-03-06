package ansible

module: bigip_monitor_snmp_dca: {
	module:            "bigip_monitor_snmp_dca"
	short_description: "Manages BIG-IP SNMP data collecting agent (DCA) monitors"
	description: [
		"The BIG-IP has an SNMP data collecting agent (DCA) that can query remote SNMP agents of various types, including the UC Davis agent (UCD) and the Windows 2000 Server agent (WIN2000).",
	]

	version_added: 2.5
	options: {
		name: {
			description: [
				"Monitor name.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Specifies descriptive text that identifies the monitor.",
			]
			type: "str"
		}
		parent: {
			description: [
				"The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(snmp_dca) parent on the C(Common) partition.",
			]

			type:    "str"
			default: "/Common/snmp_dca"
		}
		interval: {
			description: [
				"Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown. When creating a new monitor, the default is C(10).",
			]

			type: "int"
		}
		timeout: {
			description: [
				"Specifies the number of seconds the target has in which to respond to the monitor request. When creating a new monitor, the default is C(30) seconds. If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor. Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.",
			]

			type: "int"
		}
		time_until_up: {
			description: [
				"Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'. During the interval, all responses from the resource must be correct. When the interval expires, the resource is marked 'up'. A value of 0, means that the resource is marked up immediately upon receipt of the first correct response. When creating a new monitor, the default is C(0).",
			]

			type: "int"
		}
		community: {
			description: [
				"Specifies the community name that the system must use to authenticate with the host server through SNMP. When creating a new monitor, the default value is C(public). Note that this value is case sensitive.",
			]

			type: "str"
		}
		version: {
			description: [
				"Specifies the version of SNMP that the host server uses. When creating a new monitor, the default is C(v1). When C(v1), specifies that the host server uses SNMP version 1. When C(v2c), specifies that the host server uses SNMP version 2c.",
			]

			type: "str"
			choices: [
				"v1",
				"v2c",
			]
		}
		agent_type: {
			description: [
				"Specifies the SNMP agent running on the monitored server. When creating a new monitor, the default is C(UCD) (UC-Davis).",
			]

			type: "str"
			choices: [
				"UCD",
				"WIN2000",
				"GENERIC",
			]
		}
		cpu_coefficient: {
			description: [
				"Specifies the coefficient that the system uses to calculate the weight of the CPU threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.5).",
			]

			type: "str"
		}
		cpu_threshold: {
			description: [
				"Specifies the maximum acceptable CPU usage on the target server. When creating a new monitor, the default is C(80) percent.",
			]

			type: "int"
		}
		memory_coefficient: {
			description: [
				"Specifies the coefficient that the system uses to calculate the weight of the memory threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.0).",
			]

			type: "str"
		}
		memory_threshold: {
			description: [
				"Specifies the maximum acceptable memory usage on the target server. When creating a new monitor, the default is C(70) percent.",
			]

			type: "int"
		}
		disk_coefficient: {
			description: [
				"Specifies the coefficient that the system uses to calculate the weight of the disk threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(2.0).",
			]

			type: "str"
		}
		disk_threshold: {
			description: [
				"Specifies the maximum acceptable disk usage on the target server. When creating a new monitor, the default is C(90) percent.",
			]

			type: "int"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the monitor exists.",
				"When C(absent), ensures the monitor is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default:       "present"
			version_added: 2.5
		}
	}
	notes: [
		"Requires BIG-IP software version >= 12",
		"This module does not support the C(variables) option because this option is broken in the REST API and does not function correctly in C(tmsh); for example you cannot remove user-defined params. Therefore, there is no way to automatically configure it.",
	]

	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
