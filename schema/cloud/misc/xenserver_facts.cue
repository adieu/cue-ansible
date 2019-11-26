package ansible

module: xenserver_facts: {
	module:            "xenserver_facts"
	version_added:     "2.0"
	short_description: "get facts reported on xenserver"
	description: [
		"Reads data out of XenAPI, can be used instead of multiple xe commands.",
	]
	author: [
		"Andy Hill (@andyhky)",
		"Tim Rupp (@caphrim007)",
		"Robin Lee (@cheese)",
	]
	options: {}
}
