package ansible

module: docker_swarm_info: {
	module: "docker_swarm_info"

	short_description: "Retrieves facts about Docker Swarm cluster."

	description: [
		"Retrieves facts about a Docker Swarm.",
		"Returns lists of swarm objects names for the services - nodes, services, tasks.",
		"The output differs depending on API version available on docker host.",
		"Must be run on Swarm Manager node; otherwise module fails with error message. It does return boolean flags in on both error and success which indicate whether the docker daemon can be communicated with, whether it is in Swarm mode, and whether it is a Swarm Manager node.",
	]

	version_added: "2.8"

	author: [
		"Piotr Wojciechowski (@WojciechowskiPiotr)",
	]

	options: {
		nodes: {
			description: [
				"Whether to list swarm nodes.",
			]
			type:    "bool"
			default: false
		}
		nodes_filters: {
			description: [
				"A dictionary of filter values used for selecting nodes to list.",
				"For example, C(name: mynode).",
				"See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/node_ls/#filtering) for more information on possible filters.",
			]

			type: "dict"
		}
		services: {
			description: [
				"Whether to list swarm services.",
			]
			type:    "bool"
			default: false
		}
		services_filters: {
			description: [
				"A dictionary of filter values used for selecting services to list.",
				"For example, C(name: myservice).",
				"See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/service_ls/#filtering) for more information on possible filters.",
			]

			type: "dict"
		}
		tasks: {
			description: [
				"Whether to list containers.",
			]
			type:    "bool"
			default: false
		}
		tasks_filters: {
			description: [
				"A dictionary of filter values used for selecting tasks to list.",
				"For example, C(node: mynode-1).",
				"See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/service_ps/#filtering) for more information on possible filters.",
			]

			type: "dict"
		}
		unlock_key: {
			description: [
				"Whether to retrieve the swarm unlock key.",
			]
			type:    "bool"
			default: false
		}
		verbose_output: {
			description: [
				"When set to C(yes) and I(nodes), I(services) or I(tasks) is set to C(yes), then the module output will contain verbose information about objects matching the full output of API method.",
				"For details see the documentation of your version of Docker API at U(https://docs.docker.com/engine/api/).",
				"The verbose output in this module contains only subset of information returned by I(_info) module for each type of the objects.",
			]

			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.10.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"Docker API >= 1.24",
	]
}
