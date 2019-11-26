package ansible

module: debconf: {
	module:            "debconf"
	short_description: "Configure a .deb package"
	description: [
		"Configure a .deb package using debconf-set-selections.",
		"Or just query existing selections.",
	]
	version_added: "1.6"
	notes: [
		"This module requires the command line debconf tools.",
		"A number of questions have to be answered (depending on the package). Use 'debconf-show <package>' on any Debian or derivative with the package installed to see questions/settings available.",
		"Some distros will always record tasks involving the setting of passwords as changed. This is due to debconf-get-selections masking passwords.",
	]
	requirements: [
		"debconf",
		"debconf-utils",
	]
	options: {
		name: {
			description: [
				"Name of package to configure.",
			]
			type:     "str"
			required: true
			aliases: ["pkg"]
		}
		question: {
			description: [
				"A debconf configuration setting.",
			]
			type: "str"
			aliases: ["selection", "setting"]
		}
		vtype: {
			description: [
				"The type of the value supplied.",
				"C(seen) was added in Ansible 2.2.",
			]
			type: "str"
			choices: ["boolean", "error", "multiselect", "note", "password", "seen", "select", "string", "text", "title"]
		}
		value: {
			description: [
				"Value to set the configuration to.",
			]
			type: "str"
			aliases: ["answer"]
		}
		unseen: {
			description: [
				"Do not set 'seen' flag when pre-seeding.",
			]
			type:    "bool"
			default: false
		}
	}
	author: ["Brian Coca (@bcoca)"]
}
