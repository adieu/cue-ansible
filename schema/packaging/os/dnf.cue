package ansible

module: dnf: {
	module:            "dnf"
	version_added:     1.9
	short_description: "Manages packages with the I(dnf) package manager"
	description: [
		"Installs, upgrade, removes, and lists packages and groups with the I(dnf) package manager.",
	]
	options: {
		name: {
			description: [
				"A package name or package specifier with version, like C(name-1.0). When using state=latest, this can be '*' which means run: dnf -y update. You can also pass a url or a local path to a rpm file. To operate on several packages this can accept a comma separated string of packages or a list of packages.",
			]

			required: true
			aliases: [
				"pkg",
			]
		}

		list: description: [
			"Various (non-idempotent) commands for usage with C(/usr/bin/ansible) and I(not) playbooks. See examples.",
		]

		state: {
			description: [
				"Whether to install (C(present), C(latest)), or remove (C(absent)) a package.",
				"Default is C(None), however in effect the default action is C(present) unless the C(autoremove) option is enabled for this module, then C(absent) is inferred.",
			]

			choices: ["absent", "present", "installed", "removed", "latest"]
		}

		enablerepo: description: [
			"I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a \",\".",
		]

		disablerepo: description: [
			"I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a \",\".",
		]

		conf_file: description: [
			"The remote dnf configuration file to use for the transaction.",
		]

		disable_gpg_check: {
			description: [
				"Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).",
			]

			type:    "bool"
			default: "no"
		}

		installroot: {
			description: [
				"Specifies an alternative installroot, relative to which all packages will be installed.",
			]

			version_added: "2.3"
			default:       "/"
		}

		releasever: {
			description: [
				"Specifies an alternative release from which all packages will be installed.",
			]

			version_added: "2.6"
		}

		autoremove: {
			description: [
				"If C(yes), removes all \"leaf\" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent)",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		exclude: {
			description: [
				"Package name(s) to exclude when state=present, or latest. This can be a list or a comma separated string.",
			]

			version_added: "2.7"
		}
		skip_broken: {
			description: [
				"Skip packages with broken dependencies(devsolve) and are causing problems.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.7"
		}
		update_cache: {
			description: [
				"Force dnf to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).",
			]

			type:    "bool"
			default: "no"
			aliases: ["expire-cache"]
			version_added: "2.7"
		}
		update_only: {
			description: [
				"When using latest, only update installed packages. Do not install packages.",
				"Has an effect only if state is I(latest)",
			]
			default:       "no"
			type:          "bool"
			version_added: "2.7"
		}
		security: {
			description: [
				"If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.7"
		}
		bugfix: {
			description: [
				"If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.",
			]
			default:       "no"
			type:          "bool"
			version_added: "2.7"
		}
		enable_plugin: {
			description: [
				"I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.",
			]

			version_added: "2.7"
		}
		disable_plugin: {
			description: [
				"I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.",
			]

			version_added: "2.7"
		}
		disable_excludes: {
			description: [
				"Disable the excludes defined in DNF config files.",
				"If set to C(all), disables all excludes.",
				"If set to C(main), disable excludes defined in [main] in dnf.conf.",
				"If set to C(repoid), disable excludes defined for given repo id.",
			]
			version_added: "2.7"
		}
		validate_certs: {
			description: [
				"This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.",
				"This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.7"
		}
		allow_downgrade: {
			description: [
				"Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.7"
		}
		install_repoquery: {
			description: [
				"This is effectively a no-op in DNF as it is not needed with DNF, but is an accepted parameter for feature parity/compatibility with the I(yum) module.",
			]

			type:          "bool"
			default:       "yes"
			version_added: "2.7"
		}
		download_only: {
			description: [
				"Only download the packages, do not install them.",
			]
			default:       "no"
			type:          "bool"
			version_added: "2.7"
		}
		lock_timeout: {
			description: [
				"Amount of time to wait for the dnf lockfile to be freed.",
			]
			required:      false
			default:       30
			type:          "int"
			version_added: "2.8"
		}
		install_weak_deps: {
			description: [
				"Will also install all packages linked by a weak dependency relation.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.8"
		}
		download_dir: {
			description: [
				"Specifies an alternate directory to store packages.",
				"Has an effect only if I(download_only) is specified.",
			]
			type:          "str"
			version_added: "2.8"
		}
	}
	notes: [
		"When used with a `loop:` each package will be processed individually, it is much more efficient to pass the list directly to the `name` option.",
		"Group removal doesn't work if the group was installed with Ansible because upstream dnf's API doesn't properly mark groups as installed, therefore upon removal the module is unable to detect that the group is installed (https://bugzilla.redhat.com/show_bug.cgi?id=1620324)",
	]

	requirements: [
		"python >= 2.6",
		"python-dnf",
		"for the autoremove option you need dnf >= 2.0.1\"",
	]
	author: [
		"Igor Gnatenko (@ignatenkobrain) <i.gnatenko.brain@gmail.com>",
		"Cristian van Ee (@DJMuggs) <cristian at cvee.org>",
		"Berend De Schouwer (@berenddeschouwer)",
		"Adam Miller (@maxamillion) <admiller@redhat.com>",
	]
}
