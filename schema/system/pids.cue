package ansible

module: pids: {
	module:            "pids"
	version_added:     2.8
	description:       "Retrieves a list of PIDs of given process name in Ansible controller/controlled machines.Returns an empty list if no process in that name exists."
	short_description: "Retrieves process IDs list if the process is running otherwise return empty list"
	author: [
		"Saranya Sridharan (@saranyasridharan)",
	]
	requirements: [
		"psutil(python module)",
	]
	options: name: {
		description: "the name of the process you want to get PID for."
		required:    true
		type:        "str"
	}
}
