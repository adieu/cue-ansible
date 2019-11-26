package ansible

module: hostname: {
	module: "hostname"
	author: [
		"Adrian Likins (@alikins)",
		"Hideki Saito (@saito-hideki)",
	]
	version_added:     "1.4"
	short_description: "Manage hostname"
	requirements: ["hostname"]
	description: [
		"Set system's hostname, supports most OSs/Distributions, including those using systemd.",
		"Note, this module does *NOT* modify C(/etc/hosts). You need to modify it yourself using other modules like template or replace.",
		"Windows, HP-UX and AIX are not currently supported.",
	]
	options: {
		name: {
			description: [
				"Name of the host",
			]
			required: true
		}
		use: {
			description: [
				"Which strategy to use to update the hostname.",
				"If not set we try to autodetect, but this can be problematic, specially with containers as they can present misleading information.",
			]
			choices: ["generic", "debian", "sles", "redhat", "alpine", "systemd", "openrc", "openbsd", "solaris", "freebsd"]
			version_added: "2.9"
		}
	}
}
