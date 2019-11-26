package ansible

module: win_feature: {
	module:            "win_feature"
	version_added:     "1.7"
	short_description: "Installs and uninstalls Windows Features on Windows Server"
	description: [
		"Installs or uninstalls Windows Roles or Features on Windows Server.",
		"This module uses the Add/Remove-WindowsFeature Cmdlets on Windows 2008 R2 and Install/Uninstall-WindowsFeature Cmdlets on Windows 2012, which are not available on client os machines.",
	]

	options: {
		name: {
			description: [
				"Names of roles or features to install as a single feature or a comma-separated list of features.",
				"To list all available features use the PowerShell command C(Get-WindowsFeature).",
			]
			type:     "list"
			required: true
		}
		state: {
			description: [
				"State of the features or roles on the system.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		include_sub_features: {
			description: [
				"Adds all subfeatures of the specified feature.",
			]
			type:    "bool"
			default: false
		}
		include_management_tools: {
			description: [
				"Adds the corresponding management tools to the specified feature.",
				"Not supported in Windows 2008 R2 and will be ignored.",
			]
			type:    "bool"
			default: false
		}
		source: {
			description: [
				"Specify a source to install the feature from.",
				"Not supported in Windows 2008 R2 and will be ignored.",
				"Can either be C({driveletter}:\\sources\\sxs) or C(\\\\{IP}\\share\\sources\\sxs).",
			]
			type:          "str"
			version_added: "2.1"
		}
	}
	seealso: [{
		module: "win_chocolatey"
	}, {
		module: "win_package"
	}]
	author: [
		"Paul Durivage (@angstwad)",
		"Trond Hindenes (@trondhindenes)",
	]
}
