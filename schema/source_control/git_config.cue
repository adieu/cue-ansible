package ansible

module: git_config: {
	module: "git_config"
	author: [
		"Matthew Gamble (@djmattyg007)",
		"Marius Gedminas (@mgedmin)",
	]
	version_added: 2.1
	requirements: ["git"]
	short_description: "Read and write git configuration"
	description: [
		"The C(git_config) module changes git configuration by invoking 'git config'. This is needed if you don't want to use M(template) for the entire git config file (e.g. because you need to change just C(user.email) in /etc/.git/config).  Solutions involving M(command) are cumbersome or don't work correctly in check mode.",
	]

	options: {
		list_all: {
			description: [
				"List all settings (optionally limited to a given I(scope))",
			]
			type:    "bool"
			default: "no"
		}
		name: description: [
			"The name of the setting. If no value is supplied, the value will be read from the config if it has been set.",
		]

		repo: description: [
			"Path to a git repository for reading and writing values from a specific repo.",
		]

		scope: {
			description: [
				"Specify which scope to read/set values from. This is required when setting config values. If this is set to local, you must also specify the repo parameter. It defaults to system only when not using I(list_all)=yes.",
			]

			choices: ["local", "global", "system"]
		}
		state: {
			description: [
				"Indicates the setting should be set/unset. This parameter has higher precedence than I(value) parameter: when I(state)=absent and I(value) is defined, I(value) is discarded.",
			]

			choices: ["present", "absent"]
			default:       "present"
			version_added: "2.8"
		}
		value: description: [
			"When specifying the name of a single setting, supply a value to set that setting to the given value.",
		]
	}
}
