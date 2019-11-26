package ansible

module: win_iis_webapplication: {
	module:            "win_iis_webapplication"
	version_added:     "2.0"
	short_description: "Configures IIS web applications"
	description: [
		"Creates, removes, and configures IIS web applications.",
	]
	options: {
		name: {
			description: [
				"Name of the web application.",
			]
			type:     "str"
			required: true
		}
		site: {
			description: [
				"Name of the site on which the application is created.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"State of the web application.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		physical_path: {
			description: [
				"The physical path on the remote host to use for the new application.",
				"The specified folder must already exist.",
			]
			type: "str"
		}
		application_pool: {
			description: [
				"The application pool in which the new site executes.",
				"If not specified, the application pool of the current website will be used.",
			]
			type: "str"
		}
		connect_as: {
			description: [
				"The type of authentication to use for this application. Either C(pass_through) or C(specific_user)",
				"If C(pass_through), IIS will use the identity of the user or application pool identity to access the file system or network.",
				"If C(specific_user), IIS will use the credentials provided in I(username) and I(password) to access the file system or network.",
			]
			type: "str"
			choices: ["pass_through", "specific_user"]
			version_added: "2.10"
		}
		username: {
			description: [
				"Specifies the user name of an account that can access configuration files and content for this application.",
				"Required when I(connect_as) is set to C(specific_user).",
			]
			type:          "str"
			version_added: "2.10"
		}
		password: {
			description: [
				"The password associated with I(username).",
				"Required when I(connect_as) is set to C(specific_user).",
			]
			type:          "str"
			version_added: "2.10"
		}
	}
	seealso: [{
		module: "win_iis_virtualdirectory"
	}, {
		module: "win_iis_webapppool"
	}, {
		module: "win_iis_webbinding"
	}, {
		module: "win_iis_website"
	}]
	author: ["Henrik Wallström (@henrikwallstrom)"]
}
