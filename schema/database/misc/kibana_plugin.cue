package ansible

module: kibana_plugin: {
	module:            "kibana_plugin"
	short_description: "Manage Kibana plugins"
	description: [
		"This module can be used to manage Kibana plugins.",
	]
	version_added: "2.2"
	author:        "Thierno IB. BARRY (@barryib)"
	options: {
		name: {
			description: [
				"Name of the plugin to install.",
			]
			required: true
		}
		state: {
			description: [
				"Desired state of a plugin.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		url: description: [
			"Set exact URL to download the plugin from.",
			"For local file, prefix its absolute path with file://",
		]
		timeout: {
			description: [
				"Timeout setting: 30s, 1m, 1h etc.",
			]
			default: "1m"
		}
		plugin_bin: {
			description: [
				"Location of the Kibana binary.",
			]
			default: "/opt/kibana/bin/kibana"
		}
		plugin_dir: {
			description: [
				"Your configured plugin directory specified in Kibana.",
			]
			default: "/opt/kibana/installedPlugins/"
		}
		version: description: [
			"Version of the plugin to be installed.",
			"If plugin exists with previous version, plugin will NOT be updated unless C(force) is set to yes.",
		]
		force: {
			description: [
				"Delete and re-install the plugin. Can be useful for plugins update.",
			]
			type:    "bool"
			default: "no"
		}
	}
}
