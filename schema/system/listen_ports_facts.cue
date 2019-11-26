package ansible

module: listen_ports_facts: {
	module: "listen_ports_facts"

	author: [
		"Nathan Davison (@ndavison)",
	]

	version_added: "2.9"

	description: [
		"Gather facts on processes listening on TCP and UDP ports.",
	]

	short_description: "Gather facts on processes listening on TCP and UDP ports."
}
