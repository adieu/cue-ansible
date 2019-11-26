package ansible

module: win_iis_virtualdirectory: {
	module:            "win_iis_virtualdirectory"
	version_added:     "2.0"
	short_description: "Configures a virtual directory in IIS"
	description: [
		"Creates, Removes and configures a virtual directory in IIS.",
	]
	options: {
		name: {
			description: [
				"The name of the virtual directory to create or remove.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Whether to add or remove the specified virtual directory.",
				"Removing will remove the virtual directory and all under it (Recursively).",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		site: {
			description: [
				"The site name under which the virtual directory is created or exists.",
			]
			type:     "str"
			required: true
		}
		application: {
			description: [
				"The application under which the virtual directory is created or exists.",
			]
			type: "str"
		}
		physical_path: {
			description: [
				"The physical path to the folder in which the new virtual directory is created.",
				"The specified folder must already exist.",
			]
			type: "str"
		}
	}
	seealso: [{
		module: "win_iis_webapplication"
	}, {
		module: "win_iis_webapppool"
	}, {
		module: "win_iis_webbinding"
	}, {
		module: "win_iis_website"
	}]
	author: ["Henrik Wallström (@henrikwallstrom)"]
}
