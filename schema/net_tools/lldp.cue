package ansible

module: lldp: {
	module: "lldp"
	requirements: ["lldpctl"]
	version_added:     1.6
	short_description: "get details reported by lldp"
	description: [
		"Reads data out of lldpctl",
	]
	options: {}
	author: "Andy Hill (@andyhky)"
	notes: ["Requires lldpd running and lldp enabled on switches"]
}
