package ansible

module: cnos_conditional_command: {
	module:            "cnos_conditional_command"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Execute a single command based on condition on devices running Lenovo CNOS"

	description: [
		"This module allows you to modify the running configuration of a switch. It provides a way to execute a single CNOS command on a network device by evaluating the current running configuration and executing the command only if the specific settings have not been already configured. The CNOS command is passed as an argument of the method. This module functions the same as the cnos_command module. The only exception is that following inventory variable can be specified [\"condition = <flag string>\"] When this inventory variable is specified as the variable of a task, the command is executed for the network element that matches the flag string. Usually, commands are executed across a group of network devices. When there is a requirement to skip the execution of the command on one or more devices, it is recommended to use this module. This module uses SSH to manage network device configuration.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: {
		clicommand: {
			description: [
				"This specifies the CLI command as an attribute to this method. The command is passed using double quotes. The variables can be placed directly on to the CLI commands or can be invoked from the vars directory.",
			]

			required: true
			default:  null
		}
		condition: {
			description: [
				"If you specify condition=false in the inventory file against any device, the command execution is skipped for that device.",
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
