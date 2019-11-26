package ansible

module: opkg: {
	module:            "opkg"
	author:            "Patrick Pelletier (@skinp)"
	short_description: "Package manager for OpenWrt"
	description: [
		"Manages OpenWrt packages",
	]
	version_added: "1.1"
	options: {
		name: {
			description: [
				"name of package to install/remove",
			]
			required: true
		}
		state: {
			description: [
				"state of the package",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		force: {
			description: [
				"opkg --force parameter used",
			]
			choices: [
				"",
				"depends",
				"maintainer",
				"reinstall",
				"overwrite",
				"downgrade",
				"space",
				"postinstall",
				"remove",
				"checksum",
				"removal-of-dependent-packages",
			]
			default:       "absent"
			version_added: "2.0"
		}
		update_cache: {
			description: [
				"update the package db first",
			]
			default: "no"
			type:    "bool"
		}
	}
	requirements: [
		"opkg",
		"python",
	]
}
