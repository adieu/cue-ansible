package ansible

module: win_file_version: {
	module:            "win_file_version"
	version_added:     "2.1"
	short_description: "Get DLL or EXE file build version"
	description: [
		"Get DLL or EXE file build version.",
	]
	notes: [
		"This module will always return no change.",
	]
	options: path: {
		description: [
			"File to get version.",
			"Always provide absolute path.",
		]
		type:     "path"
		required: true
	}
	seealso: [{
		module: "win_file"
	}]
	author: ["Sam Liu (@SamLiu79)"]
}
