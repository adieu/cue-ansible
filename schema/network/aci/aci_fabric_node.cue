package ansible

module: aci_fabric_node: {
	module:            "aci_fabric_node"
	short_description: "Manage Fabric Node Members (fabric:NodeIdentP)"
	description: [
		"Manage Fabric Node Members on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		pod_id: {
			description: [
				"The pod id of the new Fabric Node Member.",
			]
			type: "int"
		}
		serial: {
			description: [
				"Serial Number for the new Fabric Node Member.",
			]
			type: "str"
			aliases: ["serial_number"]
		}
		node_id: {
			description: [
				"Node ID Number for the new Fabric Node Member.",
			]
			type: "int"
		}
		switch: {
			description: [
				"Switch Name for the new Fabric Node Member.",
			]
			type: "str"
			aliases: ["name", "switch_name"]
		}
		description: {
			description: [
				"Description for the new Fabric Node Member.",
			]
			type: "str"
			aliases: ["descr"]
		}
		role: {
			description: [
				"Role for the new Fabric Node Member.",
			]
			type: "str"
			aliases: ["role_name"]
			choices: ["leaf", "spine", "unspecified"]
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
		description: "More information about the internal APIC class B(fabric:NodeIdentP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
