package ansible

module: win_hotfix: {
	module:            "win_hotfix"
	version_added:     "2.4"
	short_description: "Install and uninstalls Windows hotfixes"
	description: [
		"Install, uninstall a Windows hotfix.",
	]
	options: {
		hotfix_identifier: {
			description: [
				"The name of the hotfix as shown in DISM, see examples for details.",
				"This or C(hotfix_kb) MUST be set when C(state=absent).",
				"If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.",
				"You can get the identifier by running 'Get-WindowsPackage -Online -PackagePath path-to-cab-in-msu' after expanding the msu file.",
			]

			type: "str"
		}
		hotfix_kb: {
			description: [
				"The name of the KB the hotfix relates to, see examples for details.",
				"This or C(hotfix_identifier) MUST be set when C(state=absent).",
				"If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.",
				"Because DISM uses the identifier as a key and doesn't refer to a KB in all cases it is recommended to use C(hotfix_identifier) instead.",
			]

			type: "str"
		}
		state: {
			description: [
				"Whether to install or uninstall the hotfix.",
				"When C(present), C(source) MUST be set.",
				"When C(absent), C(hotfix_identifier) or C(hotfix_kb) MUST be set.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		source: {
			description: [
				"The path to the downloaded hotfix .msu file.",
				"This MUST be set if C(state=present) and MUST be a .msu hotfix file.",
			]
			type: "path"
		}
	}
	notes: [
		"This must be run on a host that has the DISM powershell module installed and a Powershell version >= 4.",
		"This module is installed by default on Windows 8 and Server 2012 and newer.",
		"You can manually install this module on Windows 7 and Server 2008 R2 by installing the Windows ADK U(https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit), see examples to see how to do it with chocolatey.",
		"You can download hotfixes from U(https://www.catalog.update.microsoft.com/Home.aspx).",
	]
	seealso: [{
		module: "win_package"
	}, {
		module: "win_updates"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
