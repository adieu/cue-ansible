package misc

elasticsearch_plugin :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	elasticsearch_plugin: {

		// Force batch mode when installing plugins. This is only necessary if a plugin requires additional permissions and console detection fails.

		force?: bool

		// Name of the plugin to install.

		name: string

		// Location of the plugin binary. If this file is not found, the default plugin binaries will be used.
		// The default changed in Ansible 2.4 to None.

		plugin_bin?: string

		// Your configured plugin directory specified in Elasticsearch

		plugin_dir?: string

		// Proxy host to use during plugin installation

		proxy_host?: string

		// Proxy port to use during plugin installation

		proxy_port?: string

		// Timeout setting: 30s, 1m, 1h...
		// Only valid for Elasticsearch < 5.0. This option is ignored for Elasticsearch > 5.0.

		timeout?: string

		// Set exact URL to download the plugin from (Only works for ES 1.x).
		// For ES 2.x and higher, use src.

		url?: string

		// Optionally set the source location to retrieve the plugin from. This can be a file:// URL to install from a local file, or a remote URL. If this is not set, the plugin location is just based on the name.
		// The name parameter must match the descriptor in the plugin ZIP specified.
		// Is only used if the state would change, which is solely checked based on the name parameter. If, for example, the plugin is already installed, changing this has no effect.
		// For ES 1.x use url.

		src?: string

		// Desired state of a plugin.

		state?: string

		// Version of the plugin to be installed. If plugin exists with previous version, it will NOT be updated

		version?: string
	}
}

kibana_plugin :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	kibana_plugin: {

		// Timeout setting: 30s, 1m, 1h etc.

		timeout?: string

		// Set exact URL to download the plugin from.
		// For local file, prefix its absolute path with file://

		url?: string

		// Version of the plugin to be installed.
		// If plugin exists with previous version, plugin will NOT be updated unless C(force) is set to yes.

		version?: string

		// Delete and re-install the plugin. Can be useful for plugins update.

		force?: bool

		// Name of the plugin to install.

		name: string

		// Location of the Kibana binary.

		plugin_bin?: string

		// Your configured plugin directory specified in Kibana.

		plugin_dir?: string

		// Desired state of a plugin.

		state?: string
	}
}

redis :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	redis: {

		// The password used to authenticate with (usually not used)

		login_password?: string

		// The port of the master instance [slave command]

		master_port?: string

		// A redis config value.

		value?: string

		// The selected redis command
		// C(config) (new in 1.6), ensures a configuration setting on an instance.
		// C(flush) flushes all the instance or a specified db.
		// C(slave) sets a redis instance in slave or master mode.

		command: string

		// Type of flush (all the dbs in a redis instance or a specific one) [flush command]

		flush_mode?: string

		// The host running the database

		login_host?: string

		// The port to connect to

		login_port?: string

		// The host of the master instance [slave command]

		master_host?: string

		// A redis config key.

		name?: string

		// the mode of the redis instance [slave command]

		slave_mode?: string

		// The database to flush (used in db mode) [flush command]

		db?: string
	}
}

riak :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	riak: {

		// The target node for certain operations (join, ping)

		target_node?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// Number of seconds to wait for handoffs to complete.

		wait_for_handoffs?: string

		// Number of seconds to wait for all nodes to agree on the ring.

		wait_for_ring?: string

		// Waits for a riak service to come online before continuing.

		wait_for_service?: string

		// The command you would like to perform against the cluster.

		command?: string

		// The path to the riak configuration directory

		config_dir?: string

		// The ip address and port that is listening for Riak HTTP queries

		http_conn?: string
	}
}
