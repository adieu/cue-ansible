package ansible

module: logstash_plugin: {
	module:            "logstash_plugin"
	short_description: "Manage Logstash plugins"
	description: [
		"Manages Logstash plugins.",
	]
	version_added: "2.3"
	author:        "Loic Blot (@nerzhul)"
	options: {
		name: {
			description: [
				"Install plugin with that name.",
			]
			required: true
		}
		state: {
			description: [
				"Apply plugin state.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		plugin_bin: {
			description: [
				"Specify logstash-plugin to use for plugin management.",
			]
			default: "/usr/share/logstash/bin/logstash-plugin"
		}
		proxy_host: description: [
			"Proxy host to use during plugin installation.",
		]
		proxy_port: description: [
			"Proxy port to use during plugin installation.",
		]
		version: description: [
			"Specify plugin Version of the plugin to install. If plugin exists with previous version, it will NOT be updated.",
		]
	}
}
