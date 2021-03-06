package ansible

module: aci_interface_policy_port_channel: {
	module:            "aci_interface_policy_port_channel"
	short_description: "Manage port channel interface policies (lacp:LagPol)"
	description: [
		"Manage port channel interface policies on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		port_channel: {
			description: [
				"Name of the port channel.",
			]
			type:     "str"
			required: true
			aliases: ["name"]
		}
		description: {
			description: [
				"The description for the port channel.",
			]
			type: "str"
			aliases: ["descr"]
		}
		max_links: {
			description: [
				"Maximum links.",
				"Accepted values range between 1 and 16.",
				"The APIC defaults to C(16) when unset during creation.",
			]
			type: "int"
		}
		min_links: {
			description: [
				"Minimum links.",
				"Accepted values range between 1 and 16.",
				"The APIC defaults to C(1) when unset during creation.",
			]
			type: "int"
		}
		mode: {
			description: [
				"Port channel interface policy mode.",
				"Determines the LACP method to use for forming port-channels.",
				"The APIC defaults to C(off) when unset during creation.",
			]
			type: "str"
			choices: ["active", "mac-pin", "mac-pin-nicload", "off", "passive"]
		}
		fast_select: {
			description: [
				"Determines if Fast Select is enabled for Hot Standby Ports.",
				"This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		graceful_convergence: {
			description: [
				"Determines if Graceful Convergence is enabled.",
				"This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		load_defer: {
			description: [
				"Determines if Load Defer is enabled.",
				"This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		suspend_individual: {
			description: [
				"Determines if Suspend Individual is enabled.",
				"This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		symmetric_hash: {
			description: [
				"Determines if Symmetric Hashing is enabled.",
				"This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	seealso: [{
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(lacp:LagPol)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
