package ansible

module: win_template: {
	module:        "win_template"
	version_added: "1.9.2"
	options: {
		backup: {
			description: [
				"Determine whether a backup should be created.",
				"When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		newline_sequence: default: "\\r\\n"
		force: version_added: "2.4"
	}
	notes: [
		"Beware fetching files from windows machines when creating templates because certain tools, such as Powershell ISE, and regedit's export facility add a Byte Order Mark as the first character of the file, which can cause tracebacks.",
		"You can use the M(win_copy) module with the C(content:) option if you prefer the template inline, as part of the playbook.",
		"For Linux you can use M(template) which uses '\\\\n' as C(newline_sequence) by default.",
	]
	seealso: [{
		module: "win_copy"
	}, {
		module: "copy"
	}, {
		module: "template"
	}]
	author: [
		"Jon Hawkesworth (@jhawkesworth)",
	]
	extends_documentation_fragment: ["template_common"]
}
