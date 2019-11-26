package ansible

module: aci_interface_policy_cdp: {
	module:            "aci_interface_policy_cdp"
	short_description: "Manage CDP interface policies (cdp:IfPol)"
	description: [
		"Manage CDP interface policies on Cisco ACI fabrics.",
	]
	version_added: "2.9"
	options: {
		cdp_policy: {
			description: [
				"The CDP interface policy name.",
			]
			type:     "str"
			required: true
			aliases: ["cdp_interface", "name"]
		}
		description: {
			description: [
				"The description for the CDP interface policy name.",
			]
			type: "str"
			aliases: ["descr"]
		}
		admin_state: {
			description: [
				"Enable or Disable CDP state.",
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
		description: "More information about the internal APIC class B(cdp:IfPol)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Tim Knipper (@tknipper11)"]
}
