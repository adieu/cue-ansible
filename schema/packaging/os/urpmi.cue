package ansible

module: urpmi: {
	module:            "urpmi"
	short_description: "Urpmi manager"
	description: [
		"Manages packages with I(urpmi) (such as for Mageia or Mandriva)",
	]
	version_added: "1.3.4"
	options: {
		name: {
			description: [
				"A list of package names to install, upgrade or remove.",
			]
			required:      true
			version_added: "2.6"
			aliases: ["package", "pkg"]
		}
		state: {
			description: [
				"Indicates the desired package state.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		update_cache: {
			description: [
				"Update the package database first C(urpmi.update -a).",
			]
			type:    "bool"
			default: "no"
		}
		"no-recommends": {
			description: [
				"Corresponds to the C(--no-recommends) option for I(urpmi).",
			]
			type:    "bool"
			default: "yes"
			aliases: ["no-recommends"]
		}
		force: {
			description: [
				"Assume \"yes\" is the answer to any question urpmi has to ask. Corresponds to the C(--force) option for I(urpmi).",
			]

			type:    "bool"
			default: "yes"
		}
		root: {
			description: [
				"Specifies an alternative install root, relative to which all packages will be installed. Corresponds to the C(--root) option for I(urpmi).",
			]

			default:       "/"
			version_added: "2.4"
			aliases: ["installroot"]
		}
	}
	author: ["Philippe Makowski (@pmakowski)"]
}
