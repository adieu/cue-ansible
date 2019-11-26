package ansible

module: cnos_template: {
	module:            "cnos_template"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage switch configuration using templates on devices running Lenovo CNOS"
	description: [
		"This module allows you to work with the running configuration of a switch. It provides a way to execute a set of CNOS commands on a switch by evaluating the current running configuration and executing the commands only if the specific settings have not been already configured. The configuration source can be a set of commands or a template written in the Jinja2 templating language. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: commandfile: {
		description: [
			"This specifies the path to the CNOS command file which needs to be applied. This usually comes from the commands folder. Generally this file is the output of the variables applied on a template file. So this command is preceded by a template module. Note The command file must contain the Ansible keyword {{ inventory_hostname }} in its filename to ensure that the command file is unique for each switch and condition. If this is omitted, the command file will be overwritten during iteration. For example, commandfile=./commands/clos_leaf_bgp_{{ inventory_hostname }}_commands.txt",
		]

		required: true
		default:  null
	}
}
