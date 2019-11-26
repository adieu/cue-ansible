package ansible

module: osx_defaults: {
	module: "osx_defaults"
	author: [
		"Franck Nijhof (@frenck)",
	]
	short_description: "Manage macOS user defaults"
	description: [
		"osx_defaults allows users to read, write, and delete macOS user defaults from Ansible scripts.",
		"macOS applications and other programs use the defaults system to record user preferences and other information that must be maintained when the applications are not running (such as default font for new documents, or the position of an Info panel).",
	]

	version_added: "2.0"
	options: {
		domain: {
			description: [
				"The domain is a domain name of the form C(com.companyname.appname).",
			]
			type:    "str"
			default: "NSGlobalDomain"
		}
		host: {
			description: [
				"The host on which the preference should apply.",
				"The special value C(currentHost) corresponds to the C(-currentHost) switch of the defaults commandline tool.",
			]
			type:          "str"
			version_added: "2.1"
		}
		key: {
			description: [
				"The key of the user preference.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"The type of value to write.",
			]
			type: "str"
			choices: ["array", "bool", "boolean", "date", "float", "int", "integer", "string"]
			default: "string"
		}
		array_add: {
			description: [
				"Add new elements to the array for a key which has an array as its value.",
			]
			type:    "bool"
			default: false
		}
		value: {
			description: [
				"The value to write.",
				"Only required when C(state=present).",
			]
			type: "raw"
		}
		state: {
			description: [
				"The state of the user defaults.",
				"If set to C(list) will query the given parameter specified by C(key). Returns 'null' is nothing found or mis-spelled.",
				"C(list) added in version 2.8.",
			]
			type: "str"
			choices: ["absent", "list", "present"]
			default: "present"
		}
		path: {
			description: [
				"The path in which to search for C(defaults).",
			]
			type:    "str"
			default: "/usr/bin:/usr/local/bin"
		}
	}
	notes: ["Apple Mac caches defaults. You may need to logout and login to apply the changes."]
}
