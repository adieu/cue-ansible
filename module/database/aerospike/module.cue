package aerospike

aerospike_migrations :: {
	register?: string
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	name?:       string
	when?:       string
	tags?: [...string]
	with_items?: [...string]
	become?: bool
	aerospike_migrations: {
		host?:                    string
		min_cluster_size?:        int
		target_cluster_size?:     int
		tries_limit?:             int
		consecutive_good_checks?: int
		fail_on_cluster_change?:  bool
		local_only:               bool
		migrate_rx_key?:          string
		migrate_tx_key?:          string
		port?:                    int
		sleep_between_checks?:    int
		connect_timeout?:         int
	}
}
