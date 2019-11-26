package ansible

module: pkgutil: {
	module:            "pkgutil"
	short_description: "Manage CSW-Packages on Solaris"
	description: [
		"Manages CSW packages (SVR4 format) on Solaris 10 and 11.",
		"These were the native packages on Solaris <= 10 and are available as a legacy feature in Solaris 11.",
		"Pkgutil is an advanced packaging system, which resolves dependency on installation. It is designed for CSW packages.",
	]

	version_added: "1.3"
	author:        "Alexander Winkler (@dermute)"
	options: {
		name: {
			description: [
				"Package name, e.g. (C(CSWnrpe))",
			]
			required: true
		}
		site: {
			description: [
				"Specifies the repository path to install the package from.",
				"Its global definition is done in C(/etc/opt/csw/pkgutil.conf).",
			]
			required: false
		}
		state: {
			description: [
				"Whether to install (C(present)), or remove (C(absent)) a package.",
				"The upgrade (C(latest)) operation will update/install the package to the latest version available.",
				"Note: The module has a limitation that (C(latest)) only works for one package, not lists of them.",
			]
			required: true
			choices: ["present", "absent", "latest"]
		}
		update_catalog: {
			description: [
				"If you want to refresh your catalog from the mirror, set this to (C(yes)).",
			]
			required:      false
			default:       false
			type:          "bool"
			version_added: "2.1"
		}
	}
}
