package ansible

module: unarchive: {
	module:            "unarchive"
	version_added:     "1.4"
	short_description: "Unpacks an archive after (optionally) copying it from the local machine."
	description: [
		"The C(unarchive) module unpacks an archive. It will not unpack a compressed file that does not contain an archive.",
		"By default, it will copy the source file from the local system to the target before unpacking.",
		"Set C(remote_src=yes) to unpack an archive which already exists on the target.",
		"If checksum validation is desired, use M(get_url) or M(uri) instead to fetch the file and set C(remote_src=yes).",
		"For Windows targets, use the M(win_unzip) module instead.",
	]
	options: {
		src: {
			description: [
				"If C(remote_src=no) (default), local path to archive file to copy to the target server; can be absolute or relative. If C(remote_src=yes), path on the target server to existing archive file to unpack.",
				"If C(remote_src=yes) and C(src) contains C(://), the remote machine will download the file from the URL first. (version_added 2.0). This is only for simple cases, for full download support use the M(get_url) module.",
			]

			type:     "path"
			required: true
		}
		dest: {
			description: [
				"Remote absolute path where the archive should be unpacked.",
			]
			type:     "path"
			required: true
		}
		copy: {
			description: [
				"If true, the file is copied from local 'master' to the target machine, otherwise, the plugin will look for src archive at the target machine.",
				"This option has been deprecated in favor of C(remote_src).",
				"This option is mutually exclusive with C(remote_src).",
			]
			type:    "bool"
			default: true
		}
		creates: {
			description: [
				"If the specified absolute path (file or directory) already exists, this step will B(not) be run.",
			]
			type:          "path"
			version_added: "1.6"
		}
		list_files: {
			description: [
				"If set to True, return the list of files that are contained in the tarball.",
			]
			type:          "bool"
			default:       false
			version_added: "2.0"
		}
		exclude: {
			description: [
				"List the directory and file entries that you would like to exclude from the unarchive action.",
			]
			type:          "list"
			version_added: "2.1"
		}
		keep_newer: {
			description: [
				"Do not replace existing files that are newer than files from the archive.",
			]
			type:          "bool"
			default:       false
			version_added: "2.1"
		}
		extra_opts: {
			description: [
				"Specify additional options by passing in an array.",
				"Each space-separated command-line option should be a new element of the array. See examples.",
				"Command-line options with multiple elements must use multiple lines in the array, one for each element.",
			]
			type:          "list"
			default:       ""
			version_added: "2.1"
		}
		remote_src: {
			description: [
				"Set to C(yes) to indicate the archived file is already on the remote system and not local to the Ansible controller.",
				"This option is mutually exclusive with C(copy).",
			]
			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		validate_certs: {
			description: [
				"This only applies if using a https URL as the source of the file.",
				"This should only set to C(no) used on personally controlled sites using self-signed certificate.",
				"Prior to 2.2 the code worked as if this was set to C(yes).",
			]
			type:          "bool"
			default:       true
			version_added: "2.2"
		}
	}
	extends_documentation_fragment: [
		"decrypt",
		"files",
	]
	todo: [
		"Re-implement tar support using native tarfile module.",
		"Re-implement zip support using native zipfile module.",
	]
	notes: [
		"Requires C(zipinfo) and C(gtar)/C(unzip) command on target host.",
		"Can handle I(.zip) files using C(unzip) as well as I(.tar), I(.tar.gz), I(.tar.bz2) and I(.tar.xz) files using C(gtar).",
		"Does not handle I(.gz) files, I(.bz2) files or I(.xz) files that do not contain a I(.tar) archive.",
		"Uses gtar's C(--diff) arg to calculate if changed or not. If this C(arg) is not supported, it will always unpack the archive.",
		"Existing files/directories in the destination which are not in the archive are not touched. This is the same behavior as a normal archive extraction.",
		"Existing files/directories in the destination which are not in the archive are ignored for purposes of deciding if the archive should be unpacked or not.",
	]

	seealso: [{
		module: "archive"
	}, {
		module: "iso_extract"
	}, {
		module: "win_unzip"
	}]
	author: "Michael DeHaan"
}
