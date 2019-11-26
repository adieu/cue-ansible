package ansible

module: zypper_repository: {
	module:            "zypper_repository"
	author:            "Matthias Vogelgesang (@matze)"
	version_added:     "1.4"
	short_description: "Add and remove Zypper repositories"
	description: [
		"Add or remove Zypper repositories on SUSE and openSUSE",
	]
	options: {
		name: description: [
			"A name for the repository. Not required when adding repofiles.",
		]
		repo: description: [
			"URI of the repository or .repo file. Required when state=present.",
		]
		state: {
			description: [
				"A source string state.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		description: description: [
			"A description of the repository",
		]
		disable_gpg_check: {
			description: [
				"Whether to disable GPG signature checking of all packages. Has an effect only if state is I(present).",
				"Needs zypper version >= 1.6.2.",
			]
			type:    "bool"
			default: "no"
		}
		autorefresh: {
			description: [
				"Enable autorefresh of the repository.",
			]
			type:    "bool"
			default: "yes"
			aliases: ["refresh"]
		}
		priority: {
			description: [
				"Set priority of repository. Packages will always be installed from the repository with the smallest priority number.",
				"Needs zypper version >= 1.12.25.",
			]
			version_added: "2.1"
		}
		overwrite_multiple: {
			description: [
				"Overwrite multiple repository entries, if repositories with both name and URL already exist.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		auto_import_keys: {
			description: [
				"Automatically import the gpg signing key of the new or changed repository.",
				"Has an effect only if state is I(present). Has no effect on existing (unchanged) repositories or in combination with I(absent).",
				"Implies runrefresh.",
				"Only works with C(.repo) files if `name` is given explicitly.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		runrefresh: {
			description: [
				"Refresh the package list of the given repository.",
				"Can be used with repo=* to refresh all repositories.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		enabled: {
			description: [
				"Set repository to enabled (or disabled).",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.2"
		}
	}

	requirements: [
		"zypper >= 1.0  # included in openSUSE >= 11.1 or SUSE Linux Enterprise Server/Desktop >= 11.0",
		"python-xml",
	]
}
