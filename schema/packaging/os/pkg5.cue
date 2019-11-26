package ansible

module: pkg5: {
	module: "pkg5"
	author: [
		"Peter Oliver (@mavit)",
	]
	short_description: "Manages packages with the Solaris 11 Image Packaging System"
	version_added:     "1.9"
	description: [
		"IPS packages are the native packages in Solaris 11 and higher.",
	]
	notes: [
		"The naming of IPS packages is explained at U(http://www.oracle.com/technetwork/articles/servers-storage-admin/ips-package-versioning-2232906.html).",
	]
	options: {
		name: {
			description: [
				"An FRMI of the package(s) to be installed/removed/updated.",
				"Multiple packages may be specified, separated by C(,).",
			]
			required: true
		}
		state: {
			description: [
				"Whether to install (I(present), I(latest)), or remove (I(absent)) a package.",
			]
			choices: ["absent", "latest", "present"]
			default: "present"
		}
		accept_licenses: {
			description: [
				"Accept any licences.",
			]
			type:    "bool"
			default: false
			aliases: ["accept", "accept_licences"]
		}
		be_name: {
			description: [
				"Creates a new boot environment with the given name.",
			]
			version_added: "2.8"
			type:          "str"
		}
		refresh: {
			description: [
				"Refresh publishers before execution.",
			]
			version_added: "2.8"
			type:          "bool"
			default:       true
		}
	}
}
