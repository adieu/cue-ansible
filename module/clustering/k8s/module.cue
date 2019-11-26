package k8s

k8s :: {

	// Whether to append a hash to a resource name for immutability purposes
	// Applies only to ConfigMap and Secret resources
	// The parameter will be silently ignored for other resource kinds
	// The full definition of an object is needed to generate the hash - this means that deleting an object created with append_hash will only work if the same object is passed with state=absent (alternatively, just use state=absent with the name including the generated hash and append_hash=no)

	append_hash?: bool

	// C(apply) compares the desired resource definition with the previously supplied resource definition, ignoring properties that are automatically generated
	// C(apply) works better with Services than 'force=yes'
	// mutually exclusive with C(merge_type)

	apply?: bool

	// Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.
	// For example, Custom Resource Definitions typically aren't updatable by the usual strategic merge. You may want to use C(merge) if you see "strategic merge patch format is not supported"
	// See U(https://kubernetes.io/docs/tasks/run-application/update-api-object-kubectl-patch/#use-a-json-merge-patch-to-update-a-deployment)
	// Requires openshift >= 0.6.2
	// If more than one merge_type is given, the merge_types will be tried in order
	// If openshift >= 0.6.2, this defaults to C(['strategic-merge', 'merge']), which is ideal for using the same parameters on resource kinds that combine Custom Resources and built-in resources. For openshift < 0.6.2, the default is simply C(strategic-merge).
	// mutually exclusive with C(apply)

	merge_type?: [..._]

	// how (if at all) to validate the resource definition against the kubernetes schema. Requires the kubernetes-validate python module

	validate?: string

	// Whether to wait for certain resource kinds to end up in the desired state. By default the module exits once Kubernetes has received the request
	// Implemented for C(state=present) for C(Deployment), C(DaemonSet) and C(Pod), and for C(state=absent) for all resource kinds.
	// For resource kinds without an implementation, C(wait) returns immediately unless C(wait_condition) is set.

	wait?: bool

	// Specifies a custom condition on the status to wait for. Ignored if C(wait) is not set or is set to False.

	wait_condition?: string

	// Number of seconds to sleep between checks.

	wait_sleep?: string

	// How long in seconds to wait for the resource to end up in the desired state. Ignored if C(wait) is not set.

	wait_timeout?: string
}

k8s_auth :: {

	// When C(state) is set to I(absent), this specifies the token to revoke.

	api_key?: string

	// Path to a CA certificate file used to verify connection to the API server. The full certificate chain must be provided to avoid certificate validation errors.

	ca_cert?: string

	// Provide a URL for accessing the API server.

	host: string

	// Provide a password for authenticating with the API server.

	password?: string

	// If set to I(present) connect to the API server using the URL specified in C(host) and attempt to log in.
	// If set to I(absent) attempt to log out by revoking the authentication token specified in C(api_key).

	state?: string

	// Provide a username for authenticating with the API server.

	username?: string

	// Whether or not to verify the API server's SSL certificates.

	validate_certs?: bool
}

k8s_info :: {

	// Use to specify an object name.  Use in conjunction with I(api_version), I(kind) and I(namespace) to identify a specific object.

	name?: string

	// Use to specify an object namespace. Use in conjunction with I(api_version), I(kind), and I(name) to identify a specific object.

	namespace?: string

	// Use to specify the API version. in conjunction with I(kind), I(name), and I(namespace) to identify a specific object.

	api_version?: string

	// List of field selectors to use to filter results

	field_selectors?: string

	// Use to specify an object model. Use in conjunction with I(api_version), I(name), and I(namespace) to identify a specific object.

	kind: string

	// List of label selectors to use to filter results

	label_selectors?: string
}

k8s_scale :: {
}

k8s_service :: {

	// Use to specify a Service object namespace.

	namespace: string

	// A partial YAML definition of the Service object being created/updated. Here you can define Kubernetes Service Resource parameters not covered by this module's parameters.
	// NOTE: I(resource_definition) has lower priority than module parameters. If you try to define e.g. I(metadata.namespace) here, that value will be ignored and I(metadata) used instead.

	resource_definition?: {...}

	// Label selectors identify objects this Service should apply to.
	// U(https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)

	selector?: {...}

	// Determines if an object should be created, patched, or deleted. When set to C(present), an object will be created, if it does not already exist. If set to C(absent), an existing object will be deleted. If set to C(present), an existing object will be patched, if its attributes differ from those specified using module options and I(resource_definition).

	state?: string

	// Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.
	// For example, Custom Resource Definitions typically aren't updatable by the usual strategic merge. You may want to use C(merge) if you see "strategic merge patch format is not supported"
	// See U(https://kubernetes.io/docs/tasks/run-application/update-api-object-kubectl-patch/#use-a-json-merge-patch-to-update-a-deployment)
	// Requires openshift >= 0.6.2
	// If more than one merge_type is given, the merge_types will be tried in order
	// If openshift >= 0.6.2, this defaults to C(['strategic-merge', 'merge']), which is ideal for using the same parameters on resource kinds that combine Custom Resources and built-in resources. For openshift < 0.6.2, the default is simply C(strategic-merge).

	merge_type?: [..._]

	// Use to specify a Service object name.

	name: string

	// Specifies the type of Service to create.
	// See U(https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)

	type?: string

	// If set to C(True), and I(state) is C(present), an existing object will be replaced.

	force?: bool

	// A list of ports to expose.
	// U(https://kubernetes.io/docs/concepts/services-networking/service/#multi-port-services)

	ports?: [..._]
}

pacemaker_cluster :: {

	// Force the change of the cluster state

	force?: bool

	// Specify which node of the cluster you want to manage. None == the cluster status itself, 'all' == check the status of all nodes.

	node?: string

	// Indicate desired state of the cluster

	state: string

	// Timeout when the module should considered that the action has failed

	timeout?: string
}

znode :: {

	// The state to enforce. Mutually exclusive with op.

	state?: string

	// The amount of time to wait for a node to appear.

	timeout?: string

	// The value assigned to the znode.

	value?: string

	// A list of ZooKeeper servers (format '[server]:[port]').

	hosts: string

	// The path of the znode.

	name: string

	// An operation to perform. Mutually exclusive with state.

	op?: string

	// Recursively delete node and all its children.

	recursive?: bool
}

etcd3 :: {

	// PEM formatted certificate chain file to be used for SSL client authentication.
	// Required if I(client_key) is defined.

	client_cert?: string

	// the IP address of the cluster

	host?: string

	// The socket level timeout in seconds.

	timeout?: string

	// The etcd user to authenticate with.

	user?: string

	// the information stored

	value: string

	// The Certificate Authority to use to verify the etcd host.
	// Required if I(client_cert) and I(client_key) are defined.

	ca_cert?: string

	// PEM formatted file that contains your private key to be used for SSL client authentication.
	// Required if I(client_cert) is defined.

	client_key?: string

	// the key where the information is stored in the cluster

	key: string

	// The password to use for authentication.
	// Required if I(user) is defined.

	password?: string

	// the port number used to connect to the cluster

	port?: string

	// the state of the value for the key.
	// can be present or absent

	state: string
}
