package ansible

module: pacman: {
	module:            "pacman"
	short_description: "Manage packages with I(pacman)"
	description: [
		"Manage packages with the I(pacman) package manager, which is used by Arch Linux and its variants.",
	]
	version_added: "1.0"
	author: [
		"Indrajit Raychaudhuri (@indrajitr)",
		"Aaron Bull Schaefer (@elasticdog) <aaron@elasticdog.com>",
		"Maxime de Roucy (@tchernomax)",
	]
	options: {
		name: {
			description: [
				"Name or list of names of the package(s) or file(s) to install, upgrade, or remove. Can't be used in combination with C(upgrade).",
			]

			aliases: ["package", "pkg"]
			type:     "list"
			elements: "str"
		}

		state: {
			description: [
				"Desired state of the package.",
			]
			default: "present"
			choices: ["absent", "latest", "present"]
		}

		force: {
			description: [
				"When removing package, force remove package, without any checks. Same as `extra_args=\"--nodeps --nodeps\"`. When update_cache, force redownload repo databases. Same as `update_cache_extra_args=\"--refresh --refresh\"`.",
			]

			default:       false
			type:          "bool"
			version_added: "2.0"
		}

		extra_args: {
			description: [
				"Additional option to pass to pacman when enforcing C(state).",
			]
			default:       null
			version_added: "2.8"
		}

		update_cache: {
			description: [
				"Whether or not to refresh the master package lists.",
				"This can be run as part of a package installation or as a separate step.",
			]
			default: false
			type:    "bool"
			aliases: ["update-cache"]
		}

		update_cache_extra_args: {
			description: [
				"Additional option to pass to pacman when enforcing C(update_cache).",
			]
			default:       null
			version_added: "2.8"
		}

		upgrade: {
			description: [
				"Whether or not to upgrade the whole system. Can't be used in combination with C(name).",
			]

			default:       false
			type:          "bool"
			version_added: "2.0"
		}

		upgrade_extra_args: {
			description: [
				"Additional option to pass to pacman when enforcing C(upgrade).",
			]
			default:       null
			version_added: "2.8"
		}
	}

	notes: [
		"When used with a `loop:` each package will be processed individually, it is much more efficient to pass the list directly to the `name` option.",
	]
}
