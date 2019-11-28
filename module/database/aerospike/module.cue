package aerospike

aerospike_migrations :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	aerospike_migrations: {

		// Check will return bad until cluster size is met or until tries is exhausted

		min_cluster_size?: int

		// Which port to connect to Aerospike on (service port)

		port?: int

		// How long to sleep between each check (seconds).

		sleep_between_checks?: int

		// When all aerospike builds in the cluster are greater than version 4.3, then the C(cluster-stable) info command will be used. Inside this command, you can optionally specify what the target cluster size is - but it is not necessary. You can still rely on min_cluster_size if you don't want to use this option.
		// If this option is specified on a cluster that has at least 1 host <4.3 then it will be ignored until the min version reaches 4.3.

		target_cluster_size?: int

		// How many times do we poll before giving up and failing?

		tries_limit?: int

		// How many times should the cluster report "no migrations" consecutively before returning OK back to ansible?

		consecutive_good_checks?: int

		// Which host do we use as seed for info connection

		host?: string

		// The metric key used to determine if we have rx migrations remaining. Changeable due to backwards compatibility.

		migrate_rx_key?: string

		// The metric key used to determine if we have tx migrations remaining. Changeable due to backwards compatibility.

		migrate_tx_key?: string

		// How long to try to connect before giving up (milliseconds)

		connect_timeout?: int

		// Fail if the cluster key changes if something else is changing the cluster, we may want to fail

		fail_on_cluster_change?: bool

		// Do you wish to only check for migrations on the local node before returning, or do you want all nodes in the cluster to finish before returning?

		local_only: bool
	}
}
