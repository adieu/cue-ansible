package ansible

module: archive: {
	module:                         "archive"
	version_added:                  "2.3"
	short_description:              "Creates a compressed archive of one or more files or trees"
	extends_documentation_fragment: "files"
	description: [
		"Creates or extends an archive.",
		"The source and archive are on the remote host, and the archive I(is not) copied to the local host.",
		"Source files can be deleted after archival by specifying I(remove=True).",
	]
	options: {
		path: {
			description: [
				"Remote absolute path, glob, or list of paths or globs for the file or files to compress or archive.",
			]
			type:     "list"
			required: true
		}
		format: {
			description: [
				"The type of compression to use.",
				"Support for xz was added in Ansible 2.5.",
			]
			type: "str"
			choices: ["bz2", "gz", "tar", "xz", "zip"]
			default: "gz"
		}
		dest: {
			description: [
				"The file name of the destination archive.  The parent directory must exists on the remote host.",
				"This is required when C(path) refers to multiple files by either specifying a glob, a directory or multiple paths in a list.",
			]
			type: "path"
		}
		exclude_path: {
			description: [
				"Remote absolute path, glob, or list of paths or globs for the file or files to exclude from the archive.",
			]
			type:          "list"
			version_added: "2.4"
		}
		force_archive: {
			version_added: "2.8"
			description: [
				"Allow you to force the module to treat this as an archive even if only a single file is specified.",
				"By default behaviour is maintained. i.e A when a single file is specified it is compressed only (not archived).",
			]
			type:    "bool"
			default: false
		}
		remove: {
			description: [
				"Remove any added source files and trees after adding to archive.",
			]
			type:    "bool"
			default: false
		}
	}
	notes: [
		"Requires tarfile, zipfile, gzip and bzip2 packages on target host.",
		"Requires lzma or backports.lzma if using xz format.",
		"Can produce I(gzip), I(bzip2), I(lzma) and I(zip) compressed files or archives.",
	]
	seealso: [{
		module: "unarchive"
	}]
	author: ["Ben Doherty (@bendoh)"]
}
