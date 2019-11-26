package ansible

module: ucs_vlans: {
	module:            "ucs_vlans"
	short_description: "Configures VLANs on Cisco UCS Manager"
	description: [
		"Configures VLANs on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify VLANs are present and will create if needed.",
				"If C(absent), will verify VLANs are absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name assigned to the VLAN.",
				"The VLAN name is case sensitive.",
				"This name can be between 1 and 32 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the VLAN is created.",
			]
			required: true
		}
		multicast_policy: {
			description: [
				"The multicast policy associated with this VLAN.",
				"This option is only valid if the Sharing Type field is set to None or Primary.",
			]
			default: ""
		}
		fabric: {
			description: [
				"The fabric configuration of the VLAN.  This can be one of the following:",
				"common - The VLAN applies to both fabrics and uses the same configuration parameters in both cases.",
				"A — The VLAN only applies to fabric A.",
				"B — The VLAN only applies to fabric B.",
				"For upstream disjoint L2 networks, Cisco recommends that you choose common to create VLANs that apply to both fabrics.",
			]
			choices: ["common", "A", "B"]
			default: "common"
		}, id: {

			description: [
				"The unique string identifier assigned to the VLAN.",
				"A VLAN ID can be between '1' and '3967', or between '4048' and '4093'.",
				"You cannot create VLANs with IDs from 4030 to 4047. This range of VLAN IDs is reserved.",
				"The VLAN IDs you specify must also be supported on the switch that you are using.",
				"VLANs in the LAN cloud and FCoE VLANs in the SAN cloud must have different IDs.",
				"Optional if state is absent.",
			]
			required: true
		}, sharing: {

			description: [
				"The Sharing Type field.",
				"Whether this VLAN is subdivided into private or secondary VLANs. This can be one of the following:",
				"none - This VLAN does not have any secondary or private VLANs. This is a regular VLAN.",
				"primary - This VLAN can have one or more secondary VLANs, as shown in the Secondary VLANs area. This VLAN is a primary VLAN in the private VLAN domain.",
				"isolated - This is a private VLAN associated with a primary VLAN. This VLAN is an Isolated VLAN.",
				"community - This VLAN can communicate with other ports on the same community VLAN as well as the promiscuous port. This VLAN is a Community VLAN.",
			]
			choices: ["none", "primary", "isolated", "community"]
			default: "none"
		}, native: {

			description: ["Designates the VLAN as a native VLAN."]
			choices: ["yes", "no"]
			default: "no"
		}
	}, requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added:
		"2.5"
}
