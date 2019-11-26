package ansible

module: win_iis_webbinding: {
	module:            "win_iis_webbinding"
	version_added:     "2.0"
	short_description: "Configures a IIS Web site binding"
	description: [
		"Creates, removes and configures a binding to an existing IIS Web site.",
	]
	options: {
		name: {
			description: [
				"Names of web site.",
			]
			type:     "str"
			required: true
			aliases: ["website"]
		}
		state: {
			description: [
				"State of the binding.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		port: {
			description: [
				"The port to bind to / use for the new site.",
			]
			type:    "str"
			default: 80
		}
		ip: {
			description: [
				"The IP address to bind to / use for the new site.",
			]
			type:    "str"
			default: "*"
		}
		host_header: {
			description: [
				"The host header to bind to / use for the new site.",
				"If you are creating/removing a catch-all binding, omit this parameter rather than defining it as '*'.",
			]
			type: "str"
		}
		protocol: {
			description: [
				"The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).",
			]
			type:    "str"
			default: "http"
		}
		certificate_hash: {
			description: [
				"Certificate hash (thumbprint) for the SSL binding. The certificate hash is the unique identifier for the certificate.",
			]
			type: "str"
		}
		certificate_store_name: {
			description: [
				"Name of the certificate store where the certificate for the binding is located.",
			]
			type:    "str"
			default: "my"
		}
		ssl_flags: {
			description: [
				"This parameter is only valid on Server 2012 and newer.",
				"Primarily used for enabling and disabling server name indication (SNI).",
				"Set to C(0) to disable SNI.",
				"Set to C(1) to enable SNI.",
			]
			type:          "str"
			version_added: "2.5"
		}
	}
	seealso: [{
		module: "win_iis_virtualdirectory"
	}, {
		module: "win_iis_webapplication"
	}, {
		module: "win_iis_webapppool"
	}, {
		module: "win_iis_website"
	}]
	author: [
		"Noah Sparks (@nwsparks)",
		"Henrik Wallström (@henrikwallstrom)",
	]
}
