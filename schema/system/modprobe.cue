package ansible

module: modprobe: {
	module:            "modprobe"
	short_description: "Load or unload kernel modules"
	version_added:     1.4
	author: [
		"David Stygstra (@stygstra)",
		"Julien Dauphant (@jdauphant)",
		"Matt Jeffery (@mattjeffery)",
	]
	description: [
		"Load or unload kernel modules.",
	]
	options: {
		name: {
			required: true
			description: [
				"Name of kernel module to manage.",
			]
		}
		state: {
			description: [
				"Whether the module should be present or absent.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		params: {
			description: [
				"Modules parameters.",
			]
			default:       ""
			version_added: "1.6"
		}
	}
}
