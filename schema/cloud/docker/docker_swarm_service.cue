package ansible

module: docker_swarm_service: {
	module: "docker_swarm_service"
	author: [
		"Dario Zanzico (@dariko)",
		"Jason Witkowski (@jwitko)",
		"Hannes Ljungberg (@hannseman)",
	]
	short_description: "docker swarm service"
	description: [
		"Manages docker services via a swarm manager node.",
	]
	version_added: "2.7"
	options: {
		args: {
			description: [
				"List arguments to be passed to the container.",
				"Corresponds to the C(ARG) parameter of C(docker service create).",
			]
			type:     "list"
			elements: "str"
		}
		command: {
			description: [
				"Command to execute when the container starts.",
				"A command may be either a string or a list or a list of strings.",
				"Corresponds to the C(COMMAND) parameter of C(docker service create).",
			]
			type:          "raw"
			version_added: 2.8
		}
		configs: {
			description: [
				"List of dictionaries describing the service configs.",
				"Corresponds to the C(--config) option of C(docker service create).",
				"Requires API version >= 1.30.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				config_id: {
					description: [
						"Config's ID.",
					]
					type: "str"
				}
				config_name: {
					description: [
						"Config's name as defined at its creation.",
					]
					type:     "str"
					required: true
				}
				filename: {
					description: [
						"Name of the file containing the config. Defaults to the I(config_name) if not specified.",
					]
					type:     "str"
					required: true
				}
				uid: {
					description: [
						"UID of the config file's owner.",
					]
					type: "str"
				}
				gid: {
					description: [
						"GID of the config file's group.",
					]
					type: "str"
				}
				mode: {
					description: [
						"File access mode inside the container. Must be an octal number (like C(0644) or C(0444)).",
					]
					type: "int"
				}
			}
		}
		constraints: {
			description: [
				"List of the service constraints.",
				"Corresponds to the C(--constraint) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(placement.constraints) instead.",
			]
			type:     "list"
			elements: "str"
		}
		container_labels: {
			description: [
				"Dictionary of key value pairs.",
				"Corresponds to the C(--container-label) option of C(docker service create).",
			]
			type: "dict"
		}
		dns: {
			description: [
				"List of custom DNS servers.",
				"Corresponds to the C(--dns) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:     "list"
			elements: "str"
		}
		dns_search: {
			description: [
				"List of custom DNS search domains.",
				"Corresponds to the C(--dns-search) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:     "list"
			elements: "str"
		}
		dns_options: {
			description: [
				"List of custom DNS options.",
				"Corresponds to the C(--dns-option) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:     "list"
			elements: "str"
		}
		endpoint_mode: {
			description: [
				"Service endpoint mode.",
				"Corresponds to the C(--endpoint-mode) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type: "str"
			choices: [
				"vip",
				"dnsrr",
			]
		}
		env: {
			description: [
				"List or dictionary of the service environment variables.",
				"If passed a list each items need to be in the format of C(KEY=VALUE).",
				"If passed a dictionary values which might be parsed as numbers, booleans or other types by the YAML parser must be quoted (e.g. C(\"true\")) in order to avoid data loss.",
				"Corresponds to the C(--env) option of C(docker service create).",
			]
			type: "raw"
		}
		env_files: {
			description: [
				"List of paths to files, present on the target, containing environment variables C(FOO=BAR).",
				"The order of the list is significant in determining the value assigned to a variable that shows up more than once.",
				"If variable also present in I(env), then I(env) value will override.",
			]
			type:          "list"
			elements:      "path"
			version_added: "2.8"
		}
		force_update: {
			description: [
				"Force update even if no changes require it.",
				"Corresponds to the C(--force) option of C(docker service update).",
				"Requires API version >= 1.25.",
			]
			type:    "bool"
			default: false
		}
		groups: {
			description: [
				"List of additional group names and/or IDs that the container process will run as.",
				"Corresponds to the C(--group) option of C(docker service update).",
				"Requires API version >= 1.25.",
			]
			type:          "list"
			elements:      "str"
			version_added: "2.8"
		}
		healthcheck: {
			description: [
				"Configure a check that is run to determine whether or not containers for this service are \"healthy\". See the docs for the L(HEALTHCHECK Dockerfile instruction,https://docs.docker.com/engine/reference/builder/#healthcheck) for details on how healthchecks work.",
				"I(interval), I(timeout) and I(start_period) are specified as durations. They accept duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Requires API version >= 1.25.",
			]
			type: "dict"
			suboptions: {
				test: {
					description: [
						"Command to run to check health.",
						"Must be either a string or a list. If it is a list, the first item must be one of C(NONE), C(CMD) or C(CMD-SHELL).",
					]
					type: "raw"
				}
				interval: {
					description: [
						"Time between running the check.",
					]
					type: "str"
				}
				timeout: {
					description: [
						"Maximum time to allow one check to run.",
					]
					type: "str"
				}
				retries: {
					description: [
						"Consecutive failures needed to report unhealthy. It accept integer value.",
					]
					type: "int"
				}
				start_period: {
					description: [
						"Start period for the container to initialize before starting health-retries countdown.",
					]
					type: "str"
				}
			}
			version_added: "2.8"
		}
		hostname: {
			description: [
				"Container hostname.",
				"Corresponds to the C(--hostname) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type: "str"
		}
		hosts: {
			description: [
				"Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's /etc/hosts file.",
				"Corresponds to the C(--host) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:          "dict"
			version_added: "2.8"
		}
		image: {
			description: [
				"Service image path and tag.",
				"Corresponds to the C(IMAGE) parameter of C(docker service create).",
			]
			type:     "str"
			required: true
		}
		labels: {
			description: [
				"Dictionary of key value pairs.",
				"Corresponds to the C(--label) option of C(docker service create).",
			]
			type: "dict"
		}
		limits: {
			description: [
				"Configures service resource limits.",
			]
			suboptions: {
				cpus: {
					description: [
						"Service CPU limit. C(0) equals no limit.",
						"Corresponds to the C(--limit-cpu) option of C(docker service create).",
					]
					type: "float"
				}
				memory: {
					description: [
						"Service memory reservation in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"C(0) equals no reservation.",
						"Omitting the unit defaults to bytes.",
						"Corresponds to the C(--reserve-memory) option of C(docker service create).",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		limit_cpu: {
			description: [
				"Service CPU limit. C(0) equals no limit.",
				"Corresponds to the C(--limit-cpu) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(limits.cpus) instead.",
			]
			type: "float"
		}
		limit_memory: {
			description: [
				"Service memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"C(0) equals no limit.",
				"Omitting the unit defaults to bytes.",
				"Corresponds to the C(--limit-memory) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(limits.memory) instead.",
			]
			type: "str"
		}
		logging: {
			description: [
				"Logging configuration for the service.",
			]
			suboptions: {
				driver: {
					description: [
						"Configure the logging driver for a service.",
						"Corresponds to the C(--log-driver) option of C(docker service create).",
					]
					type: "str"
				}
				options: {
					description: [
						"Options for service logging driver.",
						"Corresponds to the C(--log-opt) option of C(docker service create).",
					]
					type: "dict"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		log_driver: {
			description: [
				"Configure the logging driver for a service.",
				"Corresponds to the C(--log-driver) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(logging.driver) instead.",
			]
			type: "str"
		}
		log_driver_options: {
			description: [
				"Options for service logging driver.",
				"Corresponds to the C(--log-opt) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(logging.options) instead.",
			]
			type: "dict"
		}
		mode: {
			description: [
				"Service replication mode.",
				"Service will be removed and recreated when changed.",
				"Corresponds to the C(--mode) option of C(docker service create).",
			]
			type:    "str"
			default: "replicated"
			choices: [
				"replicated",
				"global",
			]
		}
		mounts: {
			description: [
				"List of dictionaries describing the service mounts.",
				"Corresponds to the C(--mount) option of C(docker service create).",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				source: {
					description: [
						"Mount source (e.g. a volume name or a host path).",
						"Must be specified if I(type) is not C(tmpfs).",
					]
					type: "str"
				}
				target: {
					description: [
						"Container path.",
					]
					type:     "str"
					required: true
				}
				type: {
					description: [
						"The mount type.",
						"Note that C(npipe) is only supported by Docker for Windows. Also note that C(npipe) was added in Ansible 2.9.",
					]
					type:    "str"
					default: "bind"
					choices: [
						"bind",
						"volume",
						"tmpfs",
						"npipe",
					]
				}
				readonly: {
					description: [
						"Whether the mount should be read-only.",
					]
					type: "bool"
				}
				labels: {
					description: [
						"Volume labels to apply.",
					]
					type:          "dict"
					version_added: "2.8"
				}
				propagation: {
					description: [
						"The propagation mode to use.",
						"Can only be used when I(mode) is C(bind).",
					]
					type: "str"
					choices: [
						"shared",
						"slave",
						"private",
						"rshared",
						"rslave",
						"rprivate",
					]
					version_added: "2.8"
				}
				no_copy: {
					description: [
						"Disable copying of data from a container when a volume is created.",
						"Can only be used when I(mode) is C(volume).",
					]
					type:          "bool"
					version_added: "2.8"
				}
				driver_config: {
					description: [
						"Volume driver configuration.",
						"Can only be used when I(mode) is C(volume).",
					]
					suboptions: {
						name: {
							description: [
								"Name of the volume-driver plugin to use for the volume.",
							]
							type: "str"
						}
						options: {
							description: [
								"Options as key-value pairs to pass to the driver for this volume.",
							]
							type: "dict"
						}
					}
					type:          "dict"
					version_added: "2.8"
				}
				tmpfs_size: {
					description: [
						"Size of the tmpfs mount in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"Can only be used when I(mode) is C(tmpfs).",
					]
					type:          "str"
					version_added: "2.8"
				}
				tmpfs_mode: {
					description: [
						"File mode of the tmpfs in octal.",
						"Can only be used when I(mode) is C(tmpfs).",
					]
					type:          "int"
					version_added: "2.8"
				}
			}
		}
		name: {
			description: [
				"Service name.",
				"Corresponds to the C(--name) option of C(docker service create).",
			]
			type:     "str"
			required: true
		}
		networks: {
			description: [
				"List of the service networks names or dictionaries.",
				"When passed dictionaries valid sub-options are I(name), which is required, and I(aliases) and I(options).",
				"Prior to API version 1.29, updating and removing networks is not supported. If changes are made the service will then be removed and recreated.",
				"Corresponds to the C(--network) option of C(docker service create).",
			]
			type:     "list"
			elements: "raw"
		}
		placement: {
			description: [
				"Configures service placement preferences and constraints.",
			]
			suboptions: {
				constraints: {
					description: [
						"List of the service constraints.",
						"Corresponds to the C(--constraint) option of C(docker service create).",
					]
					type:     "list"
					elements: "str"
				}
				preferences: {
					description: [
						"List of the placement preferences as key value pairs.",
						"Corresponds to the C(--placement-pref) option of C(docker service create).",
						"Requires API version >= 1.27.",
					]
					type:     "list"
					elements: "dict"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		publish: {
			description: [
				"List of dictionaries describing the service published ports.",
				"Corresponds to the C(--publish) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				published_port: {
					description: [
						"The port to make externally available.",
					]
					type:     "int"
					required: true
				}
				target_port: {
					description: [
						"The port inside the container to expose.",
					]
					type:     "int"
					required: true
				}
				protocol: {
					description: [
						"What protocol to use.",
					]
					type:    "str"
					default: "tcp"
					choices: [
						"tcp",
						"udp",
					]
				}
				mode: {
					description: [
						"What publish mode to use.",
						"Requires API version >= 1.32.",
					]
					type: "str"
					choices: [
						"ingress",
						"host",
					]
				}
			}
		}
		read_only: {
			description: [
				"Mount the containers root filesystem as read only.",
				"Corresponds to the C(--read-only) option of C(docker service create).",
			]
			type:          "bool"
			version_added: "2.8"
		}
		replicas: {
			description: [
				"Number of containers instantiated in the service. Valid only if I(mode) is C(replicated).",
				"If set to C(-1), and service is not present, service replicas will be set to C(1).",
				"If set to C(-1), and service is present, service replicas will be unchanged.",
				"Corresponds to the C(--replicas) option of C(docker service create).",
			]
			type:    "int"
			default: -1
		}
		reservations: {
			description: [
				"Configures service resource reservations.",
			]
			suboptions: {
				cpus: {
					description: [
						"Service CPU reservation. C(0) equals no reservation.",
						"Corresponds to the C(--reserve-cpu) option of C(docker service create).",
					]
					type: "float"
				}
				memory: {
					description: [
						"Service memory reservation in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"C(0) equals no reservation.",
						"Omitting the unit defaults to bytes.",
						"Corresponds to the C(--reserve-memory) option of C(docker service create).",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		reserve_cpu: {
			description: [
				"Service CPU reservation. C(0) equals no reservation.",
				"Corresponds to the C(--reserve-cpu) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(reservations.cpus) instead.",
			]
			type: "float"
		}
		reserve_memory: {
			description: [
				"Service memory reservation in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"C(0) equals no reservation.",
				"Omitting the unit defaults to bytes.",
				"Corresponds to the C(--reserve-memory) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(reservations.memory) instead.",
			]
			type: "str"
		}
		resolve_image: {
			description: [
				"If the current image digest should be resolved from registry and updated if changed.",
				"Requires API version >= 1.30.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
		restart_config: {
			description: [
				"Configures if and how to restart containers when they exit.",
			]
			suboptions: {
				condition: {
					description: [
						"Restart condition of the service.",
						"Corresponds to the C(--restart-condition) option of C(docker service create).",
					]
					type: "str"
					choices: [
						"none",
						"on-failure",
						"any",
					]
				}
				delay: {
					description: [
						"Delay between restarts.",
						"Accepts a a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--restart-delay) option of C(docker service create).",
					]
					type: "str"
				}
				max_attempts: {
					description: [
						"Maximum number of service restarts.",
						"Corresponds to the C(--restart-condition) option of C(docker service create).",
					]
					type: "int"
				}
				window: {
					description: [
						"Restart policy evaluation window.",
						"Accepts a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--restart-window) option of C(docker service create).",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		restart_policy: {
			description: [
				"Restart condition of the service.",
				"Corresponds to the C(--restart-condition) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.condition) instead.",
			]
			type: "str"
			choices: [
				"none",
				"on-failure",
				"any",
			]
		}
		restart_policy_attempts: {
			description: [
				"Maximum number of service restarts.",
				"Corresponds to the C(--restart-condition) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.max_attempts) instead.",
			]
			type: "int"
		}
		restart_policy_delay: {
			description: [
				"Delay between restarts.",
				"Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Corresponds to the C(--restart-delay) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.delay) instead.",
			]
			type: "raw"
		}
		restart_policy_window: {
			description: [
				"Restart policy evaluation window.",
				"Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Corresponds to the C(--restart-window) option of C(docker service create).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.window) instead.",
			]
			type: "raw"
		}
		rollback_config: {
			description: [
				"Configures how the service should be rolled back in case of a failing update.",
			]
			suboptions: {
				parallelism: {
					description: [
						"The number of containers to rollback at a time. If set to 0, all containers rollback simultaneously.",
						"Corresponds to the C(--rollback-parallelism) option of C(docker service create).",
						"Requires API version >= 1.28.",
					]
					type: "int"
				}
				delay: {
					description: [
						"Delay between task rollbacks.",
						"Accepts a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--rollback-delay) option of C(docker service create).",
						"Requires API version >= 1.28.",
					]
					type: "str"
				}
				failure_action: {
					description: [
						"Action to take in case of rollback failure.",
						"Corresponds to the C(--rollback-failure-action) option of C(docker service create).",
						"Requires API version >= 1.28.",
					]
					type: "str"
					choices: [
						"continue",
						"pause",
					]
				}
				monitor: {
					description: [
						"Duration after each task rollback to monitor for failure.",
						"Accepts a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--rollback-monitor) option of C(docker service create).",
						"Requires API version >= 1.28.",
					]
					type: "str"
				}
				max_failure_ratio: {
					description: [
						"Fraction of tasks that may fail during a rollback.",
						"Corresponds to the C(--rollback-max-failure-ratio) option of C(docker service create).",
						"Requires API version >= 1.28.",
					]
					type: "float"
				}
				order: {
					description: [
						"Specifies the order of operations during rollbacks.",
						"Corresponds to the C(--rollback-order) option of C(docker service create).",
						"Requires API version >= 1.29.",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		secrets: {
			description: [
				"List of dictionaries describing the service secrets.",
				"Corresponds to the C(--secret) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				secret_id: {
					description: [
						"Secret's ID.",
					]
					type: "str"
				}
				secret_name: {
					description: [
						"Secret's name as defined at its creation.",
					]
					type:     "str"
					required: true
				}
				filename: {
					description: [
						"Name of the file containing the secret. Defaults to the I(secret_name) if not specified.",
						"Corresponds to the C(target) key of C(docker service create --secret).",
					]
					type: "str"
				}
				uid: {
					description: [
						"UID of the secret file's owner.",
					]
					type: "str"
				}
				gid: {
					description: [
						"GID of the secret file's group.",
					]
					type: "str"
				}
				mode: {
					description: [
						"File access mode inside the container. Must be an octal number (like C(0644) or C(0444)).",
					]
					type: "int"
				}
			}
		}
		state: {
			description: [
				"C(absent) - A service matching the specified name will be removed and have its tasks stopped.",
				"C(present) - Asserts the existence of a service matching the name and provided configuration parameters. Unspecified configuration parameters will be set to docker defaults.",
			]

			type:     "str"
			required: true
			default:  "present"
			choices: [
				"present",
				"absent",
			]
		}
		stop_grace_period: {
			description: [
				"Time to wait before force killing a container.",
				"Accepts a duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Corresponds to the C(--stop-grace-period) option of C(docker service create).",
			]
			type:          "str"
			version_added: "2.8"
		}
		stop_signal: {
			description: [
				"Override default signal used to stop the container.",
				"Corresponds to the C(--stop-signal) option of C(docker service create).",
			]
			type:          "str"
			version_added: "2.8"
		}
		tty: {
			description: [
				"Allocate a pseudo-TTY.",
				"Corresponds to the C(--tty) option of C(docker service create).",
				"Requires API version >= 1.25.",
			]
			type: "bool"
		}
		update_config: {
			description: [
				"Configures how the service should be updated. Useful for configuring rolling updates.",
			]
			suboptions: {
				parallelism: {
					description: [
						"Rolling update parallelism.",
						"Corresponds to the C(--update-parallelism) option of C(docker service create).",
					]
					type: "int"
				}
				delay: {
					description: [
						"Rolling update delay.",
						"Accepts a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--update-delay) option of C(docker service create).",
					]
					type: "str"
				}
				failure_action: {
					description: [
						"Action to take in case of container failure.",
						"Corresponds to the C(--update-failure-action) option of C(docker service create).",
						"Usage of I(rollback) requires API version >= 1.29.",
					]
					type: "str"
					choices: [
						"continue",
						"pause",
						"rollback",
					]
				}
				monitor: {
					description: [
						"Time to monitor updated tasks for failures.",
						"Accepts a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
						"Corresponds to the C(--update-monitor) option of C(docker service create).",
						"Requires API version >= 1.25.",
					]
					type: "str"
				}
				max_failure_ratio: {
					description: [
						"Fraction of tasks that may fail during an update before the failure action is invoked.",
						"Corresponds to the C(--update-max-failure-ratio) option of C(docker service create).",
						"Requires API version >= 1.25.",
					]
					type: "float"
				}
				order: {
					description: [
						"Specifies the order of operations when rolling out an updated task.",
						"Corresponds to the C(--update-order) option of C(docker service create).",
						"Requires API version >= 1.29.",
					]
					type: "str"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
		update_delay: {
			description: [
				"Rolling update delay.",
				"Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Corresponds to the C(--update-delay) option of C(docker service create).",
				"Before Ansible 2.8, the default value for this option was C(10).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.delay) instead.",
			]
			type: "raw"
		}
		update_parallelism: {
			description: [
				"Rolling update parallelism.",
				"Corresponds to the C(--update-parallelism) option of C(docker service create).",
				"Before Ansible 2.8, the default value for this option was C(1).",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.parallelism) instead.",
			]
			type: "int"
		}
		update_failure_action: {
			description: [
				"Action to take in case of container failure.",
				"Corresponds to the C(--update-failure-action) option of C(docker service create).",
				"Usage of I(rollback) requires API version >= 1.29.",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.failure_action) instead.",
			]
			type: "str"
			choices: [
				"continue",
				"pause",
				"rollback",
			]
		}
		update_monitor: {
			description: [
				"Time to monitor updated tasks for failures.",
				"Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
				"Corresponds to the C(--update-monitor) option of C(docker service create).",
				"Requires API version >= 1.25.",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.monitor) instead.",
			]
			type: "raw"
		}
		update_max_failure_ratio: {
			description: [
				"Fraction of tasks that may fail during an update before the failure action is invoked.",
				"Corresponds to the C(--update-max-failure-ratio) option of C(docker service create).",
				"Requires API version >= 1.25.",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.max_failure_ratio) instead.",
			]
			type: "float"
		}
		update_order: {
			description: [
				"Specifies the order of operations when rolling out an updated task.",
				"Corresponds to the C(--update-order) option of C(docker service create).",
				"Requires API version >= 1.29.",
				"Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.order) instead.",
			]
			type: "str"
			choices: [
				"stop-first",
				"start-first",
			]
		}
		user: {
			description: [
				"Sets the username or UID used for the specified command.",
				"Before Ansible 2.8, the default value for this option was C(root).",
				"The default has been removed so that the user defined in the image is used if no user is specified here.",
				"Corresponds to the C(--user) option of C(docker service create).",
			]
			type: "str"
		}
		working_dir: {
			description: [
				"Path to the working directory.",
				"Corresponds to the C(--workdir) option of C(docker service create).",
			]
			type:          "str"
			version_added: "2.8"
		}
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_2_documentation",
	]
	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 2.0.2",
		"Docker API >= 1.24",
	]
	notes: [
		"Images will only resolve to the latest digest when using Docker API >= 1.30 and Docker SDK for Python >= 3.2.0. When using older versions use C(force_update: true) to trigger the swarm to resolve a new image.",
	]
}
