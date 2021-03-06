package ansible

module: portage: {
	module:            "portage"
	short_description: "Package manager for Gentoo"
	description: [
		"Manages Gentoo packages",
	]
	version_added: "1.6"

	options: {
		package: {
			description: [
				"Package atom or set, e.g. C(sys-apps/foo) or C(>foo-2.13) or C(@world)",
			]
			type:     "list"
			elements: "str"
		}

		state: {
			description: [
				"State of the package atom",
			]
			default: "present"
			choices: ["present", "installed", "emerged", "absent", "removed", "unmerged", "latest"]
		}

		update: {
			description: [
				"Update packages to the best version available (--update)",
			]
			type:    "bool"
			default: "no"
		}

		deep: {
			description: [
				"Consider the entire dependency tree of packages (--deep)",
			]
			type:    "bool"
			default: "no"
		}

		newuse: {
			description: [
				"Include installed packages where USE flags have changed (--newuse)",
			]
			type:    "bool"
			default: "no"
		}

		changed_use: {
			description: [
				"Include installed packages where USE flags have changed, except when",
				"flags that the user has not enabled are added or removed",
				"(--changed-use)",
			]
			type:          "bool"
			default:       "no"
			version_added: 1.8
		}

		oneshot: {
			description: [
				"Do not add the packages to the world file (--oneshot)",
			]
			type:    "bool"
			default: "no"
		}

		noreplace: {
			description: [
				"Do not re-emerge installed packages (--noreplace)",
			]
			type:    "bool"
			default: "yes"
		}

		nodeps: {
			description: [
				"Only merge packages but not their dependencies (--nodeps)",
			]
			type:    "bool"
			default: "no"
		}

		onlydeps: {
			description: [
				"Only merge packages' dependencies but not the packages (--onlydeps)",
			]
			type:    "bool"
			default: "no"
		}

		depclean: {
			description: [
				"Remove packages not needed by explicitly merged packages (--depclean)",
				"If no package is specified, clean up the world's dependencies",
				"Otherwise, --depclean serves as a dependency aware version of --unmerge",
			]
			type:    "bool"
			default: "no"
		}

		quiet: {
			description: [
				"Run emerge in quiet mode (--quiet)",
			]
			type:    "bool"
			default: "no"
		}

		verbose: {
			description: [
				"Run emerge in verbose mode (--verbose)",
			]
			type:    "bool"
			default: "no"
		}

		sync: {
			description: [
				"Sync package repositories first",
				"If yes, perform \"emerge --sync\"",
				"If web, perform \"emerge-webrsync\"",
			]
			choices: ["web", "yes", "no"]
		}

		getbinpkg: {
			description: [
				"Prefer packages specified at PORTAGE_BINHOST in make.conf",
			]
			type:    "bool"
			default: "no"
		}

		usepkgonly: {
			description: [
				"Merge only binaries (no compiling). This sets getbinpkg=yes.",
			]
			type:    "bool"
			default: "no"
		}

		keepgoing: {
			description: [
				"Continue as much as possible after an error.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.3
		}

		jobs: {
			description: [
				"Specifies the number of packages to build simultaneously.",
				"Since version 2.6: Value of 0 or False resets any previously added",
				"--jobs setting values",
			]
			version_added: 2.3
		}

		loadavg: {
			description: [
				"Specifies that no new builds should be started if there are",
				"other builds running and the load average is at least LOAD",
				"Since version 2.6: Value of 0 or False resets any previously added",
				"--load-average setting values",
			]
			version_added: 2.3
		}

		quietbuild: {
			description: [
				"Redirect all build output to logs alone, and do not display it",
				"on stdout (--quiet-build)",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.6
		}

		quietfail: {
			description: [
				"Suppresses display of the build log on stdout (--quiet-fail)",
				"Only the die message and the path of the build log will be",
				"displayed on stdout.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.6
		}
	}

	requirements: ["gentoolkit"]
	author: [
		"William L Thomson Jr (@wltjr)",
		"Yap Sok Ann (@sayap)",
		"Andrew Udvare (@Tatsh)",
	]
}
