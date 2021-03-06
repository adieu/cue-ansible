package ansible

module: yum: {
	module:            "yum"
	version_added:     "historical"
	short_description: "Manages packages with the I(yum) package manager"
	description: [
		"Installs, upgrade, downgrades, removes, and lists packages and groups with the I(yum) package manager.",
		"This module only works on Python 2. If you require Python 3 support see the M(dnf) module.",
	]
	options: {
		use_backend: {
			description: [
				"This module supports C(yum) (as it always has), this is known as C(yum3)/C(YUM3)/C(yum-deprecated) by upstream yum developers. As of Ansible 2.7+, this module also supports C(YUM4), which is the \"new yum\" and it has an C(dnf) backend.",
				"By default, this module will select the backend based on the C(ansible_pkg_mgr) fact.",
			]
			default: "auto"
			choices: ["auto", "yum", "yum4", "dnf"]
			version_added: "2.7"
		}
		name: {
			description: [
				"A package name or package specifier with version, like C(name-1.0).",
				"If a previous version is specified, the task also needs to turn C(allow_downgrade) on. See the C(allow_downgrade) documentation for caveats with downgrading packages.",
				"When using state=latest, this can be C('*') which means run C(yum -y update).",
				"You can also pass a url or a local path to a rpm file (using state=present). To operate on several packages this can accept a comma separated string of packages or (as of 2.0) a list of packages.",
			]

			aliases: ["pkg"]
		}
		exclude: {
			description: [
				"Package name(s) to exclude when state=present, or latest",
			]
			version_added: "2.0"
		}
		list: description: [
			"Package name to run the equivalent of yum list --show-duplicates <package> against. In addition to listing packages, use can also list the following: C(installed), C(updates), C(available) and C(repos).",
			"This parameter is mutually exclusive with C(name).",
		]
		state: {
			description: [
				"Whether to install (C(present) or C(installed), C(latest)), or remove (C(absent) or C(removed)) a package.",
				"C(present) and C(installed) will simply ensure that a desired package is installed.",
				"C(latest) will update the specified package if it's not of the latest available version.",
				"C(absent) and C(removed) will remove the specified package.",
				"Default is C(None), however in effect the default action is C(present) unless the C(autoremove) option is enabled for this module, then C(absent) is inferred.",
			]

			choices: ["absent", "installed", "latest", "present", "removed"]
		}
		enablerepo: {
			description: [
				"I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(\",\").",
				"As of Ansible 2.7, this can alternatively be a list instead of C(\",\") separated string",
			]

			version_added: "0.9"
		}
		disablerepo: {
			description: [
				"I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(\",\").",
				"As of Ansible 2.7, this can alternatively be a list instead of C(\",\") separated string",
			]

			version_added: "0.9"
		}
		conf_file: {
			description: [
				"The remote yum configuration file to use for the transaction.",
			]
			version_added: "0.6"
		}
		disable_gpg_check: {
			description: [
				"Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).",
			]

			type:          "bool"
			default:       "no"
			version_added: "1.2"
		}
		skip_broken: {
			description: [
				"Skip packages with broken dependencies(devsolve) and are causing problems.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.3"
		}
		update_cache: {
			description: [
				"Force yum to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).",
			]

			type:    "bool"
			default: "no"
			aliases: ["expire-cache"]
			version_added: "1.9"
		}
		validate_certs: {
			description: [
				"This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.",
				"This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.",
				"Prior to 2.1 the code worked as if this was set to C(yes).",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.1"
		}

		update_only: {
			description: [
				"When using latest, only update installed packages. Do not install packages.",
				"Has an effect only if state is I(latest)",
			]
			default:       "no"
			type:          "bool"
			version_added: "2.5"
		}

		installroot: {
			description: [
				"Specifies an alternative installroot, relative to which all packages will be installed.",
			]

			default:       "/"
			version_added: "2.3"
		}
		security: {
			description: [
				"If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		bugfix: {
			description: [
				"If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.",
			]
			default:       "no"
			version_added: "2.6"
		}
		allow_downgrade: {
			description: [
				"Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		enable_plugin: {
			description: [
				"I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.",
			]

			version_added: "2.5"
		}
		disable_plugin: {
			description: [
				"I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.",
			]

			version_added: "2.5"
		}
		releasever: {
			description: [
				"Specifies an alternative release from which all packages will be installed.",
			]

			version_added: "2.7"
		}
		autoremove: {
			description: [
				"If C(yes), removes all \"leaf\" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent)",
				"NOTE: This feature requires yum >= 3.4.3 (RHEL/CentOS 7+)",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.7"
		}
		disable_excludes: {
			description: [
				"Disable the excludes defined in YUM config files.",
				"If set to C(all), disables all excludes.",
				"If set to C(main), disable excludes defined in [main] in yum.conf.",
				"If set to C(repoid), disable excludes defined for given repo id.",
			]
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
				"Amount of time to wait for the yum lockfile to be freed.",
			]
			required:      false
			default:       30
			type:          "int"
			version_added: "2.8"
		}
		install_weak_deps: {
			description: [
				"Will also install all packages linked by a weak dependency relation.",
				"NOTE: This feature requires yum >= 4 (RHEL/CentOS 8+)",
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
		"In versions prior to 1.9.2 this module installed and removed each package given to the yum module separately. This caused problems when packages specified by filename or url had to be installed or removed together. In 1.9.2 this was fixed so that packages are installed in one yum transaction. However, if one of the packages adds a new yum repository that the other packages come from (such as epel-release) then that package needs to be installed in a separate task. This mimics yum's command line behaviour.",
		"Yum itself has two types of groups.  \"Package groups\" are specified in the rpm itself while \"environment groups\" are specified in a separate file (usually by the distribution).  Unfortunately, this division becomes apparent to ansible users because ansible needs to operate on the group of packages in a single transaction and yum requires groups to be specified in different ways when used in that way.  Package groups are specified as \"@development-tools\" and environment groups are \"@^gnome-desktop-environment\". Use the \"yum group list hidden ids\" command to see which category of group the group you want to install falls into.",
		"The yum module does not support clearing yum cache in an idempotent way, so it was decided not to implement it, the only method is to use command and call the yum command directly, namely \"command: yum clean all\" https://github.com/ansible/ansible/pull/31450#issuecomment-352889579",
	]

	// informational: requirements for nodes
	requirements: [
		"yum",
	]
	author: [
		"Ansible Core Team",
		"Seth Vidal (@skvidal)",
		"Eduard Snesarev (@verm666)",
		"Berend De Schouwer (@berenddeschouwer)",
		"Abhijeet Kasurde (@Akasurde)",
		"Adam Miller (@maxamillion)",
	]
}
