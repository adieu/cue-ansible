package ansible

module: consul_kv: {
	module:            "consul_kv"
	short_description: "Manipulate entries in the key/value store of a consul cluster"
	description: [
		"Allows the retrieval, addition, modification and deletion of key/value entries in a consul cluster via the agent. The entire contents of the record, including the indices, flags and session are returned as C(value).",
		"If the C(key) represents a prefix then note that when a value is removed, the existing value if any is returned as part of the results.",
		"See http://www.consul.io/docs/agent/http.html#kv for more details.",
	]
	requirements: [
		"python-consul",
		"requests",
	]
	version_added: "2.0"
	author: [
		"Steve Gargan (@sgargan)",
		"Colin Nolan (@colin-nolan)",
	]
	options: {
		state: {
			description: [
				"The action to take with the supplied key and value. If the state is 'present' and `value` is set, the key contents will be set to the value supplied and `changed` will be set to `true` only if the value was different to the current contents. If the state is 'present' and `value` is not set, the existing value associated to the key will be returned. The state 'absent' will remove the key/value pair, again 'changed' will be set to true only if the key actually existed prior to the removal. An attempt can be made to obtain or free the lock associated with a key/value pair with the states 'acquire' or 'release' respectively. a valid session must be supplied to make the attempt changed will be true if the attempt is successful, false otherwise.",
			]

			choices: ["absent", "acquire", "present", "release"]
			default: "present"
		}
		key: {
			description: [
				"The key at which the value should be stored.",
			]
			type:     "str"
			required: true
		}
		value: {
			description: [
				"The value should be associated with the given key, required if C(state) is C(present).",
			]

			type:     "str"
			required: true
		}
		recurse: {
			description: [
				"If the key represents a prefix, each entry with the prefix can be retrieved by setting this to C(yes).",
			]

			type:    "bool"
			default: "no"
		}
		retrieve: {
			description: [
				"If the I(state) is C(present) and I(value) is set, perform a read after setting the value and return this value.",
			]

			default: true
			type:    "bool"
		}
		session: {
			description: [
				"The session that should be used to acquire or release a lock associated with a key/value pair.",
			]

			type: "str"
		}
		token: {
			description: [
				"The token key identifying an ACL rule set that controls access to the key value pair",
			]

			type: "str"
		}
		cas: {
			description: [
				"Used when acquiring a lock with a session. If the C(cas) is C(0), then Consul will only put the key if it does not already exist. If the C(cas) value is non-zero, then the key is only set if the index matches the ModifyIndex of that key.",
			]

			type: "str"
		}
		flags: {
			description: [
				"Opaque positive integer value that can be passed when setting a value.",
			]
			type: "str"
		}
		host: {
			description: [
				"Host of the consul agent.",
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
				"Whether to verify the tls certificate of the consul agent.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.1"
		}
	}
}
