package ansible

module: win_security_policy: {
	module:            "win_security_policy"
	version_added:     "2.4"
	short_description: "Change local security policy settings"
	description: [
		"Allows you to set the local security policies that are configured by SecEdit.exe.",
	]

	options: {
		section: {
			description: [
				"The ini section the key exists in.",
				"If the section does not exist then the module will return an error.",
				"Example sections to use are 'Account Policies', 'Local Policies', 'Event Log', 'Restricted Groups', 'System Services', 'Registry' and 'File System'",
				"If wanting to edit the C(Privilege Rights) section, use the M(win_user_right) module instead.",
			]

			type:     "str"
			required: true
		}
		key: {
			description: [
				"The ini key of the section or policy name to modify.",
				"The module will return an error if this key is invalid.",
			]
			type:     "str"
			required: true
		}
		value: {
			description: [
				"The value for the ini key or policy name.",
				"If the key takes in a boolean value then 0 = False and 1 = True.",
			]
			type:     "str"
			required: true
		}
	}
	notes: [
		"This module uses the SecEdit.exe tool to configure the values, more details of the areas and keys that can be configured can be found here U(https://msdn.microsoft.com/en-us/library/bb742512.aspx).",
		"If you are in a domain environment these policies may be set by a GPO policy, this module can temporarily change these values but the GPO will override it if the value differs.",
		"You can also run C(SecEdit.exe /export /cfg C:\\temp\\output.ini) to view the current policies set on your system.",
		"When assigning user rights, use the M(win_user_right) module instead.",
	]
	seealso: [{
		module: "win_user_right"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
