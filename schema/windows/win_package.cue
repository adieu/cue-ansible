package ansible

module: win_package: {
	module:            "win_package"
	version_added:     "1.7"
	short_description: "Installs/uninstalls an installable package"
	description: [
		"Installs or uninstalls a package in either an MSI or EXE format.",
		"These packages can be sources from the local file system, network file share or a url.",
		"Please read the notes section around some caveats with this module.",
	]
	options: {
		arguments: {
			description: [
				"Any arguments the installer needs to either install or uninstall the package.",
				"If the package is an MSI do not supply the C(/qn), C(/log) or C(/norestart) arguments.",
				"As of Ansible 2.5, this parameter can be a list of arguments and the module will escape the arguments as necessary, it is recommended to use a string when dealing with MSI packages due to the unique escaping issues with msiexec.",
			]

			type: "raw"
		}
		chdir: {
			description: [
				"Set the specified path as the current working directory before installing or uninstalling a package.",
			]

			type:          "path"
			version_added: "2.8"
		}
		creates_path: {
			description: [
				"Will check the existence of the path specified and use the result to determine whether the package is already installed.",
				"You can use this in conjunction with C(product_id) and other C(creates_*).",
			]
			type:          "path"
			version_added: "2.4"
		}
		creates_service: {
			description: [
				"Will check the existing of the service specified and use the result to determine whether the package is already installed.",
				"You can use this in conjunction with C(product_id) and other C(creates_*).",
			]
			type:          "str"
			version_added: "2.4"
		}
		creates_version: {
			description: [
				"Will check the file version property of the file at C(creates_path) and use the result to determine whether the package is already installed.",
				"C(creates_path) MUST be set and is a file.",
				"You can use this in conjunction with C(product_id) and other C(creates_*).",
			]
			type:          "str"
			version_added: "2.4"
		}
		expected_return_code: {
			description: [
				"One or more return codes from the package installation that indicates success.",
				"Before Ansible 2.4 this was just 0 but since Ansible 2.4 this is both C(0) and C(3010).",
				"A return code of C(3010) usually means that a reboot is required, the C(reboot_required) return value is set if the return code is C(3010).",
			]

			type: "list"
			default: [0, 3010]
		}
		password: {
			description: [
				"The password for C(user_name), must be set when C(user_name) is.",
			]
			type: "str"
			aliases: ["user_password"]
		}
		path: {
			description: [
				"Location of the package to be installed or uninstalled.",
				"This package can either be on the local file system, network share or a url.",
				"If the path is on a network share and the current WinRM transport doesn't support credential delegation, then C(user_name) and C(user_password) must be set to access the file.",
				"There are cases where this file will be copied locally to the server so it can access it, see the notes for more info.",
				"If C(state=present) then this value MUST be set.",
				"If C(state=absent) then this value does not need to be set if C(product_id) is.",
			]

			type: "str"
		}
		product_id: {
			description: [
				"The product id of the installed packaged.",
				"This is used for checking whether the product is already installed and getting the uninstall information if C(state=absent).",
				"You can find product ids for installed programs in the Windows registry editor either at C(HKLM:Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall) or for 32 bit programs at C(HKLM:Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall).",
				"This SHOULD be set when the package is not an MSI, or the path is a url or a network share and credential delegation is not being used. The C(creates_*) options can be used instead but is not recommended.",
			]

			type: "str"
			aliases: ["productid"]
		}
		state: {
			description: [
				"Whether to install or uninstall the package.",
				"The module uses C(product_id) and whether it exists at the registry path to see whether it needs to install or uninstall the package.",
			]

			type: "str"
			choices: ["absent", "present"]
			default: "present"
			aliases: ["ensure"]
		}
		username: {
			description: [
				"Username of an account with access to the package if it is located on a file share.",
				"This is only needed if the WinRM transport is over an auth method that does not support credential delegation like Basic or NTLM.",
			]

			type: "str"
			aliases: ["user_name"]
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
				"Before Ansible 2.4 this defaulted to C(no).",
			]
			type:          "bool"
			default:       true
			version_added: "2.4"
		}
		log_path: {
			description: [
				"Specifies the path to a log file that is persisted after an MSI package is installed or uninstalled.",
				"When omitted, a temporary log file is used for MSI packages.",
				"This is only valid for MSI files, use C(arguments) for other package types.",
			]
			type:          "path"
			version_added: "2.8"
		}
	}
	notes: [
		"When C(state=absent) and the product is an exe, the path may be different from what was used to install the package originally. If path is not set then the path used will be what is set under C(UninstallString) in the registry for that product_id.",
		"Not all product ids are in a GUID form, some programs incorrectly use a different structure but this module should support any format.",
		"By default all msi installs and uninstalls will be run with the options C(/log, /qn, /norestart).",
		"It is recommended you download the package first from the URL using the M(win_get_url) module as it opens up more flexibility with what must be set when calling C(win_package).",
		"Packages will be temporarily downloaded or copied locally when path is a network location and credential delegation is not set, or path is a URL and the file is not an MSI.",
		"All the installation checks under C(product_id) and C(creates_*) add together, if one fails then the program is considered to be absent.",
	]

	seealso: [{
		module: "win_chocolatey"
	}, {
		module: "win_hotfix"
	}, {
		module: "win_updates"
	}]
	author: [
		"Trond Hindenes (@trondhindenes)",
		"Jordan Borean (@jborean93)",
	]
}
