package ansible

module: elasticsearch_plugin: {
	module:            "elasticsearch_plugin"
	short_description: "Manage Elasticsearch plugins"
	description: [
		"Manages Elasticsearch plugins.",
	]
	version_added: "2.0"
	author: [
		"Mathew Davies (@ThePixelDeveloper)",
		"Sam Doran (@samdoran)",
	]
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
		src: {
			description: [
				"Optionally set the source location to retrieve the plugin from. This can be a file:// URL to install from a local file, or a remote URL. If this is not set, the plugin location is just based on the name.",
				"The name parameter must match the descriptor in the plugin ZIP specified.",
				"Is only used if the state would change, which is solely checked based on the name parameter. If, for example, the plugin is already installed, changing this has no effect.",
				"For ES 1.x use url.",
			]
			required:      false
			version_added: "2.7"
		}
		url: {
			description: [
				"Set exact URL to download the plugin from (Only works for ES 1.x).",
				"For ES 2.x and higher, use src.",
			]
			required: false
		}
		timeout: {
			description: [
				"Timeout setting: 30s, 1m, 1h...",
				"Only valid for Elasticsearch < 5.0. This option is ignored for Elasticsearch > 5.0.",
			]
			default: "1m"
		}
		force: {
			description: [
				"Force batch mode when installing plugins. This is only necessary if a plugin requires additional permissions and console detection fails.",
			]
			default:       false
			type:          "bool"
			version_added: "2.7"
		}
		plugin_bin: description: [
			"Location of the plugin binary. If this file is not found, the default plugin binaries will be used.",
			"The default changed in Ansible 2.4 to None.",
		]
		plugin_dir: {
			description: [
				"Your configured plugin directory specified in Elasticsearch",
			]
			default: "/usr/share/elasticsearch/plugins/"
		}
		proxy_host: {
			description: [
				"Proxy host to use during plugin installation",
			]
			version_added: "2.1"
		}
		proxy_port: {
			description: [
				"Proxy port to use during plugin installation",
			]
			version_added: "2.1"
		}
		version: description: [
			"Version of the plugin to be installed. If plugin exists with previous version, it will NOT be updated",
		]
	}
}
