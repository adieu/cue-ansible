package ansible

module: bigip_config: {
	module:            "bigip_config"
	short_description: "Manage BIG-IP configuration sections"
	description: [
		"Manages a BIG-IP configuration by allowing TMSH commands that modify running configuration, or merge SCF formatted files into the running configuration. Additionally, this module is of significant importance because it allows you to save your running configuration to disk. Since the F5 module only manipulate running configuration, it is important that you utilize this module to save that running config.",
	]

	version_added: 2.4
	options: {
		save: {
			description: [
				"The C(save) argument instructs the module to save the running-config to startup-config.",
				"This operation is performed after any changes are made to the current running config. If no changes are made, the configuration is still saved to the startup config.",
				"This option will always cause the module to return changed.",
			]
			type:    "bool"
			default: true
		}
		reset: {
			description: [
				"Loads the default configuration on the device.",
				"If this option is specified, the default configuration will be loaded before any commands or other provided configuration is run.",
			]

			type:    "bool"
			default: false
		}
		merge_content: {
			description: [
				"Loads the specified configuration that you want to merge into the running configuration. This is equivalent to using the C(tmsh) command C(load sys config from-terminal merge).",
				"If you need to read configuration from a file or template, use Ansible's C(file) or C(template) lookup plugins respectively.",
			]

			type: "str"
		}
		verify: {
			description: [
				"Validates the specified configuration to see whether they are valid to replace the running configuration.",
				"The running configuration will not be changed.",
				"When this parameter is set to C(yes), no change will be reported by the module.",
			]

			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
