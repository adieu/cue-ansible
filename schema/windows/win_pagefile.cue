package ansible

module: win_pagefile: {
	module:            "win_pagefile"
	version_added:     "2.4"
	short_description: "Query or change pagefile configuration"
	description: [
		"Query current pagefile configuration.",
		"Enable/Disable AutomaticManagedPagefile.",
		"Create new or override pagefile configuration.",
	]
	options: {
		drive: {
			description: [
				"The drive of the pagefile.",
			]
			type: "str"
		}
		initial_size: {
			description: [
				"The initial size of the pagefile in megabytes.",
			]
			type: "int"
		}
		maximum_size: {
			description: [
				"The maximum size of the pagefile in megabytes.",
			]
			type: "int"
		}
		override: {
			description: [
				"Override the current pagefile on the drive.",
			]
			type:    "bool"
			default: true
		}
		system_managed: {
			description: [
				"Configures current pagefile to be managed by the system.",
			]
			type:    "bool"
			default: false
		}
		automatic: {
			description: [
				"Configures AutomaticManagedPagefile for the entire system.",
			]
			type: "bool"
		}
		remove_all: {
			description: [
				"Remove all pagefiles in the system, not including automatic managed.",
			]
			type:    "bool"
			default: false
		}
		test_path: {
			description: [
				"Use Test-Path on the drive to make sure the drive is accessible before creating the pagefile.",
			]
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"State of the pagefile.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "query"
		}
	}
	notes: [
		"There is difference between automatic managed pagefiles that configured once for the entire system and system managed pagefile that configured per pagefile.",
		"InitialSize 0 and MaximumSize 0 means the pagefile is managed by the system.",
		"Value out of range exception may be caused by several different issues, two common problems - No such drive, Pagefile size is too small.",
		"Setting a pagefile when AutomaticManagedPagefile is on will disable the AutomaticManagedPagefile.",
	]
	author: ["Liran Nisanov (@LiranNis)"]
}
