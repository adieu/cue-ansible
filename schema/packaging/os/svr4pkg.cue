package ansible

module: svr4pkg: {
	module:            "svr4pkg"
	short_description: "Manage Solaris SVR4 packages"
	description: [
		"Manages SVR4 packages on Solaris 10 and 11.",
		"These were the native packages on Solaris <= 10 and are available as a legacy feature in Solaris 11.",
		"Note that this is a very basic packaging system. It will not enforce dependencies on install or remove.",
	]

	version_added: "0.9"
	author:        "Boyd Adamson (@brontitall)"
	options: {
		name: {
			description: [
				"Package name, e.g. C(SUNWcsr)",
			]
			required: true
		}

		state: {
			description: [
				"Whether to install (C(present)), or remove (C(absent)) a package.",
				"If the package is to be installed, then I(src) is required.",
				"The SVR4 package system doesn't provide an upgrade operation. You need to uninstall the old, then install the new package.",
			]
			required: true
			choices: ["present", "absent"]
		}

		src: description: [
			"Specifies the location to install the package from. Required when C(state=present).",
			"Can be any path acceptable to the C(pkgadd) command's C(-d) option. e.g.: C(somefile.pkg), C(/dir/with/pkgs), C(http:/server/mypkgs.pkg).",
			"If using a file or directory, they must already be accessible by the host. See the M(copy) module for a way to get them there.",
		]
		proxy: description: [
			"HTTP[s] proxy to be used if C(src) is a URL.",
		]
		response_file: {
			description: [
				"Specifies the location of a response file to be used if package expects input on install. (added in Ansible 1.4)",
			]
			required: false
		}
		zone: {
			description: [
				"Whether to install the package only in the current zone, or install it into all zones.",
				"The installation into all zones works only if you are working with the global zone.",
			]
			required: false
			default:  "all"
			choices: ["current", "all"]
			version_added: "1.6"
		}
		category: {
			description: [
				"Install/Remove category instead of a single package.",
			]
			required:      false
			type:          "bool"
			version_added: "1.6"
		}
	}
}
