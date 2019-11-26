package ansible

module: patch: {
	module: "patch"
	author: [
		"Jakub Jirutka (@jirutka)",
		"Luis Alberto Perez Lazaro (@luisperlaz)",
	]
	version_added: "1.9"
	description: [
		"Apply patch files using the GNU patch tool.",
	]
	short_description: "Apply patch files using the GNU patch tool"
	options: {
		basedir: {
			description: [
				"Path of a base directory in which the patch file will be applied.",
				"May be omitted when C(dest) option is specified, otherwise required.",
			]
			type: "path"
		}
		dest: {
			description: [
				"Path of the file on the remote machine to be patched.",
				"The names of the files to be patched are usually taken from the patch file, but if there's just one file to be patched it can specified with this option.",
			]

			type: "path"
			aliases: ["originalfile"]
		}
		src: {
			description: [
				"Path of the patch file as accepted by the GNU patch tool. If C(remote_src) is 'no', the patch source file is looked up from the module's I(files) directory.",
			]

			type:     "path"
			required: true
			aliases: ["patchfile"]
		}
		state: {
			description: [
				"Whether the patch should be applied or reverted.",
			]
			type: "str"
			choices: ["absent", "present"]
			default:       "present"
			version_added: "2.6"
		}
		remote_src: {
			description: [
				"If C(no), it will search for src at originating/master machine, if C(yes) it will go to the remote/target machine for the C(src).",
			]

			type:    "bool"
			default: false
		}
		strip: {
			description: [
				"Number that indicates the smallest prefix containing leading slashes that will be stripped from each file name found in the patch file.",
				"For more information see the strip parameter of the GNU patch tool.",
			]
			type:    "int"
			default: 0
		}
		backup: {
			version_added: "2.0"
			description: [
				"Passes C(--backup --version-control=numbered) to patch, producing numbered backup copies.",
			]
			type:    "bool"
			default: false
		}
		binary: {
			version_added: "2.0"
			description: [
				"Setting to C(yes) will disable patch's heuristic for transforming CRLF line endings into LF.",
				"Line endings of src and dest must match.",
				"If set to C(no), C(patch) will replace CRLF in C(src) files on POSIX.",
			]
			type:    "bool"
			default: false
		}
	}
	notes: ["This module requires GNU I(patch) utility to be installed on the remote host."]
}
