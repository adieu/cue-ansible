package ansible

module: grafana_dashboard: {
	module: "grafana_dashboard"
	author: ["Thierry Sallé (@seuf)"]
	version_added:     "2.5"
	short_description: "Manage Grafana dashboards"
	description: ["Create, update, delete, export Grafana dashboards via API."]
	options: {
		url: {
			description: ["The Grafana URL."]
			required: true
			aliases: ["grafana_url"]
			version_added: 2.7
		}
		url_username: {
			description: ["The Grafana API user."]
			default: "admin"
			aliases: ["grafana_user"]
			version_added: 2.7
		}
		url_password: {
			description: ["The Grafana API password."]
			default: "admin"
			aliases: ["grafana_password"]
			version_added: 2.7
		}
		grafana_api_key: description: [
			"The Grafana API key.",
			"If set, I(grafana_user) and I(grafana_password) will be ignored.",
		]
		org_id: {
			description: [
				"The Grafana Organisation ID where the dashboard will be imported / exported.",
				"Not used when I(grafana_api_key) is set, because the grafana_api_key only belongs to one organisation..",
			]
			default: 1
		}
		folder: {
			description: ["The Grafana folder where this dashboard will be imported to."]
			default:       "General"
			version_added: "2.10"
		}
		state: {
			description: ["State of the dashboard."]
			required: true
			choices: ["absent", "export", "present"]
			default: "present"
		}
		slug: description: [
			"Deprecated since Grafana 5. Use grafana dashboard uid instead.",
			"slug of the dashboard. It's the friendly url name of the dashboard.",
			"When C(state) is C(present), this parameter can override the slug in the meta section of the json file.",
			"If you want to import a json dashboard exported directly from the interface (not from the api), you have to specify the slug parameter because there is no meta section in the exported json.",
		]

		uid: {
			version_added: 2.7
			description: ["uid of the dashboard to export when C(state) is C(export) or C(absent)."]
		}
		path: description: ["The path to the json file containing the Grafana dashboard to import or export."]
		overwrite: {
			description: ["Override existing dashboard when state is present."]
			type:    "bool"
			default: "no"
		}
		message: description: [
			"Set a commit message for the version history.",
			"Only used when C(state) is C(present).",
		]
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated.",
				"This should only be used on personally controlled sites using self-signed certificates.",
			]
			type:    "bool"
			default: "yes"
		}
		client_cert: {
			description: [
				"PEM formatted certificate chain file to be used for SSL client authentication.",
				"This file can also include the key as well, and if the key is included, client_key is not required",
			]
			version_added: 2.7
		}
		client_key: {
			description: [
				"PEM formatted file that contains your private key to be used for SSL client",
				"authentication. If client_cert contains both the certificate and key, this option is not required",
			]
			version_added: 2.7
		}
		use_proxy: {
			description: ["Boolean of whether or not to use proxy."]
			default:       "yes"
			type:          "bool"
			version_added: 2.7
		}
	}
}
