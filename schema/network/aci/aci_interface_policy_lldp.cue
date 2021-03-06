package ansible

module: aci_interface_policy_lldp: {
	module:            "aci_interface_policy_lldp"
	short_description: "Manage LLDP interface policies (lldp:IfPol)"
	description: [
		"Manage LLDP interface policies on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		lldp_policy: {
			description: [
				"The LLDP interface policy name.",
			]
			type:     "str"
			required: true
			aliases: ["name"]
		}
		description: {
			description: [
				"The description for the LLDP interface policy name.",
			]
			type: "str"
			aliases: ["descr"]
		}
		receive_state: {
			description: [
				"Enable or disable Receive state.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		transmit_state: {
			description: [
				"Enable or Disable Transmit state.",
				"The APIC defaults to C(yes) when unset during creation.",
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
		description: "More information about the internal APIC class B(lldp:IfPol)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
