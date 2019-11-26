package ansible

module: ucs_san_connectivity: {
	module:            "ucs_san_connectivity"
	short_description: "Configures SAN Connectivity Policies on Cisco UCS Manager"
	description: [
		"Configures SAN Connectivity Policies on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify SAN Connectivity Policies are present and will create if needed.",
				"If C(absent), will verify SAN Connectivity Policies are absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the SAN Connectivity Policy.",
				"This name can be between 1 and 16 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the policy is created.",
			]
			required: true
		}
		description: {
			description: [
				"A description of the policy.",
				"Cisco recommends including information about where and when to use the policy.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
		}
		wwnn_pool: {
			description: [
				"Name of the WWNN pool to use for WWNN assignment.",
			]
			default: "default"
		}
		vhba_list: description: [
			"List of vHBAs used by the SAN Connectivity Policy.",
			"vHBAs used by the SAN Connectivity Policy must be created from a vHBA template.",
			"Each list element has the following suboptions:",
			"= name",
			"  The name of the virtual HBA (required).",
			"= vhba_template",
			"  The name of the virtual HBA template (required).",
			"- adapter_policy",
			"  The name of the Fibre Channel adapter policy.",
			"  A user defined policy can be used, or one of the system defined policies (default, Linux, Solaris, VMware, Windows, WindowsBoot)",
			"  [Default: default]",
			"- order",
			"  String specifying the vHBA assignment order (e.g., '1', '2').",
			"  [Default: unspecified]",
		]
		org_dn: {
			description: [
				"Org dn (distinguished name)",
			]
			default: "org-root"
		}
	}
	requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added: "2.5"
}
