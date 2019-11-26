package ansible

module: ohai: {
	module:            "ohai"
	short_description: "Returns inventory data from I(Ohai)"
	description: [
		"Similar to the M(facter) module, this runs the I(Ohai) discovery program (U(https://docs.chef.io/ohai.html)) on the remote host and returns JSON inventory data. I(Ohai) data is a bit more verbose and nested than I(facter).",
	]

	version_added: "0.6"
	options: {}
	notes: []
	requirements: ["ohai"]
	author: [
		"Ansible Core Team",
		"Michael DeHaan (@mpdehaan)",
	]
}
