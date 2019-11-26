package ansible

module: win_unzip: {
	module:            "win_unzip"
	version_added:     "2.0"
	short_description: "Unzips compressed files and archives on the Windows node"
	description: [
		"Unzips compressed files and archives.",
		"Supports .zip files natively.",
		"Supports other formats supported by the Powershell Community Extensions (PSCX) module (basically everything 7zip supports).",
		"For non-Windows targets, use the M(unarchive) module instead.",
	]
	requirements: [
		"PSCX",
	]
	options: {
		src: {
			description: [
				"File to be unzipped (provide absolute path).",
			]
			type:     "path"
			required: true
		}
		dest: {
			description: [
				"Destination of zip file (provide absolute path of directory). If it does not exist, the directory will be created.",
			]
			type:     "path"
			required: true
		}
		delete_archive: {
			description: [
				"Remove the zip file, after unzipping.",
			]
			type:    "bool"
			default: false
			aliases: ["rm"]
		}
		recurse: {
			description: [
				"Recursively expand zipped files within the src file.",
				"Setting to a value of C(yes) requires the PSCX module to be installed.",
			]
			type:    "bool"
			default: false
		}
		creates: {
			description: [
				"If this file or directory exists the specified src will not be extracted.",
			]
			type: "path"
		}
	}
	notes: [
		"This module is not really idempotent, it will extract the archive every time, and report a change.",
		"For extracting any compression types other than .zip, the PowerShellCommunityExtensions (PSCX) Module is required.  This module (in conjunction with PSCX) has the ability to recursively unzip files within the src zip file provided and also functionality for many other compression types. If the destination directory does not exist, it will be created before unzipping the file.  Specifying rm parameter will force removal of the src file after extraction.",
	]

	seealso: [{
		module: "unarchive"
	}]
	author: ["Phil Schwartz (@schwartzmx)"]
}
