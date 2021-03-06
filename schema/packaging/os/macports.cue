package ansible

module: macports: {
	module:            "macports"
	author:            "Jimmy Tang (@jcftang)"
	short_description: "Package manager for MacPorts"
	description: [
		"Manages MacPorts packages (ports)",
	]
	version_added: "1.1"
	options: {
		name: {
			description: [
				"A list of port names.",
			]
			aliases: ["port"]
			type:     "list"
			elements: "str"
		}
		selfupdate: {
			description: [
				"Update Macports and the ports tree, either prior to installing ports or as a separate step.",
				"Equivalent to running C(port selfupdate).",
			]
			aliases: ["update_cache", "update_ports"]
			default: "no"
			type:    "bool"
		}
		state: {
			description: [
				"Indicates the desired state of the port.",
			]
			choices: ["present", "absent", "active", "inactive"]
			default: "present"
		}
		upgrade: {
			description: [
				"Upgrade all outdated ports, either prior to installing ports or as a separate step.",
				"Equivalent to running C(port upgrade outdated).",
			]
			default:       "no"
			type:          "bool"
			version_added: "2.8"
		}
		variant: {
			description: [
				"A port variant specification.",
				"C(variant) is only supported with state: I(installed)/I(present).",
			]
			aliases: ["variants"]
			version_added: "2.7"
		}
	}
}
