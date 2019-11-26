package ansible

module: pkgin: {
	module:            "pkgin"
	short_description: "Package manager for SmartOS, NetBSD, et al."
	description: [
		"The standard package manager for SmartOS, but also usable on NetBSD or any OS that uses C(pkgsrc).  (Home: U(http://pkgin.net/))",
	]

	version_added: "1.0"
	author: [
		"Larry Gilbert (@L2G)",
		"Shaun Zinck (@szinck)",
		"Jasper Lievisse Adriaanse (@jasperla)",
	]
	notes: [
		"Known bug with pkgin < 0.8.0: if a package is removed and another package depends on it, the other package will be silently removed as well.  New to Ansible 1.9: check-mode support.",
	]

	options: {
		name: description: [
			"Name of package to install/remove;",
			"multiple names may be given, separated by commas",
		]
		state: {
			description: [
				"Intended state of the package",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		update_cache: {
			description: [
				"Update repository database. Can be run with other steps or on it's own.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		upgrade: {
			description: [
				"Upgrade main packages to their newer versions",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		full_upgrade: {
			description: [
				"Upgrade all packages to their newer versions",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		clean: {
			description: [
				"Clean packages cache",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		force: {
			description: [
				"Force package reinstall",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
	}
}
