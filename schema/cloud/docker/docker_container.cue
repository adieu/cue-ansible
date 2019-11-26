package ansible

module: docker_container: {
	module: "docker_container"

	short_description: "manage docker containers"

	description: [
		"Manage the life cycle of docker containers.",
		"Supports check mode. Run with C(--check) and C(--diff) to view config difference and list of actions to be taken.",
	]

	version_added: "2.1"

	notes: [
		"For most config changes, the container needs to be recreated, i.e. the existing container has to be destroyed and a new one created. This can cause unexpected data loss and downtime. You can use the I(comparisons) option to prevent this.",
		"If the module needs to recreate the container, it will only use the options provided to the module to create the new container (except I(image)). Therefore, always specify *all* options relevant to the container.",
		"When I(restart) is set to C(true), the module will only restart the container if no config changes are detected. Please note that several options have default values; if the container to be restarted uses different values for these options, it will be recreated instead. The options with default values which can cause this are I(auto_remove), I(detach), I(init), I(interactive), I(memory), I(paused), I(privileged), I(read_only) and I(tty). This behavior can be changed by setting I(container_default_behavior) to C(no_defaults), which will be the default value from Ansible 2.14 on.",
	]

	options: {
		auto_remove: {
			description: [
				"Enable auto-removal of the container on daemon side when the container's process exits.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type:          "bool"
			version_added: "2.4"
		}
		blkio_weight: {
			description: [
				"Block IO (relative weight), between 10 and 1000.",
			]
			type: "int"
		}
		capabilities: {
			description: [
				"List of capabilities to add to the container.",
			]
			type:     "list"
			elements: "str"
		}
		cap_drop: {
			description: [
				"List of capabilities to drop from the container.",
			]
			type:          "list"
			elements:      "str"
			version_added: "2.7"
		}
		cleanup: {
			description: [
				"Use with I(detach=false) to remove the container after successful execution.",
			]
			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		command: {
			description: [
				"Command to execute when the container starts. A command may be either a string or a list.",
				"Prior to version 2.4, strings were split on commas.",
			]
			type: "raw"
		}
		comparisons: {
			description: [
				"Allows to specify how properties of existing containers are compared with module options to decide whether the container should be recreated / updated or not.",
				"Only options which correspond to the state of a container as handled by the Docker daemon can be specified, as well as C(networks).",
				"Must be a dictionary specifying for an option one of the keys C(strict), C(ignore) and C(allow_more_present).",
				"If C(strict) is specified, values are tested for equality, and changes always result in updating or restarting. If C(ignore) is specified, changes are ignored.",
				"C(allow_more_present) is allowed only for lists, sets and dicts. If it is specified for lists or sets, the container will only be updated or restarted if the module option contains a value which is not present in the container's options. If the option is specified for a dict, the container will only be updated or restarted if the module option contains a key which isn't present in the container's option, or if the value of a key present differs.",
				"The wildcard option C(*) can be used to set one of the default values C(strict) or C(ignore) to *all* comparisons which are not explicitly set to other values.",
				"See the examples for details.",
			]
			type:          "dict"
			version_added: "2.8"
		}
		container_default_behavior: {
			description: [
				"Various module options used to have default values. This causes problems with containers which use different values for these options.",
				"The default value is C(compatibility), which will ensure that the default values are used when the values are not explicitly specified by the user.",
				"From Ansible 2.14 on, the default value will switch to C(no_defaults). To avoid deprecation warnings, please set I(container_default_behavior) to an explicit value.",
				"This affects the I(auto_remove), I(detach), I(init), I(interactive), I(memory), I(paused), I(privileged), I(read_only) and I(tty) options.",
			]

			type: "str"
			choices: [
				"compatibility",
				"no_defaults",
			]
			version_added: "2.10"
		}
		cpu_period: {
			description: [
				"Limit CPU CFS (Completely Fair Scheduler) period.",
			]
			type: "int"
		}
		cpu_quota: {
			description: [
				"Limit CPU CFS (Completely Fair Scheduler) quota.",
			]
			type: "int"
		}
		cpuset_cpus: {
			description: [
				"CPUs in which to allow execution C(1,3) or C(1-3).",
			]
			type: "str"
		}
		cpuset_mems: {
			description: [
				"Memory nodes (MEMs) in which to allow execution C(0-3) or C(0,1).",
			]
			type: "str"
		}
		cpu_shares: {
			description: [
				"CPU shares (relative weight).",
			]
			type: "int"
		}
		detach: {
			description: [
				"Enable detached mode to leave the container running in background.",
				"If disabled, the task will reflect the status of the container run (failed if the command failed).",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(yes).",
			]

			type: "bool"
		}
		devices: {
			description: [
				"List of host device bindings to add to the container.",
				"Each binding is a mapping expressed in the format C(<path_on_host>:<path_in_container>:<cgroup_permissions>).",
			]
			type:     "list"
			elements: "str"
		}
		device_read_bps: {
			description: [
				"List of device path and read rate (bytes per second) from device.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				path: {
					description: [
						"Device path in the container.",
					]
					type:     "str"
					required: true
				}
				rate: {
					description: [
						"Device read limit in format C(<number>[<unit>]).",
						"Number is a positive integer. Unit can be one of C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"Omitting the unit defaults to bytes.",
					]
					type:     "str"
					required: true
				}
			}
			version_added: "2.8"
		}
		device_write_bps: {
			description: [
				"List of device and write rate (bytes per second) to device.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				path: {
					description: [
						"Device path in the container.",
					]
					type:     "str"
					required: true
				}
				rate: {
					description: [
						"Device read limit in format C(<number>[<unit>]).",
						"Number is a positive integer. Unit can be one of C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"Omitting the unit defaults to bytes.",
					]
					type:     "str"
					required: true
				}
			}
			version_added: "2.8"
		}
		device_read_iops: {
			description: [
				"List of device and read rate (IO per second) from device.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				path: {
					description: [
						"Device path in the container.",
					]
					type:     "str"
					required: true
				}
				rate: {
					description: [
						"Device read limit.",
						"Must be a positive integer.",
					]
					type:     "int"
					required: true
				}
			}
			version_added: "2.8"
		}
		device_write_iops: {
			description: [
				"List of device and write rate (IO per second) to device.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				path: {
					description: [
						"Device path in the container.",
					]
					type:     "str"
					required: true
				}
				rate: {
					description: [
						"Device read limit.",
						"Must be a positive integer.",
					]
					type:     "int"
					required: true
				}
			}
			version_added: "2.8"
		}
		dns_opts: {
			description: [
				"List of DNS options.",
			]
			type:     "list"
			elements: "str"
		}
		dns_servers: {
			description: [
				"List of custom DNS servers.",
			]
			type:     "list"
			elements: "str"
		}
		dns_search_domains: {
			description: [
				"List of custom DNS search domains.",
			]
			type:     "list"
			elements: "str"
		}
		domainname: {
			description: [
				"Container domainname.",
			]
			type:          "str"
			version_added: "2.5"
		}
		env: {
			description: [
				"Dictionary of key,value pairs.",
				"Values which might be parsed as numbers, booleans or other types by the YAML parser must be quoted (e.g. C(\"true\")) in order to avoid data loss.",
			]
			type: "dict"
		}
		env_file: {
			description: [
				"Path to a file, present on the target, containing environment variables I(FOO=BAR).",
				"If variable also present in I(env), then the I(env) value will override.",
			]
			type:          "path"
			version_added: "2.2"
		}
		entrypoint: {
			description: [
				"Command that overwrites the default C(ENTRYPOINT) of the image.",
			]
			type:     "list"
			elements: "str"
		}
		etc_hosts: {
			description: [
				"Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's C(/etc/hosts) file.",
			]

			type: "dict"
		}
		exposed_ports: {
			description: [
				"List of additional container ports which informs Docker that the container listens on the specified network ports at runtime.",
				"If the port is already exposed using C(EXPOSE) in a Dockerfile, it does not need to be exposed again.",
			]

			type:     "list"
			elements: "str"
			aliases: [
				"exposed",
				"expose",
			]
		}
		force_kill: {
			description: [
				"Use the kill command when stopping a running container.",
			]
			type:    "bool"
			default: false
			aliases: [
				"forcekill",
			]
		}
		groups: {
			description: [
				"List of additional group names and/or IDs that the container process will run as.",
			]
			type:     "list"
			elements: "str"
		}
		healthcheck: {
			description: [
				"Configure a check that is run to determine whether or not containers for this service are \"healthy\".",
				"See the docs for the L(HEALTHCHECK Dockerfile instruction,https://docs.docker.com/engine/reference/builder/#healthcheck) for details on how healthchecks work.",
				"I(interval), I(timeout) and I(start_period) are specified as durations. They accept duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).",
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
						"The default used by the Docker daemon is C(30s).",
					]
					type: "str"
				}
				timeout: {
					description: [
						"Maximum time to allow one check to run.",
						"The default used by the Docker daemon is C(30s).",
					]
					type: "str"
				}
				retries: {
					description: [
						"Consecutive number of failures needed to report unhealthy.",
						"The default used by the Docker daemon is C(3).",
					]
					type: "int"
				}
				start_period: {
					description: [
						"Start period for the container to initialize before starting health-retries countdown.",
						"The default used by the Docker daemon is C(0s).",
					]
					type: "str"
				}
			}
			version_added: "2.8"
		}
		hostname: {
			description: [
				"The container's hostname.",
			]
			type: "str"
		}
		ignore_image: {
			description: [
				"When I(state) is C(present) or C(started), the module compares the configuration of an existing container to requested configuration. The evaluation includes the image version. If the image version in the registry does not match the container, the container will be recreated. You can stop this behavior by setting I(ignore_image) to C(True).",
				"*Warning:* This option is ignored if C(image: ignore) or C(*: ignore) is specified in the I(comparisons) option.",
			]

			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		image: {
			description: [
				"Repository path and tag used to create the container. If an image is not found or pull is true, the image will be pulled from the registry. If no tag is included, C(latest) will be used.",
				"Can also be an image ID. If this is the case, the image is assumed to be available locally. The I(pull) option is ignored for this case.",
			]

			type: "str"
		}
		init: {
			description: [
				"Run an init inside the container that forwards signals and reaps processes.",
				"This option requires Docker API >= 1.25.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type:          "bool"
			version_added: "2.6"
		}
		interactive: {
			description: [
				"Keep stdin open after a container is launched, even if not attached.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type: "bool"
		}
		ipc_mode: {
			description: [
				"Set the IPC mode for the container.",
				"Can be one of C(container:<name|id>) to reuse another container's IPC namespace or C(host) to use the host's IPC namespace within the container.",
			]

			type: "str"
		}
		keep_volumes: {
			description: [
				"Retain volumes associated with a removed container.",
			]
			type:    "bool"
			default: true
		}
		kill_signal: {
			description: [
				"Override default signal used to kill a running container.",
			]
			type: "str"
		}
		kernel_memory: {
			description: [
				"Kernel memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte). Minimum is C(4M).",
				"Omitting the unit defaults to bytes.",
			]
			type: "str"
		}
		labels: {
			description: [
				"Dictionary of key value pairs.",
			]
			type: "dict"
		}
		links: {
			description: [
				"List of name aliases for linked containers in the format C(container_name:alias).",
				"Setting this will force container to be restarted.",
			]
			type:     "list"
			elements: "str"
		}
		log_driver: {
			description: [
				"Specify the logging driver. Docker uses C(json-file) by default.",
				"See L(here,https://docs.docker.com/config/containers/logging/configure/) for possible choices.",
			]
			type: "str"
		}
		log_options: {
			description: [
				"Dictionary of options specific to the chosen I(log_driver).",
				"See U(https://docs.docker.com/engine/admin/logging/overview/) for details.",
			]
			type: "dict"
			aliases: [
				"log_opt",
			]
		}
		mac_address: {
			description: [
				"Container MAC address (e.g. 92:d0:c6:0a:29:33).",
			]
			type: "str"
		}
		memory: {
			description: [
				"Memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"Omitting the unit defaults to bytes.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(\"0\").",
			]

			type: "str"
		}
		memory_reservation: {
			description: [
				"Memory soft limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"Omitting the unit defaults to bytes.",
			]
			type: "str"
		}
		memory_swap: {
			description: [
				"Total memory limit (memory + swap) in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"Omitting the unit defaults to bytes.",
			]
			type: "str"
		}
		memory_swappiness: {
			description: [
				"Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.",
				"If not set, the value will be remain the same if container exists and will be inherited from the host machine if it is (re-)created.",
			]

			type: "int"
		}
		mounts: {
			version_added: "2.9"
			type:          "list"
			elements:      "dict"
			description: [
				"Specification for mounts to be added to the container. More powerful alternative to I(volumes).",
			]
			suboptions: {
				target: {
					description: [
						"Path inside the container.",
					]
					type:     "str"
					required: true
				}
				source: {
					description: [
						"Mount source (e.g. a volume name or a host path).",
					]
					type: "str"
				}
				type: {
					description: [
						"The mount type.",
						"Note that C(npipe) is only supported by Docker for Windows.",
					]
					type: "str"
					choices: [
						"bind",
						"npipe",
						"tmpfs",
						"volume",
					]
					default: "volume"
				}
				read_only: {
					description: [
						"Whether the mount should be read-only.",
					]
					type: "bool"
				}
				consistency: {
					description: [
						"The consistency requirement for the mount.",
					]
					type: "str"
					choices: [
						"cached",
						"consistent",
						"default",
						"delegated",
					]
				}
				propagation: {
					description: [
						"Propagation mode. Only valid for the C(bind) type.",
					]
					type: "str"
					choices: [
						"private",
						"rprivate",
						"shared",
						"rshared",
						"slave",
						"rslave",
					]
				}
				no_copy: {
					description: [
						"False if the volume should be populated with the data from the target. Only valid for the C(volume) type.",
						"The default value is C(false).",
					]
					type: "bool"
				}
				labels: {
					description: [
						"User-defined name and labels for the volume. Only valid for the C(volume) type.",
					]
					type: "dict"
				}
				volume_driver: {
					description: [
						"Specify the volume driver. Only valid for the C(volume) type.",
						"See L(here,https://docs.docker.com/storage/volumes/#use-a-volume-driver) for details.",
					]
					type: "str"
				}
				volume_options: {
					description: [
						"Dictionary of options specific to the chosen volume_driver. See L(here,https://docs.docker.com/storage/volumes/#use-a-volume-driver) for details.",
					]

					type: "dict"
				}
				tmpfs_size: {
					description: [
						"The size for the tmpfs mount in bytes in format <number>[<unit>].",
						"Number is a positive integer. Unit can be one of C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
						"Omitting the unit defaults to bytes.",
					]
					type: "str"
				}
				tmpfs_mode: {
					description: [
						"The permission mode for the tmpfs mount.",
					]
					type: "str"
				}
			}
		}
		name: {
			description: [
				"Assign a name to a new container or match an existing container.",
				"When identifying an existing container name may be a name or a long or short container ID.",
			]
			type:     "str"
			required: true
		}
		network_mode: {
			description: [
				"Connect the container to a network. Choices are C(bridge), C(host), C(none) or C(container:<name|id>).",
			]
			type: "str"
		}
		userns_mode: {
			description: [
				"Set the user namespace mode for the container. Currently, the only valid value are C(host) and the empty string.",
			]
			type:          "str"
			version_added: "2.5"
		}
		networks: {
			description: [
				"List of networks the container belongs to.",
				"For examples of the data structure and usage see EXAMPLES below.",
				"To remove a container from one or more networks, use the I(purge_networks) option.",
				"Note that as opposed to C(docker run ...), M(docker_container) does not remove the default network if I(networks) is specified. You need to explicitly use I(purge_networks) to enforce the removal of the default network (and all other networks not explicitly mentioned in I(networks)). Alternatively, use the I(networks_cli_compatible) option, which will be enabled by default from Ansible 2.12 on.",
			]

			type:     "list"
			elements: "dict"
			suboptions: {
				name: {
					description: [
						"The network's name.",
					]
					type:     "str"
					required: true
				}
				ipv4_address: {
					description: [
						"The container's IPv4 address in this network.",
					]
					type: "str"
				}
				ipv6_address: {
					description: [
						"The container's IPv6 address in this network.",
					]
					type: "str"
				}
				links: {
					description: [
						"A list of containers to link to.",
					]
					type:     "list"
					elements: "str"
				}
				aliases: {
					description: [
						"List of aliases for this container in this network. These names can be used in the network to reach this container.",
					]

					type:     "list"
					elements: "str"
				}
			}
			version_added: "2.2"
		}
		networks_cli_compatible: {
			description: [
				"When networks are provided to the module via the I(networks) option, the module behaves differently than C(docker run --network): C(docker run --network other) will create a container with network C(other) attached, but the default network not attached. This module with I(networks: {name: other}) will create a container with both C(default) and C(other) attached. If I(purge_networks) is set to C(yes), the C(default) network will be removed afterwards.",
				"If I(networks_cli_compatible) is set to C(yes), this module will behave as C(docker run --network) and will *not* add the default network if I(networks) is specified. If I(networks) is not specified, the default network will be attached.",
				"Note that docker CLI also sets I(network_mode) to the name of the first network added if C(--network) is specified. For more compatibility with docker CLI, you explicitly have to set I(network_mode) to the name of the first network you're adding.",
				"Current value is C(no). A new default of C(yes) will be set in Ansible 2.12.",
			]
			type:          "bool"
			version_added: "2.8"
		}
		oom_killer: {
			description: [
				"Whether or not to disable OOM Killer for the container.",
			]
			type: "bool"
		}
		oom_score_adj: {
			description: [
				"An integer value containing the score given to the container in order to tune OOM killer preferences.",
			]

			type:          "int"
			version_added: "2.2"
		}
		output_logs: {
			description: [
				"If set to true, output of the container command will be printed.",
				"Only effective when I(log_driver) is set to C(json-file) or C(journald).",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
		paused: {
			description: [
				"Use with the started state to pause running processes inside the container.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type: "bool"
		}
		pid_mode: {
			description: [
				"Set the PID namespace mode for the container.",
				"Note that Docker SDK for Python < 2.0 only supports C(host). Newer versions of the Docker SDK for Python (docker) allow all values supported by the Docker daemon.",
			]

			type: "str"
		}
		pids_limit: {
			description: [
				"Set PIDs limit for the container. It accepts an integer value.",
				"Set C(-1) for unlimited PIDs.",
			]
			type:          "int"
			version_added: "2.8"
		}
		privileged: {
			description: [
				"Give extended privileges to the container.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type: "bool"
		}
		published_ports: {
			description: [
				"List of ports to publish from the container to the host.",
				"Use docker CLI syntax: C(8000), C(9000:8000), or C(0.0.0.0:9000:8000), where 8000 is a container port, 9000 is a host port, and 0.0.0.0 is a host interface.",
				"Port ranges can be used for source and destination ports. If two ranges with different lengths are specified, the shorter range will be used.",
				"Bind addresses must be either IPv4 or IPv6 addresses. Hostnames are *not* allowed. This is different from the C(docker) command line utility. Use the L(dig lookup,../lookup/dig.html) to resolve hostnames.",
				"A value of C(all) will publish all exposed container ports to random host ports, ignoring any other mappings.",
				"If I(networks) parameter is provided, will inspect each network to see if there exists a bridge network with optional parameter C(com.docker.network.bridge.host_binding_ipv4). If such a network is found, then published ports where no host IP address is specified will be bound to the host IP pointed to by C(com.docker.network.bridge.host_binding_ipv4). Note that the first bridge network with a C(com.docker.network.bridge.host_binding_ipv4) value encountered in the list of I(networks) is the one that will be used.",
			]

			type:     "list"
			elements: "str"
			aliases: [
				"ports",
			]
		}
		pull: {
			description: [
				"If true, always pull the latest version of an image. Otherwise, will only pull an image when missing.",
				"*Note:* images are only pulled when specified by name. If the image is specified as a image ID (hash), it cannot be pulled.",
			]

			type:    "bool"
			default: false
		}
		purge_networks: {
			description: [
				"Remove the container from ALL networks not included in I(networks) parameter.",
				"Any default networks such as C(bridge), if not found in I(networks), will be removed as well.",
			]
			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		read_only: {
			description: [
				"Mount the container's root file system as read-only.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type: "bool"
		}
		recreate: {
			description: [
				"Use with present and started states to force the re-creation of an existing container.",
			]
			type:    "bool"
			default: false
		}
		restart: {
			description: [
				"Use with started state to force a matching container to be stopped and restarted.",
			]
			type:    "bool"
			default: false
		}
		restart_policy: {
			description: [
				"Container restart policy.",
				"Place quotes around C(no) option.",
			]
			type: "str"
			choices: [
				"no",
				"on-failure",
				"always",
				"unless-stopped",
			]
		}
		restart_retries: {
			description: [
				"Use with restart policy to control maximum number of restart attempts.",
			]
			type: "int"
		}
		runtime: {
			description: [
				"Runtime to use for the container.",
			]
			type:          "str"
			version_added: "2.8"
		}
		shm_size: {
			description: [
				"Size of C(/dev/shm) in format C(<number>[<unit>]). Number is positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).",
				"Omitting the unit defaults to bytes. If you omit the size entirely, Docker daemon uses C(64M).",
			]
			type: "str"
		}
		security_opts: {
			description: [
				"List of security options in the form of C(\"label:user:User\").",
			]
			type:     "list"
			elements: "str"
		}
		state: {
			description: [
				"C(absent) - A container matching the specified name will be stopped and removed. Use I(force_kill) to kill the container rather than stopping it. Use I(keep_volumes) to retain volumes associated with the removed container.",
				"C(present) - Asserts the existence of a container matching the name and any provided configuration parameters. If no container matches the name, a container will be created. If a container matches the name but the provided configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and re-created with the requested config.",
				"C(started) - Asserts that the container is first C(present), and then if the container is not running moves it to a running state. Use I(restart) to force a matching container to be stopped and restarted.",
				"C(stopped) - Asserts that the container is first C(present), and then if the container is running moves it to a stopped state.",
				"To control what will be taken into account when comparing configuration, see the I(comparisons) option. To avoid that the image version will be taken into account, you can also use the I(ignore_image) option.",
				"Use the I(recreate) option to always force re-creation of a matching container, even if it is running.",
				"If the container should be killed instead of stopped in case it needs to be stopped for recreation, or because I(state) is C(stopped), please use the I(force_kill) option. Use I(keep_volumes) to retain volumes associated with a removed container.",
				"Use I(keep_volumes) to retain volumes associated with a removed container.",
			]
			type:    "str"
			default: "started"
			choices: [
				"absent",
				"present",
				"stopped",
				"started",
			]
		}
		stop_signal: {
			description: [
				"Override default signal used to stop the container.",
			]
			type: "str"
		}
		stop_timeout: {
			description: [
				"Number of seconds to wait for the container to stop before sending C(SIGKILL). When the container is created by this module, its C(StopTimeout) configuration will be set to this value.",
				"When the container is stopped, will be used as a timeout for stopping the container. In case the container has a custom C(StopTimeout) configuration, the behavior depends on the version of the docker daemon. New versions of the docker daemon will always use the container's configured C(StopTimeout) value if it has been configured.",
			]

			type: "int"
		}
		trust_image_content: {
			description: [
				"If C(yes), skip image verification.",
				"The option has never been used by the module. It will be removed in Ansible 2.14.",
			]
			type:    "bool"
			default: false
		}
		tmpfs: {
			description: [
				"Mount a tmpfs directory.",
			]
			type:          "list"
			elements:      "str"
			version_added: 2.4
		}
		tty: {
			description: [
				"Allocate a pseudo-TTY.",
				"If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).",
			]

			type: "bool"
		}
		ulimits: {
			description: [
				"List of ulimit options. A ulimit is specified as C(nofile:262144:262144).",
			]
			type:     "list"
			elements: "str"
		}
		sysctls: {
			description: [
				"Dictionary of key,value pairs.",
			]
			type:          "dict"
			version_added: 2.4
		}
		user: {
			description: [
				"Sets the username or UID used and optionally the groupname or GID for the specified command.",
				"Can be of the forms C(user), C(user:group), C(uid), C(uid:gid), C(user:gid) or C(uid:group).",
			]
			type: "str"
		}
		uts: {
			description: [
				"Set the UTS namespace mode for the container.",
			]
			type: "str"
		}
		volumes: {
			description: [
				"List of volumes to mount within the container.",
				"Use docker CLI-style syntax: C(/host:/container[:mode])",
				"Mount modes can be a comma-separated list of various modes such as C(ro), C(rw), C(consistent), C(delegated), C(cached), C(rprivate), C(private), C(rshared), C(shared), C(rslave), C(slave), and C(nocopy). Note that the docker daemon might not support all modes and combinations of such modes.",
				"SELinux hosts can additionally use C(z) or C(Z) to use a shared or private label for the volume.",
				"Note that Ansible 2.7 and earlier only supported one mode, which had to be one of C(ro), C(rw), C(z), and C(Z).",
			]

			type:     "list"
			elements: "str"
		}
		volume_driver: {
			description: [
				"The container volume driver.",
			]
			type: "str"
		}
		volumes_from: {
			description: [
				"List of container names or IDs to get volumes from.",
			]
			type:     "list"
			elements: "str"
		}
		working_dir: {
			description: [
				"Path to the working directory.",
			]
			type:          "str"
			version_added: "2.4"
		}
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	author: [
		"Cove Schneider (@cove)",
		"Joshua Conner (@joshuaconner)",
		"Pavel Antonov (@softzilla)",
		"Thomas Steinbach (@ThomasSteinbach)",
		"Philippe Jandot (@zfil)",
		"Daan Oosterveld (@dusdanig)",
		"Chris Houseknecht (@chouseknecht)",
		"Kassian Sun (@kassiansun)",
		"Felix Fontein (@felixfontein)",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.8.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"Docker API >= 1.20",
	]
}
