package clustering

znode :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	znode: {

		// A list of ZooKeeper servers (format '[server]:[port]').

		hosts: string

		// The path of the znode.

		name: string

		// An operation to perform. Mutually exclusive with state.

		op?: string

		// Recursively delete node and all its children.

		recursive?: bool

		// The state to enforce. Mutually exclusive with op.

		state?: string

		// The amount of time to wait for a node to appear.

		timeout?: string

		// The value assigned to the znode.

		value?: string
	}
}

etcd3 :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	etcd3: {

		// The socket level timeout in seconds.

		timeout?: string

		// the port number used to connect to the cluster

		port?: string

		// the state of the value for the key.
		// can be present or absent

		state: string

		// The Certificate Authority to use to verify the etcd host.
		// Required if I(client_cert) and I(client_key) are defined.

		ca_cert?: string

		// PEM formatted certificate chain file to be used for SSL client authentication.
		// Required if I(client_key) is defined.

		client_cert?: string

		// PEM formatted file that contains your private key to be used for SSL client authentication.
		// Required if I(client_cert) is defined.

		client_key?: string

		// the IP address of the cluster

		host?: string

		// the key where the information is stored in the cluster

		key: string

		// The password to use for authentication.
		// Required if I(user) is defined.

		password?: string

		// The etcd user to authenticate with.

		user?: string

		// the information stored

		value: string
	}
}

pacemaker_cluster :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pacemaker_cluster: {

		// Force the change of the cluster state

		force?: bool

		// Specify which node of the cluster you want to manage. None == the cluster status itself, 'all' == check the status of all nodes.

		node?: string

		// Indicate desired state of the cluster

		state: string

		// Timeout when the module should considered that the action has failed

		timeout?: string
	}
}
