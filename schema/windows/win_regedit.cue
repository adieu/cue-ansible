package ansible

module: win_regedit: {
	module:            "win_regedit"
	version_added:     "2.0"
	short_description: "Add, change, or remove registry keys and values"
	description: [
		"Add, modify or remove registry keys and values.",
		"More information about the windows registry from Wikipedia U(https://en.wikipedia.org/wiki/Windows_Registry).",
	]

	options: {
		path: {
			description: [
				"Name of the registry path.",
				"Should be in one of the following registry hives: HKCC, HKCR, HKCU, HKLM, HKU.",
			]

			type:     "str"
			required: true
			aliases: ["key"]
		}
		name: {
			description: [
				"Name of the registry entry in the above C(path) parameters.",
				"If not provided, or empty then the '(Default)' property for the key will be used.",
			]

			type: "str"
			aliases: ["entry"]
		}
		data: {
			description: [
				"Value of the registry entry C(name) in C(path).",
				"If not specified then the value for the property will be null for the corresponding C(type).",
				"Binary and None data should be expressed in a yaml byte array or as comma separated hex values.",
				"An easy way to generate this is to run C(regedit.exe) and use the I(export) option to save the registry values to a file.",
				"In the exported file, binary value will look like C(hex:be,ef,be,ef), the C(hex:) prefix is optional.",
				"DWORD and QWORD values should either be represented as a decimal number or a hex value.",
				"Multistring values should be passed in as a list.",
				"See the examples for more details on how to format this data.",
			]
			type: "str"
		}
		type: {
			description: [
				"The registry value data type.",
			]
			type: "str"
			choices: ["binary", "dword", "expandstring", "multistring", "string", "qword"]
			default: "string"
			aliases: ["datatype"]
		}
		state: {
			description: [
				"The state of the registry entry.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		delete_key: {
			description: [
				"When C(state) is 'absent' then this will delete the entire key.",
				"If C(no) then it will only clear out the '(Default)' property for that key.",
			]

			type:          "bool"
			default:       true
			version_added: "2.4"
		}
		hive: {
			description: [
				"A path to a hive key like C:\\Users\\Default\\NTUSER.DAT to load in the registry.",
				"This hive is loaded under the HKLM:\\ANSIBLE key which can then be used in I(name) like any other path.",
				"This can be used to load the default user profile registry hive or any other hive saved as a file.",
				"Using this function requires the user to have the C(SeRestorePrivilege) and C(SeBackupPrivilege) privileges enabled.",
			]

			type:          "path"
			version_added: "2.5"
		}
	}
	notes: [
		"Check-mode C(-C/--check) and diff output C(-D/--diff) are supported, so that you can test every change against the active configuration before applying changes.",
		"Beware that some registry hives (C(HKEY_USERS) in particular) do not allow to create new registry paths in the root folder.",
		"Since ansible 2.4, when checking if a string registry value has changed, a case-sensitive test is used. Previously the test was case-insensitive.",
	]
	seealso: [{
		module: "win_reg_stat"
	}, {
		module: "win_regmerge"
	}]
	author: [
		"Adam Keech (@smadam813)",
		"Josh Ludwig (@joshludwig)",
		"Jordan Borean (@jborean93)",
	]
}
