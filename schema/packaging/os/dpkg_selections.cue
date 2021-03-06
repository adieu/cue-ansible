package ansible

module: dpkg_selections: {
	module:            "dpkg_selections"
	short_description: "Dpkg package selection selections"
	description: [
		"Change dpkg package selection state via --get-selections and --set-selections.",
	]
	version_added: "2.0"
	author: [
		"Brian Brazil (@brian-brazil)  <brian.brazil@boxever.com>",
	]
	options: {
		name: {
			description: [
				"Name of the package",
			]
			required: true
		}
		selection: {
			description: [
				"The selection state to set the package to.",
			]
			choices: ["install", "hold", "deinstall", "purge"]
			required: true
		}
	}
	notes: ["This module won't cause any packages to be installed/removed/purged, use the C(apt) module for that."]
}
