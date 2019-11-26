package ansible

module: slurp: {
	module:            "slurp"
	version_added:     "historical"
	short_description: "Slurps a file from remote nodes"
	description: [
		"This module works like M(fetch). It is used for fetching a base64- encoded blob containing the data in a remote file.",
		"This module is also supported for Windows targets.",
	]
	options: src: {
		description: [
			"The file on the remote system to fetch. This I(must) be a file, not a directory.",
		]
		type:     "path"
		required: true
		aliases: ["path"]
	}
	notes: [
		"This module returns an 'in memory' base64 encoded version of the file, take into account that this will require at least twice the RAM as the original file size.",
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "fetch"
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan (@mpdehaan)",
	]
}
