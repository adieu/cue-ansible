package ansible

module: win_shortcut: {
	module:            "win_shortcut"
	version_added:     "2.3"
	short_description: "Manage shortcuts on Windows"
	description: [
		"Create, manage and delete Windows shortcuts",
	]
	options: {
		src: {
			description: [
				"Executable or URL the shortcut points to.",
				"The executable needs to be in your PATH, or has to be an absolute path to the executable.",
			]

			type: "str"
		}
		description: {
			description: [
				"Description for the shortcut.",
				"This is usually shown when hoovering the icon.",
			]
			type: "str"
		}
		dest: {
			description: [
				"Destination file for the shortcuting file.",
				"File name should have a C(.lnk) or C(.url) extension.",
			]
			type:     "path"
			required: true
		}
		arguments: {
			description: [
				"Additional arguments for the executable defined in C(src).",
				"Was originally just C(args) but renamed in Ansible 2.8.",
			]
			type: "str"
			aliases: ["args"]
		}
		directory: {
			description: [
				"Working directory for executable defined in C(src).",
			]
			type: "path"
		}
		icon: {
			description: [
				"Icon used for the shortcut.",
				"File name should have a C(.ico) extension.",
				"The file name is followed by a comma and the number in the library file (.dll) or use 0 for an image file.",
			]
			type: "path"
		}
		hotkey: {
			description: [
				"Key combination for the shortcut.",
				"This is a combination of one or more modifiers and a key.",
				"Possible modifiers are Alt, Ctrl, Shift, Ext.",
				"Possible keys are [A-Z] and [0-9].",
			]
			type: "str"
		}
		windowstyle: {
			description: [
				"Influences how the application is displayed when it is launched.",
			]
			type: "str"
			choices: ["maximized", "minimized", "normal"]
		}
		state: {
			description: [
				"When C(absent), removes the shortcut if it exists.",
				"When C(present), creates or updates the shortcut.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		run_as_admin: {
			description: [
				"When C(src) is an executable, this can control whether the shortcut will be opened as an administrator or not.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
	notes: [
		"The following options can include Windows environment variables: C(dest), C(args), C(description), C(dest), C(directory), C(icon) C(src)",
		"Windows has two types of shortcuts: Application and URL shortcuts. URL shortcuts only consists of C(dest) and C(src)",
	]
	seealso: [{
		module: "win_file"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
