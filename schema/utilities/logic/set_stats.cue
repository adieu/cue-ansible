package ansible

module: set_stats: {
	module:            "set_stats"
	short_description: "Set stats for the current ansible run"
	description: [
		"This module allows setting/accumulating stats on the current ansible run, either per host or for all hosts in the run.",
		"This module is also supported for Windows targets.",
	]
	author: "Brian Coca (@bcoca)"
	options: {
		data: {
			description: [
				"A dictionary of which each key represents a stat (or variable) you want to keep track of.",
			]
			type:     "dict"
			required: true
		}
		per_host: {
			description: [
				"whether the stats are per host or for all hosts in the run.",
			]
			type:    "bool"
			default: false
		}
		aggregate: {
			description: [
				"Whether the provided value is aggregated to the existing stat C(yes) or will replace it C(no).",
			]
			type:    "bool"
			default: true
		}
	}
	notes: [
		"In order for custom stats to be displayed, you must set C(show_custom_stats) in C(ansible.cfg) or C(ANSIBLE_SHOW_CUSTOM_STATS) to C(yes).",
		"This module is also supported for Windows targets.",
	]
	version_added: "2.3"
}
