package ansible

module: win_updates: {
	module:            "win_updates"
	version_added:     "2.0"
	short_description: "Download and install Windows updates"
	description: [
		"Searches, downloads, and installs Windows updates synchronously by automating the Windows Update client.",
	]
	options: {
		blacklist: {
			description: [
				"A list of update titles or KB numbers that can be used to specify which updates are to be excluded from installation.",
				"If an available update does match one of the entries, then it is skipped and not installed.",
				"Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.",
			]

			type:          "list"
			version_added: "2.5"
		}
		category_names: {
			description: [
				"A scalar or list of categories to install updates from. To get the list of categories, run the module with C(state=searched). The category must be the full category string, but is case insensitive.",
				"Some possible categories are Application, Connectors, Critical Updates, Definition Updates, Developer Kits, Feature Packs, Guidance, Security Updates, Service Packs, Tools, Update Rollups and Updates.",
			]

			type: "list"
			default: ["CriticalUpdates", "SecurityUpdates", "UpdateRollups"]
		}
		reboot: {
			description: [
				"Ansible will automatically reboot the remote host if it is required and continue to install updates after the reboot.",
				"This can be used instead of using a M(win_reboot) task after this one and ensures all updates for that category is installed in one go.",
				"Async does not work when C(reboot=yes).",
			]
			type:          "bool"
			default:       false
			version_added: "2.5"
		}
		reboot_timeout: {
			description: [
				"The time in seconds to wait until the host is back online from a reboot.",
				"This is only used if C(reboot=yes) and a reboot is required.",
			]
			default:       1200
			version_added: "2.5"
		}
		server_selection: {
			description: [
				"Defines the Windows Update source catalog.",
				"C(default) Use the default search source. For many systems default is set to the Microsoft Windows Update catalog. Systems participating in Windows Server Update Services (WSUS), Systems Center Configuration Manager (SCCM), or similar corporate update server environments may default to those managed update sources instead of the Windows Update catalog.",
				"C(managed_server) Use a managed server catalog. For environments utilizing Windows Server Update Services (WSUS), Systems Center Configuration Manager (SCCM), or similar corporate update servers, this option selects the defined corporate update source.",
				"C(windows_update) Use the Microsoft Windows Update catalog.",
			]
			type: "str"
			choices: ["default", "managed_server", "windows_update"]
			default:       "default"
			version_added: "2.8"
		}
		state: {
			description: [
				"Controls whether found updates are downloaded or installed or listed",
				"This module also supports Ansible check mode, which has the same effect as setting state=searched",
			]
			type: "str"
			choices: ["installed", "searched", "downloaded"]
			default: "installed"
		}
		log_path: {
			description: [
				"If set, C(win_updates) will append update progress to the specified file. The directory must already exist.",
			]
			type: "path"
		}
		whitelist: {
			description: [
				"A list of update titles or KB numbers that can be used to specify which updates are to be searched or installed.",
				"If an available update does not match one of the entries, then it is skipped and not installed.",
				"Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.",
				"The whitelist is only validated on updates that were found based on I(category_names). It will not force the module to install an update if it was not in the category specified.",
			]

			type:          "list"
			version_added: "2.5"
		}
		use_scheduled_task: {
			description: [
				"Will not auto elevate the remote process with I(become) and use a scheduled task instead.",
				"Set this to C(yes) when using this module with async on Server 2008, 2008 R2, or Windows 7, or on Server 2008 that is not authenticated with basic or credssp.",
				"Can also be set to C(yes) on newer hosts where become does not work due to further privilege restrictions from the OS defaults.",
			]

			type:          "bool"
			default:       false
			version_added: "2.6"
		}
	}
	notes: [
		"C(win_updates) must be run by a user with membership in the local Administrators group.",
		"C(win_updates) will use the default update service configured for the machine (Windows Update, Microsoft Update, WSUS, etc).",
		"C(win_updates) will I(become) SYSTEM using I(runas) unless C(use_scheduled_task) is C(yes)",
		"By default C(win_updates) does not manage reboots, but will signal when a reboot is required with the I(reboot_required) return value, as of Ansible v2.5 C(reboot) can be used to reboot the host if required in the one task.",
		"C(win_updates) can take a significant amount of time to complete (hours, in some cases). Performance depends on many factors, including OS version, number of updates, system load, and update server load.",
		"Beware that just after C(win_updates) reboots the system, the Windows system may not have settled yet and some base services could be in limbo. This can result in unexpected behavior. Check the examples for ways to mitigate this.",
		"More information about PowerShell and how it handles RegEx strings can be found at U(https://technet.microsoft.com/en-us/library/2007.11.powershell.aspx).",
	]

	seealso: [{
		module: "win_chocolatey"
	}, {
		module: "win_feature"
	}, {
		module: "win_hotfix"
	}, {
		module: "win_package"
	}]
	author: ["Matt Davis (@nitzmahone)"]
}
