package ansible

module: win_webpicmd: {
	module:            "win_webpicmd"
	version_added:     "2.0"
	short_description: "Installs packages using Web Platform Installer command-line"
	description: [
		"Installs packages using Web Platform Installer command-line (U(http://www.iis.net/learn/install/web-platform-installer/web-platform-installer-v4-command-line-webpicmdexe-rtw-release)).",
		"Must be installed and present in PATH (see M(win_chocolatey) module; 'webpicmd' is the package name, and you must install 'lessmsi' first too)?",
		"Install IIS first (see M(win_feature) module).",
	]
	notes: [
		"Accepts EULAs and suppresses reboot - you will need to check manage reboots yourself (see M(win_reboot) module)",
	]
	options: name: {
		description: [
			"Name of the package to be installed.",
		]
		type:     "str"
		required: true
	}
	seealso: [{
		module: "win_package"
	}]
	author: ["Peter Mounce (@petemounce)"]
}
