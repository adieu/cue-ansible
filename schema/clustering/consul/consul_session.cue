package ansible

module: consul_session: {
	module:            "consul_session"
	short_description: "Manipulate consul sessions"
	description: [
		"Allows the addition, modification and deletion of sessions in a consul cluster. These sessions can then be used in conjunction with key value pairs to implement distributed locks. In depth documentation for working with sessions can be found at http://www.consul.io/docs/internals/sessions.html",
	]

	requirements: [
		"python-consul",
		"requests",
	]
	version_added: "2.0"
	author: [
		"Steve Gargan (@sgargan)",
	]
	options: {
		id: {
			description: [
				"ID of the session, required when I(state) is either C(info) or C(remove).",
			]

			type: "str"
		}
		state: {
			description: [
				"Whether the session should be present i.e. created if it doesn't exist, or absent, removed if present. If created, the I(id) for the session is returned in the output. If C(absent), I(id) is required to remove the session. Info for a single session, all the sessions for a node or all available sessions can be retrieved by specifying C(info), C(node) or C(list) for the I(state); for C(node) or C(info), the node I(name) or session I(id) is required as parameter.",
			]

			choices: ["absent", "info", "list", "node", "present"]
			type:    "str"
			default: "present"
		}
		name: {
			description: [
				"The name that should be associated with the session. Required when I(state=node) is used.",
			]

			type: "str"
		}
		delay: {
			description: [
				"The optional lock delay that can be attached to the session when it is created. Locks for invalidated sessions ar blocked from being acquired until this delay has expired. Durations are in seconds.",
			]

			type:    "int"
			default: 15
		}
		node: {
			description: [
				"The name of the node that with which the session will be associated. by default this is the name of the agent.",
			]

			type: "str"
		}
		datacenter: {
			description: [
				"The name of the datacenter in which the session exists or should be created.",
			]

			type: "str"
		}
		checks: {
			description: [
				"Checks that will be used to verify the session health. If all the checks fail, the session will be invalidated and any locks associated with the session will be release and can be acquired once the associated lock delay has expired.",
			]

			type: "list"
		}
		host: {
			description: [
				"The host of the consul agent defaults to localhost.",
			]
			type:    "str"
			default: "localhost"
		}
		port: {
			description: [
				"The port on which the consul agent is running.",
			]
			type:    "int"
			default: 8500
		}
		scheme: {
			description: [
				"The protocol scheme on which the consul agent is running.",
			]
			type:          "str"
			default:       "http"
			version_added: "2.1"
		}
		validate_certs: {
			description: [
				"Whether to verify the TLS certificate of the consul agent.",
			]
			type:          "bool"
			default:       true
			version_added: "2.1"
		}
		behavior: {
			description: [
				"The optional behavior that can be attached to the session when it is created. This controls the behavior when a session is invalidated.",
			]

			choices: ["delete", "release"]
			type:          "str"
			default:       "release"
			version_added: "2.2"
		}
	}
}
