package ansible

module: grafana_plugin: {
	module: "grafana_plugin"
	author: ["Thierry Sallé (@seuf)"]
	version_added:     "2.5"
	short_description: "Manage Grafana plugins via grafana-cli"
	description: [
		"Install and remove Grafana plugins.",
		"See U(https://grafana.com/docs/plugins/installation/) for upstream documentation.",
	]
	options: {
		name: {
			description: ["Name of the plugin."]
			required: true
		}
		version: description: [
			"Version of the plugin to install.",
			"Defaults to C(latest).",
		]
		grafana_plugins_dir: description: [
			"Directory where the Grafana plugin will be installed.",
			"If omitted, defaults to C(/var/lib/grafana/plugins).",
		]
		grafana_repo: description: [
			"URL to the Grafana plugin repository.",
			"If omitted, grafana-cli will use the default value: U(https://grafana.com/api/plugins).",
		]
		grafana_plugin_url: description: [
			"Full URL to the plugin zip file instead of downloading the file from U(https://grafana.com/api/plugins).",
			"Requires grafana 4.6.x or later.",
		]
		state: {
			description: ["Whether the plugin should be installed."]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
}
