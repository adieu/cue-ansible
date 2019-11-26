package proxysql

proxysql_global_variables :: {

	// Defines which variable should be returned, or if I(value) is specified which variable should be updated.

	variable: string

	// Defines a value the variable specified using I(variable) should be set to.

	value?: string
}

proxysql_manage_config :: {

	// The supplied I(action) combines with the supplied I(direction) to provide the semantics of how we want to move the I(config_settings) between the I(config_layers).

	action: string

	// RUNTIME - represents the in-memory data structures of ProxySQL used by the threads that are handling the requests. MEMORY - (sometimes also referred as main) represents the in-memory SQLite3 database. DISK - represents the on-disk SQLite3 database. CONFIG - is the classical config file. You can only LOAD FROM the config file.

	config_layer: string

	// The I(config_settings) specifies which configuration we're writing.

	config_settings: string

	// FROM - denotes we're reading values FROM the supplied I(config_layer) and writing to the next layer. TO - denotes we're reading from the previous layer and writing TO the supplied I(config_layer)."

	direction: string
}

proxysql_mysql_users :: {

	// If there is no matching rule for the queries sent by this user, the traffic it generates is sent to the specified hostgroup. If omitted the proxysql database default for I(use_ssl) is 0.

	default_hostgroup?: string

	// If I(frontend) is set to C(True), this (username, password) pair is used for authenticating to the mysqld servers against any hostgroup.

	frontend?: bool

	// The maximum number of connections ProxySQL will open to the backend for this user. If omitted the proxysql database default for I(max_connections) is 10000.

	max_connections?: string

	// Name of the user connecting to the mysqld or ProxySQL instance.

	username: string

	// A user with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures. If omitted the proxysql database default for I(active) is C(True).

	active?: bool

	// If I(backend) is set to C(True), this (username, password) pair is used for authenticating to the ProxySQL instance.

	backend?: bool

	// The schema to which the connection should change to by default.

	default_schema?: string

	// If I(fast_forward) is set to C(True), I(fast_forward) will bypass the query processing layer (rewriting, caching) and pass through the query directly as is to the backend server. If omitted the proxysql database default for I(fast_forward) is C(False).

	fast_forward?: bool

	// Password of the user connecting to the mysqld or ProxySQL instance.

	password?: string

	// When C(present) - adds the user, when C(absent) - removes the user.

	state?: string

	// If this is set for the user with which the MySQL client is connecting to ProxySQL (thus a "frontend" user), transactions started within a hostgroup will remain within that hostgroup regardless of any other rules. If omitted the proxysql database default for I(transaction_persistent) is C(False).

	transaction_persistent?: bool

	// If I(use_ssl) is set to C(True), connections by this user will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).

	use_ssl?: bool
}

proxysql_query_rules :: {

	// Query will be blocked, and the specified error_msg will be returned to the client.

	error_msg?: string

	// Used in combination with I(flagIN) and apply to create chains of rules. When set, I(flagOUT) signifies the I(flagIN) to be used in the next chain of rules.

	flagOUT?: string

	// By default we avoid deleting more than one schedule in a single batch, however if you need this behaviour and you're not concerned about the schedules deleted, you can set I(force_delete) to C(True).

	force_delete?: bool

	// This is the pattern with which to replace the matched pattern. Note that this is optional, and when omitted, the query processor will only cache, route, or set other parameters without rewriting.

	replace_pattern?: string

	// Used in combination with I(flagIN) and I(flagOUT) to create chains of rules. Setting apply to True signifies the last rule to be applied.

	apply?: bool

	// Route matched queries to this hostgroup. This happens unless there is a started transaction and the logged in user has I(transaction_persistent) set to C(True) (see M(proxysql_mysql_users)).

	destination_hostgroup?: string

	// The maximum number of times a query needs to be re-executed in case of detected failure during the execution of the query. If retries is not specified, the global variable mysql-query_retries_on_failure applies.

	retries?: string

	// When C(present) - adds the rule, when C(absent) - removes the rule.

	state?: string

	// Free form text field, usable for a descriptive comment of the query rule.

	comment?: string

	// Match queries with a specific digest, as returned by stats_mysql_query_digest.digest.

	digest?: string

	// The unique id of the rule. Rules are processed in rule_id order.

	rule_id?: string

	// A rule with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures.

	active?: bool

	// Match traffic from a specific source.

	client_addr?: string

	// Used in combination with I(flagOUT) and I(apply) to create chains of rules.

	flagIN?: string

	// Query will be logged.

	log?: bool

	// Regular expression that matches the query text. The dialect of regular expressions used is that of re2 - https://github.com/google/re2

	match_pattern?: string

	// If I(negate_match_pattern) is set to C(True), only queries not matching the query text will be considered as a match. This acts as a NOT operator in front of the regular expression matching against match_pattern.

	negate_match_pattern?: bool

	// Match incoming traffic on a specific local port.

	proxy_port?: string

	// Filtering criteria matching username.  If I(username) is non-NULL, a query will match only if the connection is made with the correct username.

	username?: string

	// The maximum timeout in milliseconds with which the matched or rewritten query should be executed. If a query run for longer than the specific threshold, the query is automatically killed. If timeout is not specified, the global variable mysql-default_query_timeout applies.

	timeout?: string

	// The number of milliseconds for which to cache the result of the query. Note in ProxySQL 1.1 I(cache_ttl) was in seconds.

	cache_ttl?: string

	// Number of milliseconds to delay the execution of the query. This is essentially a throttling mechanism and QoS, and allows a way to give priority to queries over others. This value is added to the mysql-default_query_delay global variable that applies to all queries.

	delay?: string

	// Regular expression that matches the query digest. The dialect of regular expressions used is that of re2 - https://github.com/google/re2

	match_digest?: string

	// Enables query mirroring. If set I(mirror_flagOUT) can be used to evaluates the mirrored query against the specified chain of rules.

	mirror_flagOUT?: string

	// Enables query mirroring. If set I(mirror_hostgroup) can be used to mirror queries to the same or different hostgroup.

	mirror_hostgroup?: string

	// Match incoming traffic on a specific local IP.

	proxy_addr?: string

	// Filtering criteria matching schemaname. If I(schemaname) is non-NULL, a query will match only if the connection uses schemaname as its default schema.

	schemaname?: string
}

proxysql_replication_hostgroups :: {

	// Id of the reader hostgroup.

	reader_hostgroup: string

	// When C(present) - adds the replication hostgroup, when C(absent) - removes the replication hostgroup.

	state?: string

	// Id of the writer hostgroup.

	writer_hostgroup: string

	// Text field that can be used for any purposes defined by the user.

	comment?: string
}

proxysql_scheduler :: {

	// Argument that can be passed to the job.

	arg2?: string

	// Full path of the executable to be executed.

	filename: string

	// How often (in millisecond) the job will be started. The minimum value for I(interval_ms) is 100 milliseconds.

	interval_ms?: string

	// When C(present) - adds the schedule, when C(absent) - removes the schedule.

	state?: string

	// A schedule with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures.

	active?: bool

	// Argument that can be passed to the job.

	arg1?: string

	// Argument that can be passed to the job.

	arg3?: string

	// Argument that can be passed to the job.

	arg4?: string

	// Argument that can be passed to the job.

	arg5?: string

	// Text field that can be used for any purposed defined by the user.

	comment?: string

	// By default we avoid deleting more than one schedule in a single batch, however if you need this behaviour and you're not concerned about the schedules deleted, you can set I(force_delete) to C(True).

	force_delete?: bool
}

proxysql_backend_servers :: {

	// If the value of I(compression) is greater than 0, new connections to that server will use compression. If omitted the proxysql database default for I(compression) is 0.

	compression?: string

	// The ip address at which the mysqld instance can be contacted.

	hostname: string

	// The maximum number of connections ProxySQL will open to this backend server. If omitted the proxysql database default for I(max_connections) is 1000.

	max_connections?: string

	// Ping time is monitored regularly. If a host has a ping time greater than I(max_latency_ms) it is excluded from the connection pool (although the server stays ONLINE). If omitted the proxysql database default for I(max_latency_ms) is 0.

	max_latency_ms?: string

	// The port at which the mysqld instance can be contacted.

	port?: string

	// If I(use_ssl) is set to C(True), connections to this server will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).

	use_ssl?: bool

	// Text field that can be used for any purposed defined by the user. Could be a description of what the host stores, a reminder of when the host was added or disabled, or a JSON processed by some checker script.

	comment?: string

	// The hostgroup in which this mysqld instance is included. An instance can be part of one or more hostgroups.

	hostgroup_id?: string

	// If greater than 0, ProxySQL will regularly monitor replication lag. If replication lag goes above I(max_replication_lag), proxysql will temporarily shun the server until replication catches up. If omitted the proxysql database default for I(max_replication_lag) is 0.

	max_replication_lag?: string

	// When C(present) - adds the host, when C(absent) - removes the host.

	state?: string

	// ONLINE - Backend server is fully operational. OFFLINE_SOFT - When a server is put into C(OFFLINE_SOFT) mode, connections are kept in use until the current transaction is completed. This allows to gracefully detach a backend. OFFLINE_HARD - When a server is put into C(OFFLINE_HARD) mode, the existing connections are dropped, while new incoming connections aren't accepted either.
If omitted the proxysql database default for I(status) is C(ONLINE).

	status?: string

	// The bigger the weight of a server relative to other weights, the higher the probability of the server being chosen from the hostgroup. If omitted the proxysql database default for I(weight) is 1.

	weight?: string
}
