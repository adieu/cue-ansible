package ansible

module: win_copy: {
	module:            "win_copy"
	version_added:     "1.9.2"
	short_description: "Copies files to remote locations on windows hosts"
	description: [
		"The C(win_copy) module copies a file on the local box to remote windows locations.",
		"For non-Windows targets, use the M(copy) module instead.",
	]
	options: {
		content: {
			description: [
				"When used instead of C(src), sets the contents of a file directly to the specified value.",
				"This is for simple values, for anything complex or with formatting please switch to the M(template) module.",
			]

			type:          "str"
			version_added: "2.3"
		}
		decrypt: {
			description: [
				"This option controls the autodecryption of source files using vault.",
			]
			type:          "bool"
			default:       true
			version_added: "2.5"
		}
		dest: {
			description: [
				"Remote absolute path where the file should be copied to.",
				"If C(src) is a directory, this must be a directory too.",
				"Use \\ for path separators or \\\\ when in \"double quotes\".",
				"If C(dest) ends with \\ then source or the contents of source will be copied to the directory without renaming.",
				"If C(dest) is a nonexistent path, it will only be created if C(dest) ends with \"/\" or \"\\\", or C(src) is a directory.",
				"If C(src) and C(dest) are files and if the parent directory of C(dest) doesn't exist, then the task will fail.",
			]

			type:     "path"
			required: true
		}
		backup: {
			description: [
				"Determine whether a backup should be created.",
				"When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
				"No backup is taken when C(remote_src=False) and multiple files are being copied.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		force: {
			description: [
				"If set to C(yes), the file will only be transferred if the content is different than destination.",
				"If set to C(no), the file will only be transferred if the destination does not exist.",
				"If set to C(no), no checksuming of the content is performed which can help improve performance on larger files.",
			]

			type:          "bool"
			default:       true
			version_added: "2.3"
		}
		local_follow: {
			description: [
				"This flag indicates that filesystem links in the source tree, if they exist, should be followed.",
			]

			type:          "bool"
			default:       true
			version_added: "2.4"
		}
		remote_src: {
			description: [
				"If C(no), it will search for src at originating/master machine.",
				"If C(yes), it will go to the remote/target machine for the src.",
			]
			type:          "bool"
			default:       false
			version_added: "2.3"
		}
		src: {
			description: [
				"Local path to a file to copy to the remote server; can be absolute or relative.",
				"If path is a directory, it is copied (including the source folder name) recursively to C(dest).",
				"If path is a directory and ends with \"/\", only the inside contents of that directory are copied to the destination. Otherwise, if it does not end with \"/\", the directory itself with all contents is copied.",
				"If path is a file and dest ends with \"\\\", the file is copied to the folder with the same filename.",
				"Required unless using C(content).",
			]
			type: "path"
		}
	}
	notes: [
		"Currently win_copy does not support copying symbolic links from both local to remote and remote to remote.",
		"It is recommended that backslashes C(\\) are used instead of C(/) when dealing with remote paths.",
		"Because win_copy runs over WinRM, it is not a very efficient transfer mechanism. If sending large files consider hosting them on a web service and using M(win_get_url) instead.",
	]

	seealso: [{
		module: "assemble"
	}, {
		module: "copy"
	}, {
		module: "win_get_url"
	}, {
		module: "win_robocopy"
	}]
	author: [
		"Jon Hawkesworth (@jhawkesworth)",
		"Jordan Borean (@jborean93)",
	]
}
