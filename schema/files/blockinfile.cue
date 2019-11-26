package ansible

module: blockinfile: {
	module:            "blockinfile"
	short_description: "Insert/update/remove a text block surrounded by marker lines"
	version_added:     "2.0"
	description: [
		"This module will insert/update/remove a block of multi-line text surrounded by customizable marker lines.",
	]
	author: [
		"Yaegashi Takeshi (@yaegashi)",
	]
	options: {
		path: {
			description: [
				"The file to modify.",
				"Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).",
			]
			type:     "path"
			required: true
			aliases: ["dest", "destfile", "name"]
		}
		state: {
			description: [
				"Whether the block should be there or not.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		marker: {
			description: [
				"The marker line template.",
				"C({mark}) will be replaced with the values C(in marker_begin) (default=\"BEGIN\") and C(marker_end) (default=\"END\").",
				"Using a custom marker without the C({mark}) variable may result in the block being repeatedly inserted on subsequent playbook runs.",
			]
			type:    "str"
			default: "# {mark} ANSIBLE MANAGED BLOCK"
		}
		block: {
			description: [
				"The text to insert inside the marker lines.",
				"If it is missing or an empty string, the block will be removed as if C(state) were specified to C(absent).",
			]
			type:    "str"
			default: ""
			aliases: ["content"]
		}
		insertafter: {
			description: [
				"If specified, the block will be inserted after the last match of specified regular expression.",
				"A special value is available; C(EOF) for inserting the block at the end of the file.",
				"If specified regular expression has no matches, C(EOF) will be used instead.",
			]
			type: "str"
			choices: ["EOF", "*regex*"]
			default: "EOF"
		}
		insertbefore: {
			description: [
				"If specified, the block will be inserted before the last match of specified regular expression.",
				"A special value is available; C(BOF) for inserting the block at the beginning of the file.",
				"If specified regular expression has no matches, the block will be inserted at the end of the file.",
			]
			type: "str"
			choices: ["BOF", "*regex*"]
		}
		create: {
			description: [
				"Create a new file if it does not exist.",
			]
			type:    "bool"
			default: false
		}
		backup: {
			description: [
				"Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			type:    "bool"
			default: false
		}
		marker_begin: {
			description: [
				"This will be inserted at C({mark}) in the opening ansible block marker.",
			]
			type:          "str"
			default:       "BEGIN"
			version_added: "2.5"
		}
		marker_end: {
			required: false
			description: [
				"This will be inserted at C({mark}) in the closing ansible block marker.",
			]
			type:          "str"
			default:       "END"
			version_added: "2.5"
		}
	}
	notes: [
		"This module supports check mode.",
		"When using 'with_*' loops be aware that if you do not set a unique mark the block will be overwritten on each iteration.",
		"As of Ansible 2.3, the I(dest) option has been changed to I(path) as default, but I(dest) still works as well.",
		"Option I(follow) has been removed in Ansible 2.5, because this module modifies the contents of the file so I(follow=no) doesn't make sense.",
		"When more then one block should be handled in one file you must change the I(marker) per task.",
	]
	extends_documentation_fragment: [
		"files",
		"validate",
	]
}
