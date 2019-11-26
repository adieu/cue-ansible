package ansible

module: etcd3: {
	module:            "etcd3"
	short_description: "Set or delete key value pairs from an etcd3 cluster"
	version_added:     "2.5"
	requirements: [
		"etcd3",
	]
	description: [
		"Sets or deletes values in etcd3 cluster using its v3 api.",
		"Needs python etcd3 lib to work",
	]
	options: {
		key: {
			description: [
				"the key where the information is stored in the cluster",
			]
			required: true
		}
		value: {
			description: [
				"the information stored",
			]
			required: true
		}
		host: {
			description: [
				"the IP address of the cluster",
			]
			default: "localhost"
		}
		port: {
			description: [
				"the port number used to connect to the cluster",
			]
			default: 2379
		}
		state: {
			description: [
				"the state of the value for the key.",
				"can be present or absent",
			]
			required: true
		}
		user: {
			description: [
				"The etcd user to authenticate with.",
			]
			version_added: "2.8"
		}
		password: {
			description: [
				"The password to use for authentication.",
				"Required if I(user) is defined.",
			]
			version_added: "2.8"
		}
		ca_cert: {
			description: [
				"The Certificate Authority to use to verify the etcd host.",
				"Required if I(client_cert) and I(client_key) are defined.",
			]
			version_added: "2.8"
		}
		client_cert: {
			description: [
				"PEM formatted certificate chain file to be used for SSL client authentication.",
				"Required if I(client_key) is defined.",
			]
			version_added: "2.8"
		}
		client_key: {
			description: [
				"PEM formatted file that contains your private key to be used for SSL client authentication.",
				"Required if I(client_cert) is defined.",
			]
			version_added: "2.8"
		}
		timeout: {
			description: [
				"The socket level timeout in seconds.",
			]
			version_added: "2.8"
		}
	}
	author: [
		"Jean-Philippe Evrard (@evrardjp)",
		"Victor Fauth (@vfauth)",
	]
}
