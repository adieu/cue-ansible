package ansible

module: win_rds_settings: {
	module:            "win_rds_settings"
	short_description: "Manage main settings of a Remote Desktop Gateway server"
	description: [
		"Configure general settings of a Remote Desktop Gateway server.",
	]
	version_added: "2.8"
	author: [
		"Kevin Subileau (@ksubileau)",
	]
	options: {
		certificate_hash: {
			description: [
				"Certificate hash (thumbprint) for the Remote Desktop Gateway server. The certificate hash is the unique identifier for the certificate.",
			]
			type: "str"
		}
		max_connections: {
			description: [
				"The maximum number of connections allowed.",
				"If set to C(0), no new connections are allowed.",
				"If set to C(-1), the number of connections is unlimited.",
			]
			type: "int"
		}
		ssl_bridging: {
			description: [
				"Specifies whether to use SSL Bridging.",
				"C(none): no SSL bridging.",
				"C(https_http): HTTPS-HTTP bridging.",
				"C(https_https): HTTPS-HTTPS bridging.",
			]
			type: "str"
			choices: ["https_http", "https_https", "none"]
		}
		enable_only_messaging_capable_clients: {
			description: [
				"If enabled, only clients that support logon messages and administrator messages can connect.",
			]
			type: "bool"
		}
	}
	requirements: [
		"Windows Server 2008R2 (6.1) or higher.",
		"The Windows Feature \"RDS-Gateway\" must be enabled.",
	]
	seealso: [{
		module: "win_rds_cap"
	}, {
		module: "win_rds_rap"
	}, {
		module: "win_rds_settings"
	}]
}
