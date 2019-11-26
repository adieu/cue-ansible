package ansible

module: win_chocolatey: {
	module:            "win_chocolatey"
	version_added:     "1.9"
	short_description: "Manage packages using chocolatey"
	description: [
		"Manage packages using Chocolatey.",
		"If Chocolatey is missing from the system, the module will install it.",
	]
	requirements: [
		"chocolatey >= 0.10.5 (will be upgraded if older)",
	]
	options: {
		allow_empty_checksums: {
			description: [
				"Allow empty checksums to be used for downloaded resource from non-secure locations.",
				"Use M(win_chocolatey_feature) with the name C(allowEmptyChecksums) to control this option globally.",
			]

			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		allow_multiple: {
			description: [
				"Allow the installation of multiple packages when I(version) is specified.",
				"Having multiple packages at different versions can cause issues if the package doesn't support this. Use at your own risk.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		allow_prerelease: {
			description: [
				"Allow the installation of pre-release packages.",
				"If I(state) is C(latest), the latest pre-release package will be installed.",
			]

			type:          "bool"
			default:       false
			version_added: "2.6"
		}
		architecture: {
			description: [
				"Force Chocolatey to install the package of a specific process architecture.",
				"When setting C(x86), will ensure Chocolatey installs the x86 package even when on an x64 bit OS.",
			]

			type: "str"
			choices: ["default", "x86"]
			default:       "default"
			version_added: "2.7"
		}
		force: {
			description: [
				"Forces the install of a package, even if it already is installed.",
				"Using I(force) will cause Ansible to always report that a change was made.",
			]

			type:    "bool"
			default: false
		}
		install_args: {
			description: [
				"Arguments to pass to the native installer.",
				"These are arguments that are passed directly to the installer the Chocolatey package runs, this is generally an advanced option.",
			]

			type:          "str"
			version_added: "2.1"
		}
		ignore_checksums: {
			description: [
				"Ignore the checksums provided by the package.",
				"Use M(win_chocolatey_feature) with the name C(checksumFiles) to control this option globally.",
			]

			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		ignore_dependencies: {
			description: [
				"Ignore dependencies, only install/upgrade the package itself.",
			]
			type:          "bool"
			default:       false
			version_added: "2.1"
		}
		name: {
			description: [
				"Name of the package(s) to be installed.",
				"Set to C(all) to run the action on all the installed packages.",
			]
			type:     "list"
			required: true
		}
		package_params: {
			description: [
				"Parameters to pass to the package.",
				"These are parameters specific to the Chocolatey package and are generally documented by the package itself.",
				"Before Ansible 2.7, this option was just I(params).",
			]
			type:          "str"
			version_added: "2.1"
			aliases: ["params"]
		}
		pinned: {
			description: [
				"Whether to pin the Chocolatey package or not.",
				"If omitted then no checks on package pins are done.",
				"Will pin/unpin the specific version if I(version) is set.",
				"Will pin the latest version of a package if C(yes), I(version) is not set and and no pin already exists.",
				"Will unpin all versions of a package if C(no) and I(version) is not set.",
				"This is ignored when C(state=absent).",
			]
			type:          "bool"
			version_added: "2.8"
		}
		proxy_url: {
			description: [
				"Proxy URL used to install chocolatey and the package.",
				"Use M(win_chocolatey_config) with the name C(proxy) to control this option globally.",
			]

			type:          "str"
			version_added: "2.4"
		}
		proxy_username: {
			description: [
				"Proxy username used to install Chocolatey and the package.",
				"Before Ansible 2.7, users with double quote characters C(\") would need to be escaped with C(\\) beforehand. This is no longer necessary.",
				"Use M(win_chocolatey_config) with the name C(proxyUser) to control this option globally.",
			]

			type:          "str"
			version_added: "2.4"
		}
		proxy_password: {
			description: [
				"Proxy password used to install Chocolatey and the package.",
				"This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the password on the global config level with M(win_chocolatey_config) with name C(proxyPassword) to avoid this.",
			]

			type:          "str"
			version_added: "2.4"
		}
		skip_scripts: {
			description: [
				"Do not run I(chocolateyInstall.ps1) or I(chocolateyUninstall.ps1) scripts when installing a package.",
			]

			type:          "bool"
			default:       false
			version_added: "2.4"
		}
		source: {
			description: [
				"Specify the source to retrieve the package from.",
				"Use M(win_chocolatey_source) to manage global sources.",
				"This value can either be the URL to a Chocolatey feed, a path to a folder containing C(.nupkg) packages or the name of a source defined by M(win_chocolatey_source).",
				"This value is also used when Chocolatey is not installed as the location of the install.ps1 script and only supports URLs for this case.",
			]

			type: "str"
		}
		source_username: {
			description: [
				"A username to use with I(source) when accessing a feed that requires authentication.",
				"It is recommended you define the credentials on a source with M(win_chocolatey_source) instead of passing it per task.",
			]

			type:          "str"
			version_added: "2.7"
		}
		source_password: {
			description: [
				"The password for I(source_username).",
				"This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the credentials with a source with M(win_chocolatey_source) to avoid this.",
			]

			type:          "str"
			version_added: "2.7"
		}
		state: {
			description: [
				"State of the package on the system.",
				"When C(absent), will ensure the package is not installed.",
				"When C(present), will ensure the package is installed.",
				"When C(downgrade), will allow Chocolatey to downgrade a package if I(version) is older than the installed version.",
				"When C(latest), will ensure the package is installed to the latest available version.",
				"When C(reinstalled), will uninstall and reinstall the package.",
			]
			type: "str"
			choices: ["absent", "downgrade", "latest", "present", "reinstalled"]
			default: "present"
		}
		timeout: {
			description: [
				"The time to allow chocolatey to finish before timing out.",
			]
			type:          "int"
			default:       2700
			version_added: "2.3"
			aliases: ["execution_timeout"]
		}
		validate_certs: {
			description: [
				"Used when downloading the Chocolatey install script if Chocolatey is not already installed, this does not affect the Chocolatey package install process.",
				"When C(no), no SSL certificates will be validated.",
				"This should only be used on personally controlled sites using self-signed certificate.",
			]

			type:          "bool"
			default:       true
			version_added: "2.7"
		}
		version: {
			description: [
				"Specific version of the package to be installed.",
				"When I(state) is set to C(absent), will uninstall the specific version otherwise all versions of that package will be removed.",
				"If a different version of package is installed, I(state) must be C(latest) or I(force) set to C(yes) to install the desired version.",
				"Provide as a string (e.g. C('6.1')), otherwise it is considered to be a floating-point number and depending on the locale could become C(6,1), which will cause a failure.",
				"If I(name) is set to C(chocolatey) and Chocolatey is not installed on the host, this will be the version of Chocolatey that is installed. You can also set the C(chocolateyVersion) environment var.",
			]

			type: "str"
		}
	}
	notes: [
		"This module will install or upgrade Chocolatey when needed.",
		"When using verbosity 2 or less (C(-vv)) the C(stdout) output will be restricted. When using verbosity 4 (C(-vvvv)) the C(stdout) output will be more verbose. When using verbosity 5 (C(-vvvvv)) the C(stdout) output will include debug output.",
		"Some packages, like hotfixes or updates need an interactive user logon in order to install. You can use C(become) to achieve this, see :ref:`become_windows`. Even if you are connecting as local Administrator, using C(become) to become Administrator will give you an interactive user logon, see examples below.",
		"If C(become) is unavailable, use M(win_hotfix) to install hotfixes instead of M(win_chocolatey) as M(win_hotfix) avoids using C(wusa.exe) which cannot be run without C(become).",
	]

	seealso: [{
		module: "win_chocolatey_config"
	}, {
		module: "win_chocolatey_facts"
	}, {
		module: "win_chocolatey_feature"
	}, {
		module: "win_chocolatey_source"
	}, {
		module: "win_feature"
	}, {
		module:      "win_hotfix"
		description: "Use when C(become) is unavailable, to avoid using C(wusa.exe)."
	}, {
		module: "win_package"
	}, {
		module: "win_updates"
	}, {
		name:        "Chocolatey website"
		description: "More information about the Chocolatey tool."
		link:        "http://chocolatey.org/"
	}, {
		name:        "Chocolatey packages"
		description: "An overview of the available Chocolatey packages."
		link:        "http://chocolatey.org/packages"
	}, {
		ref:         "become_windows"
		description: "Some packages, like hotfixes or updates need an interactive user logon in order to install. You can use C(become) to achieve this."
	}]

	author: [
		"Trond Hindenes (@trondhindenes)",
		"Peter Mounce (@petemounce)",
		"Pepe Barbe (@elventear)",
		"Adam Keech (@smadam813)",
		"Pierre Templier (@ptemplier)",
		"Jordan Borean (@jborean93)",
	]
}
