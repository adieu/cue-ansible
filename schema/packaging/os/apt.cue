package ansible

module: apt: {
	module:            "apt"
	short_description: "Manages apt-packages"
	description: [
		"Manages I(apt) packages (such as for Debian/Ubuntu).",
	]
	version_added: "0.0.2"
	options: {
		name: {
			description: [
				"A list of package names, like C(foo), or package specifier with version, like C(foo=1.0). Name wildcards (fnmatch) like C(apt*) and version wildcards like C(foo=1.0*) are also supported.",
			]

			aliases: ["package", "pkg"]
			type:     "list"
			elements: "str"
		}
		state: {
			description: [
				"Indicates the desired package state. C(latest) ensures that the latest version is installed. C(build-dep) ensures the package build dependencies are installed. C(fixed) attempt to correct a system with broken dependencies in place.",
			]

			default: "present"
			choices: ["absent", "build-dep", "latest", "present", "fixed"]
		}
		update_cache: {
			description: [
				"Run the equivalent of C(apt-get update) before the operation. Can be run as part of the package installation or as a separate step.",
			]
			type:    "bool"
			default: "no"
		}
		update_cache_retries: {
			description: [
				"Amount of retries if the cache update fails. Also see I(update_cache_retry_max_delay).",
			]
			type:          "int"
			default:       5
			version_added: "2.10"
		}
		update_cache_retry_max_delay: {
			description: [
				"Use an exponential backoff delay for each retry (see I(update_cache_retries)) up to this max delay in seconds.",
			]
			type:          "int"
			default:       12
			version_added: "2.10"
		}
		cache_valid_time: {
			description: [
				"Update the apt cache if its older than the I(cache_valid_time). This option is set in seconds.",
				"As of Ansible 2.4, if explicitly set, this sets I(update_cache=yes).",
			]
			default: 0
		}
		purge: {
			description: [
				"Will force purging of configuration files if the module state is set to I(absent).",
			]
			type:    "bool"
			default: "no"
		}
		default_release: description: [
			"Corresponds to the C(-t) option for I(apt) and sets pin priorities",
		]
		install_recommends: {
			description: [
				"Corresponds to the C(--no-install-recommends) option for I(apt). C(yes) installs recommended packages.  C(no) does not install recommended packages. By default, Ansible will use the same defaults as the operating system. Suggested packages are never installed.",
			]

			aliases: ["install-recommends"]
			type: "bool"
		}
		force: {
			description: [
				"Corresponds to the C(--force-yes) to I(apt-get) and implies C(allow_unauthenticated: yes)",
				"This option will disable checking both the packages' signatures and the certificates of the web servers they are downloaded from.",
				"This option *is not* the equivalent of passing the C(-f) flag to I(apt-get) on the command line",
				"**This is a destructive operation with the potential to destroy your system, and it should almost never be used.** Please also see C(man apt-get) for more information.",
			]

			type:    "bool"
			default: "no"
		}
		allow_unauthenticated: {
			description: [
				"Ignore if packages cannot be authenticated. This is useful for bootstrapping environments that manage their own apt-key setup.",
				"C(allow_unauthenticated) is only supported with state: I(install)/I(present)",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		upgrade: {
			description: [
				"If yes or safe, performs an aptitude safe-upgrade.",
				"If full, performs an aptitude full-upgrade.",
				"If dist, performs an apt-get dist-upgrade.",
				"Note: This does not upgrade a specific package, use state=latest for that.",
				"Note: Since 2.4, apt-get is used as a fall-back if aptitude is not present.",
			]
			version_added: "1.1"
			choices: ["dist", "full", "no", "safe", "yes"]
			default: "no"
		}
		dpkg_options: {
			description: [
				"Add dpkg options to apt command. Defaults to '-o \"Dpkg::Options::=--force-confdef\" -o \"Dpkg::Options::=--force-confold\"'",
				"Options should be supplied as comma separated list",
			]
			default: "force-confdef,force-confold"
		}
		deb: {
			description: [
				"Path to a .deb package on the remote machine.",
				"If :// in the path, ansible will attempt to download deb before installing. (Version added 2.1)",
				"Requires the C(xz-utils) package to extract the control file of the deb package to install.",
			]
			required:      false
			version_added: "1.6"
		}
		autoremove: {
			description: [
				"If C(yes), remove unused dependency packages for all module states except I(build-dep). It can also be used as the only option.",
				"Previous to version 2.4, autoclean was also an alias for autoremove, now it is its own separate command. See documentation for further information.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		autoclean: {
			description: [
				"If C(yes), cleans the local repository of retrieved package files that can no longer be downloaded.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		policy_rc_d: {
			description: [
				"Force the exit code of /usr/sbin/policy-rc.d.",
				"For example, if I(policy_rc_d=101) the installed package will not trigger a service start.",
				"If /usr/sbin/policy-rc.d already exist, it is backed up and restored after the package installation.",
				"If C(null), the /usr/sbin/policy-rc.d isn't created/changed.",
			]
			type:          "int"
			default:       null
			version_added: "2.8"
		}
		only_upgrade: {
			description: [
				"Only upgrade a package if it is already installed.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		force_apt_get: {
			description: [
				"Force usage of apt-get instead of aptitude",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
	}
	requirements: [
		"python-apt (python 2)",
		"python3-apt (python 3)",
		"aptitude (before 2.4)",
	]
	author: "Matthew Williams (@mgwilliams)"
	notes: [
		"Three of the upgrade modes (C(full), C(safe) and its alias C(yes)) required C(aptitude) up to 2.3, since 2.4 C(apt-get) is used as a fall-back.",
		"In most cases, packages installed with apt will start newly installed services by default. Most distributions have mechanisms to avoid this. For example when installing Postgresql-9.5 in Debian 9, creating an excutable shell script (/usr/sbin/policy-rc.d) that throws a return code of 101 will stop Postgresql 9.5 starting up after install. Remove the file or remove its execute permission afterwards.",
		"The apt-get commandline supports implicit regex matches here but we do not because it can let typos through easier (If you typo C(foo) as C(fo) apt-get would install packages that have \"fo\" in their name with a warning and a prompt for the user. Since we don't have warnings and prompts before installing we disallow this.Use an explicit fnmatch pattern if you want wildcarding)",
		"When used with a `loop:` each package will be processed individually, it is much more efficient to pass the list directly to the `name` option.",
	]
}
