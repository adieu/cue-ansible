package ansible

module: jenkins_plugin: {
	module:            "jenkins_plugin"
	author:            "Jiri Tyr (@jtyr)"
	version_added:     "2.2"
	short_description: "Add or remove Jenkins plugin"
	description: [
		"Ansible module which helps to manage Jenkins plugins.",
	]

	options: {
		group: {
			description: [
				"Name of the Jenkins group on the OS.",
			]
			default: "jenkins"
		}
		jenkins_home: {
			description: [
				"Home directory of the Jenkins user.",
			]
			default: "/var/lib/jenkins"
		}
		mode: {
			description: [
				"File mode applied on versioned plugins.",
			]
			default: "0644"
		}
		name: {
			description: [
				"Plugin name.",
			]
			required: true
		}
		owner: {
			description: [
				"Name of the Jenkins user on the OS.",
			]
			default: "jenkins"
		}
		state: {
			description: [
				"Desired plugin state.",
				"If the C(latest) is set, the check for new version will be performed every time. This is suitable to keep the plugin up-to-date.",
			]

			choices: ["absent", "present", "pinned", "unpinned", "enabled", "disabled", "latest"]
			default: "present"
		}
		timeout: {
			description: [
				"Server connection timeout in secs.",
			]
			default: 30
		}
		updates_expiration: {
			description: [
				"Number of seconds after which a new copy of the I(update-center.json) file is downloaded. This is used to avoid the need to download the plugin to calculate its checksum when C(latest) is specified.",
				"Set it to C(0) if no cache file should be used. In that case, the plugin file will always be downloaded to calculate its checksum when C(latest) is specified.",
			]

			default: 86400
		}
		updates_url: {
			description: [
				"URL of the Update Centre.",
				"Used as the base URL to download the plugins and the I(update-center.json) JSON file.",
			]

			default: "https://updates.jenkins.io"
		}
		url: {
			description: [
				"URL of the Jenkins server.",
			]
			default: "http://localhost:8080"
		}
		version: description: [
			"Plugin version number.",
			"If this option is specified, all plugin dependencies must be installed manually.",
			"It might take longer to verify that the correct version is installed. This is especially true if a specific version number is specified.",
			"Quote the version to prevent the value to be interpreted as float. For example if C(1.20) would be unquoted, it would become C(1.2).",
		]

		with_dependencies: {
			description: [
				"Defines whether to install plugin dependencies.",
				"This option takes effect only if the I(version) is not defined.",
			]
			type:    "bool"
			default: true
		}
	}

	notes: [
		"Plugin installation should be run under root or the same user which owns the plugin files on the disk. Only if the plugin is not installed yet and no version is specified, the API installation is performed which requires only the Web UI credentials.",
		"It's necessary to notify the handler or call the I(service) module to restart the Jenkins service after a new plugin was installed.",
		"Pinning works only if the plugin is installed and Jenkins service was successfully restarted after the plugin installation.",
		"It is not possible to run the module remotely by changing the I(url) parameter to point to the Jenkins server. The module must be used on the host where Jenkins runs as it needs direct access to the plugin files.",
		"The C(params) option was removed in Ansible 2.5 due to circumventing Ansible's option handling",
	]

	extends_documentation_fragment: ["url"]
}
