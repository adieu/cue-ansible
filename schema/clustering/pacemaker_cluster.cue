package ansible

module: pacemaker_cluster: {
	module:            "pacemaker_cluster"
	short_description: "Manage pacemaker clusters"
	version_added:     "2.3"
	author: [
		"Mathieu Bultel (@matbu)",
	]
	description: [
		"This module can manage a pacemaker cluster and nodes from Ansible using the pacemaker cli.",
	]

	options: {
		state: {
			description: [
				"Indicate desired state of the cluster",
			]
			choices: ["cleanup", "offline", "online", "restart"]
			required: true
		}
		node: description: [
			"Specify which node of the cluster you want to manage. None == the cluster status itself, 'all' == check the status of all nodes.",
		]

		timeout: {
			description: [
				"Timeout when the module should considered that the action has failed",
			]
			default: 300
		}
		force: {
			description: [
				"Force the change of the cluster state",
			]
			type:    "bool"
			default: "yes"
		}
	}
}
