package ansible

module: cpanm: {
	module:            "cpanm"
	short_description: "Manages Perl library dependencies."
	description: [
		"Manage Perl library dependencies.",
	]
	version_added: "1.6"
	options: {
		name: {
			description: [
				"The name of the Perl library to install. You may use the \"full distribution path\", e.g.  MIYAGAWA/Plack-0.99_05.tar.gz",
			]
			aliases: ["pkg"]
		}
		from_path: description: [
			"The local directory from where to install",
		]
		notest: {
			description: [
				"Do not run unit tests",
			]
			type:    "bool"
			default: false
		}
		locallib: {
			description: [
				"Specify the install base to install modules",
			]
			type: "path"
		}
		mirror: {
			description: [
				"Specifies the base URL for the CPAN mirror to use",
			]
			type: "str"
		}
		mirror_only: {
			description: [
				"Use the mirror's index file instead of the CPAN Meta DB",
			]
			type:    "bool"
			default: false
		}
		installdeps: {
			description: [
				"Only install dependencies",
			]
			type:          "bool"
			default:       false
			version_added: "2.0"
		}
		version: {
			description: [
				"minimum version of perl module to consider acceptable",
			]
			type:          "str"
			version_added: "2.1"
		}
		system_lib: {
			description: [
				"Use this if you want to install modules to the system perl include path. You must be root or have \"passwordless\" sudo for this to work.",
				"This uses the cpanm commandline option '--sudo', which has nothing to do with ansible privilege escalation.",
			]
			type:    "bool"
			default: false
			aliases: ["use_sudo"]
			version_added: "2.0"
		}
		executable: {
			description: [
				"Override the path to the cpanm executable",
			]
			type:          "path"
			version_added: "2.1"
		}
	}
	notes: [
		"Please note that U(http://search.cpan.org/dist/App-cpanminus/bin/cpanm, cpanm) must be installed on the remote host.",
	]
	author: "Franck Cuny (@fcuny)"
}
