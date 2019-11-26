package ansible

module: cnos_conditional_template: {
	module:            "cnos_conditional_template"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage switch configuration using templates based on condition on devices running Lenovo CNOS"

	description: [
		"This module allows you to work with the running configuration of a switch. It provides a way to execute a set of CNOS commands on a switch by evaluating the current running configuration and executing the commands only if the specific settings have not been already configured. The configuration source can be a set of commands or a template written in the Jinja2 templating language. This module functions the same as the cnos_template module. The only exception is that the following inventory variable can be specified. [\"condition = <flag string>\"] When this inventory variable is specified as the variable of a task, the template is executed for the network element that matches the flag string. Usually, templates are used when commands are the same across a group of network devices. When there is a requirement to skip the execution of the template on one or more devices, it is recommended to use this module. This module uses SSH to manage network device configuration.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: {
		commandfile: {
			description: [
				"This specifies the path to the CNOS command file which needs to be applied. This usually comes from the commands folder. Generally this file is the output of the variables applied on a template file. So this command is preceded by a template module. The command file must contain the Ansible keyword {{ inventory_hostname }} and the condition flag in its filename to ensure that the command file is unique for each switch and condition. If this is omitted, the command file will be overwritten during iteration. For example, commandfile=./commands/clos_leaf_bgp_ {{ inventory_hostname }}_LP21_commands.txt",
			]

			required: true
			default:  null
		}
		condition: {
			description: [
				"If you specify condition=<flag string> in the inventory file against any device, the template execution is done for that device in case it matches the flag setting for that task.",
			]

			required: true
			default:  null
		}
		flag: {
			description: [
				"If a task needs to be executed, you have to set the flag the same as it is specified in the inventory for that device.",
			]

			required: true
			default:  null
		}
	}
}
