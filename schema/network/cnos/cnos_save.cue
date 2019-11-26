package ansible

module: cnos_save: {
	module:            "cnos_save"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Save the running configuration as the startup configuration on devices running Lenovo CNOS"

	description: [
		"This module allows you to copy the running configuration of a switch over its startup configuration. It is recommended to use this module shortly after any major configuration changes so they persist after a switch restart. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: {}
}
