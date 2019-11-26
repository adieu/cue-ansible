package ansible

module: make: {
	module:            "make"
	short_description: "Run targets in a Makefile"
	requirements: [
		"make",
	]
	version_added: "2.1"
	author:        "Linus Unnebäck (@LinusU) <linus@folkdatorn.se>"
	description: ["Run targets in a Makefile."]
	options: {
		target: {
			description: [
				"The target to run.",
				"Typically this would be something like C(install),C(test) or C(all).\"",
			]
			type: "str"
		}
		params: {
			description: ["Any extra parameters to pass to make."]
			type: "dict"
		}
		chdir: {
			description: ["Change to this directory before running make."]
			type:     "path"
			required: true
		}
		file: {
			description: ["Use a custom Makefile."]
			type:          "path"
			version_added: "2.5"
		}
	}
}
