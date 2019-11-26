package ansible

module: aerospike_migrations: {
	module:            "aerospike_migrations"
	short_description: "Check or wait for migrations between nodes"
	description: [
		"This can be used to check for migrations in a cluster. This makes it easy to do a rolling upgrade/update on Aerospike nodes.",
		"If waiting for migrations is not desired, simply just poll until port 3000 if available or asinfo -v status returns ok",
	]

	version_added: 2.8
	author:        "Albert Autin (@Alb0t)"
	options: {
		host: {
			description: [
				"Which host do we use as seed for info connection",
			]
			required: false
			type:     "str"
			default:  "localhost"
		}
		port: {
			description: [
				"Which port to connect to Aerospike on (service port)",
			]
			required: false
			type:     "int"
			default:  3000
		}
		connect_timeout: {
			description: [
				"How long to try to connect before giving up (milliseconds)",
			]
			required: false
			type:     "int"
			default:  1000
		}
		consecutive_good_checks: {
			description: [
				"How many times should the cluster report \"no migrations\" consecutively before returning OK back to ansible?",
			]

			required: false
			type:     "int"
			default:  3
		}
		sleep_between_checks: {
			description: [
				"How long to sleep between each check (seconds).",
			]
			required: false
			type:     "int"
			default:  60
		}
		tries_limit: {
			description: [
				"How many times do we poll before giving up and failing?",
			]
			default:  300
			required: false
			type:     "int"
		}
		local_only: {
			description: [
				"Do you wish to only check for migrations on the local node before returning, or do you want all nodes in the cluster to finish before returning?",
			]

			required: true
			type:     "bool"
		}
		min_cluster_size: {
			description: [
				"Check will return bad until cluster size is met or until tries is exhausted",
			]

			required: false
			type:     "int"
			default:  1
		}
		fail_on_cluster_change: {
			description: [
				"Fail if the cluster key changes if something else is changing the cluster, we may want to fail",
			]

			required: false
			type:     "bool"
			default:  true
		}
		migrate_tx_key: {
			description: [
				"The metric key used to determine if we have tx migrations remaining. Changeable due to backwards compatibility.",
			]

			required: false
			type:     "str"
			default:  "migrate_tx_partitions_remaining"
		}
		migrate_rx_key: {
			description: [
				"The metric key used to determine if we have rx migrations remaining. Changeable due to backwards compatibility.",
			]

			required: false
			type:     "str"
			default:  "migrate_rx_partitions_remaining"
		}
		target_cluster_size: {
			description: [
				"When all aerospike builds in the cluster are greater than version 4.3, then the C(cluster-stable) info command will be used. Inside this command, you can optionally specify what the target cluster size is - but it is not necessary. You can still rely on min_cluster_size if you don't want to use this option.",
				"If this option is specified on a cluster that has at least 1 host <4.3 then it will be ignored until the min version reaches 4.3.",
			]

			required: false
			type:     "int"
		}
	}
}
