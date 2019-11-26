package ansible

module: win_chocolatey_facts: {
	module:            "win_chocolatey_facts"
	version_added:     "2.8"
	short_description: "Create a facts collection for Chocolatey"
	description: [
		"This module shows information from Chocolatey, such as installed packages, configuration, feature and sources.",
	]
	notes: [
		"Chocolatey must be installed beforehand, use M(win_chocolatey) to do this.",
	]
	seealso: [{
		module: "win_chocolatey"
	}, {
		module: "win_chocolatey_config"
	}, {
		module: "win_chocolatey_feature"
	}, {
		module: "win_chocolatey_source"
	}]
	author: [
		"Simon Bärlocher (@sbaerlocher)",
		"ITIGO AG (@itigoag)",
	]
}
