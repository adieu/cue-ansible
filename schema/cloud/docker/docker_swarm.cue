package ansible

module: docker_swarm: {
	module:            "docker_swarm"
	short_description: "Manage Swarm cluster"
	version_added:     "2.7"
	description: [
		"Create a new Swarm cluster.",
		"Add/Remove nodes or managers to an existing cluster.",
	]
	options: {
		advertise_addr: {
			description: [
				"Externally reachable address advertised to other nodes.",
				"This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).",
				"If the port number is omitted, the port number from the listen address is used.",
				"If I(advertise_addr) is not specified, it will be automatically detected when possible.",
				"Only used when swarm is initialised or joined. Because of this it's not considered for idempotency checking.",
			]

			type: "str"
		}
		default_addr_pool: {
			description: [
				"Default address pool in CIDR format.",
				"Only used when swarm is initialised. Because of this it's not considered for idempotency checking.",
				"Requires API version >= 1.39.",
			]
			type:          "list"
			elements:      "str"
			version_added: "2.8"
		}
		subnet_size: {
			description: [
				"Default address pool subnet mask length.",
				"Only used when swarm is initialised. Because of this it's not considered for idempotency checking.",
				"Requires API version >= 1.39.",
			]
			type:          "int"
			version_added: "2.8"
		}
		listen_addr: {
			description: [
				"Listen address used for inter-manager communication.",
				"This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).",
				"If the port number is omitted, the default swarm listening port is used.",
				"Only used when swarm is initialised or joined. Because of this it's not considered for idempotency checking.",
			]

			type:    "str"
			default: "0.0.0.0:2377"
		}
		force: {
			description: [
				"Use with state C(present) to force creating a new Swarm, even if already part of one.",
				"Use with state C(absent) to Leave the swarm even if this node is a manager.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Set to C(present), to create/update a new cluster.",
				"Set to C(join), to join an existing cluster.",
				"Set to C(absent), to leave an existing cluster.",
				"Set to C(remove), to remove an absent node from the cluster. Note that removing requires Docker SDK for Python >= 2.4.0.",
				"Set to C(inspect) to display swarm informations.",
			]
			type:     "str"
			required: true
			default:  "present"
			choices: [
				"present",
				"join",
				"absent",
				"remove",
				"inspect",
			]
		}
		node_id: {
			description: [
				"Swarm id of the node to remove.",
				"Used with I(state=remove).",
			]
			type: "str"
		}
		join_token: {
			description: [
				"Swarm token used to join a swarm cluster.",
				"Used with I(state=join).",
			]
			type: "str"
		}
		remote_addrs: {
			description: [
				"Remote address of one or more manager nodes of an existing Swarm to connect to.",
				"Used with I(state=join).",
			]
			type:     "list"
			elements: "str"
		}
		task_history_retention_limit: {
			description: [
				"Maximum number of tasks history stored.",
				"Docker default value is C(5).",
			]
			type: "int"
		}
		snapshot_interval: {
			description: [
				"Number of logs entries between snapshot.",
				"Docker default value is C(10000).",
			]
			type: "int"
		}
		keep_old_snapshots: {
			description: [
				"Number of snapshots to keep beyond the current snapshot.",
				"Docker default value is C(0).",
			]
			type: "int"
		}
		log_entries_for_slow_followers: {
			description: [
				"Number of log entries to keep around to sync up slow followers after a snapshot is created.",
			]
			type: "int"
		}
		heartbeat_tick: {
			description: [
				"Amount of ticks (in seconds) between each heartbeat.",
				"Docker default value is C(1s).",
			]
			type: "int"
		}
		election_tick: {
			description: [
				"Amount of ticks (in seconds) needed without a leader to trigger a new election.",
				"Docker default value is C(10s).",
			]
			type: "int"
		}
		dispatcher_heartbeat_period: {
			description: [
				"The delay for an agent to send a heartbeat to the dispatcher.",
				"Docker default value is C(5s).",
			]
			type: "int"
		}
		node_cert_expiry: {
			description: [
				"Automatic expiry for nodes certificates.",
				"Docker default value is C(3months).",
			]
			type: "int"
		}
		name: {
			description: [
				"The name of the swarm.",
			]
			type: "str"
		}
		labels: {
			description: [
				"User-defined key/value metadata.",
				"Label operations in this module apply to the docker swarm cluster. Use M(docker_node) module to add/modify/remove swarm node labels.",
				"Requires API version >= 1.32.",
			]
			type: "dict"
		}
		signing_ca_cert: {
			description: [
				"The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.",
				"This must not be a path to a certificate, but the contents of the certificate.",
				"Requires API version >= 1.30.",
			]
			type: "str"
		}
		signing_ca_key: {
			description: [
				"The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.",
				"This must not be a path to a key, but the contents of the key.",
				"Requires API version >= 1.30.",
			]
			type: "str"
		}
		ca_force_rotate: {
			description: [
				"An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified.",
				"Docker default value is C(0).",
				"Requires API version >= 1.30.",
			]
			type: "int"
		}
		autolock_managers: {
			description: [
				"If set, generate a key and use it to lock data stored on the managers.",
				"Docker default value is C(no).",
				"M(docker_swarm_info) can be used to retrieve the unlock key.",
			]
			type: "bool"
		}
		rotate_worker_token: {
			description: "Rotate the worker join token."
			type:        "bool"
			default:     false
		}
		rotate_manager_token: {
			description: "Rotate the manager join token."
			type:        "bool"
			default:     false
		}
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]
	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.10.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"Docker API >= 1.25",
	]
	author: [
		"Thierry Bouvet (@tbouvet)",
		"Piotr Wojciechowski (@WojciechowskiPiotr)",
	]
}
