package ansible

module: atomic_host: {
	module:            "atomic_host"
	short_description: "Manage the atomic host platform"
	description: [
		"Manage the atomic host platform.",
		"Rebooting of Atomic host platform should be done outside this module.",
	]
	version_added: "2.2"
	author: [
		"Saravanan KR (@krsacme)",
	]
	notes: [
		"Host should be an atomic platform (verified by existence of '/run/ostree-booted' file).",
	]
	requirements: [
		"atomic",
		"python >= 2.6",
	]
	options: revision: {
		description: [
			"The version number of the atomic host to be deployed. Providing C(latest) will upgrade to the latest available version.",
		]
		default: "latest"
		aliases: ["version"]
	}
}
