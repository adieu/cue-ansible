package docker

docker_image :: {

	// Determines where the module will try to retrieve the image from.
	// Use C(build) to build the image from a C(Dockerfile). I(build.path) must be specified when this value is used.
	// Use C(load) to load the image from a C(.tar) file. I(load_path) must be specified when this value is used.
	// Use C(pull) to pull the image from a registry.
	// Use C(local) to make sure that the image is already available on the local docker daemon, i.e. do not try to build, pull or load the image.
	// Before Ansible 2.12, the value of this option will be auto-detected to be backwards compatible, but a warning will be issued if it is not explicitly specified. From Ansible 2.12 on, auto-detection will be disabled and this option will be made mandatory.

	source?: string

	// Make assertions about the state of an image.
	// When C(absent) an image will be removed. Use the force option to un-tag and remove all images matching the provided name.
	// When C(present) check if an image exists using the provided name and tag. If the image is not found or the force option is used, the image will either be pulled, built or loaded, depending on the I(source) option.
	// By default the image will be pulled from Docker Hub, or the registry specified in the image's name. Note that this will change in Ansible 2.12, so to make sure that you are pulling, set I(source) to C(pull). To build the image, provide a I(path) value set to a directory containing a context and Dockerfile, and set I(source) to C(build). To load an image, specify I(load_path) to provide a path to an archive file. To tag an image to a repository, provide a I(repository) path. If the name contains a repository path, it will be pushed.
	// *Note:* C(state=build) is DEPRECATED and will be removed in Ansible 2.11. Specifying C(build) will behave the same as C(present).

	state?: string

	// Used to select an image when pulling. Will be added to the image when pushing, tagging or building. Defaults to I(latest).
	// If I(name) parameter format is I(name:tag), then tag value from I(name) will take precedence.

	tag?: string

	// Provide a dictionary of C(key:value) build arguments that map to Dockerfile ARG directive.
	// Docker expects the value to be a string. For convenience any non-string values will be converted to strings.
	// Requires Docker API >= 1.21.
	// Please use I(build.args) instead. This option will be removed in Ansible 2.12.

	buildargs?: {...}

	// Do not use cache when building an image.
	// Please use I(build.nocache) instead. This option will be removed in Ansible 2.12.

	nocache?: bool

	// When building an image downloads any updates to the FROM image in Dockerfile.
	// Please use I(build.pull) instead. This option will be removed in Ansible 2.12.
	// The default is currently C(yes). This will change to C(no) in Ansible 2.12.

	pull?: bool

	// Full path to a repository. Use with state C(present) to tag the image into the repository. Expects format I(repository:tag). If no tag is provided, will use the value of the C(tag) parameter or I(latest).

	repository?: string

	// Use with state C(present) to build, load or pull an image (depending on the value of the I(source) option) when the image already exists.

	force_source?: bool

	// Use with state C(present) to load an image from a .tar file.
	// Set I(source) to C(load) if you want to load the image. The option will be set automatically before Ansible 2.12 if this option is used (except if I(path) is specified as well, in which case building will take precedence). From Ansible 2.12 on, you have to set I(source) to C(load).

	load_path?: string

	// Use with state 'present' to build an image. Will be the path to a directory containing the context and Dockerfile for building an image.
	// Set I(source) to C(build) if you want to build the image. The option will be set automatically before Ansible 2.12 if this option is used. From Ansible 2.12 on, you have to set I(source) to C(build).
	// Please use I(build.path) instead. This option will be removed in Ansible 2.12.

	path?: string

	// Push the image to the registry. Specify the registry as part of the I(name) or I(repository) parameter.

	push?: bool

	// Use with state C(present) to archive an image to a .tar file.

	archive_path?: string

	// Specifies options used for building images.

	build?: {...}

	// Use with state C(present) and source C(build) to provide an alternate name for the Dockerfile to use when building an image.
	// This can also include a relative path (relative to I(path)).
	// Please use I(build.dockerfile) instead. This option will be removed in Ansible 2.12.

	dockerfile?: string

	// Use with state I(absent) to un-tag and remove all images matching the specified name. Use with state C(present) to build, load or pull an image when the image already exists. Also use with state C(present) to force tagging an image.
	// Please stop using this option, and use the more specialized force options I(force_source), I(force_absent) and I(force_tag) instead.
	// This option will be removed in Ansible 2.12.

	force?: bool

	// Remove intermediate containers after build.
	// Please use I(build.rm) instead. This option will be removed in Ansible 2.12.

	rm?: bool

	// DEPRECATED. Whether to use tls to connect to the docker daemon. Set to C(encrypt) to use TLS. And set to C(verify) to use TLS and verify that the server's certificate is valid for the server.
	// *Note:* If you specify this option, it will set the value of the I(tls) or I(validate_certs) parameters if not set to C(no).
	// Will be removed in Ansible 2.11.

	use_tls?: string

	// A dictionary of limits applied to each container created by the build process.
	// Please use I(build.container_limits) instead. This option will be removed in Ansible 2.12.

	container_limits?: {...}

	// Use with state C(present) to force tagging an image.

	force_tag?: bool

	// Timeout for HTTP requests during the image build operation. Provide a positive integer value for the number of seconds.
	// Please use I(build.http_timeout) instead. This option will be removed in Ansible 2.12.

	http_timeout?: int

	// Image name. Name format will be one of: name, repository/name, registry_server:port/name. When pushing or pulling an image the name can optionally include the tag by appending ':tag_name'.
	// Note that image IDs (hashes) are not supported.

	name: string

	// Use with state I(absent) to un-tag and remove all images matching the specified name.

	force_absent?: bool
}

docker_login :: {

	// Refresh existing authentication found in the configuration file.

	reauthorize?: bool

	// The registry URL.

	registry_url?: string

	// This controls the current state of the user. C(present) will login in a user, C(absent) will log them out.
	// To logout you only need the registry server, which defaults to DockerHub.
	// Before 2.1 you could ONLY log in.
	// Docker does not support 'logout' with a custom config file.

	state?: string

	// The username for the registry account

	username: string

	// Custom path to the Docker CLI configuration file.

	config_path?: string

	// Does nothing, do not use.
	// Will be removed in Ansible 2.14.

	email?: string

	// The plaintext password for the registry account

	password: string
}

docker_stack :: {

	// If set will add the C(--resolve-image) option to the C(docker stack deploy) command. This will have docker query the registry to resolve image digest and supported platforms. If not set, docker use "always" by default.

	resolve_image?: string

	// Service state.

	state?: string

	// If true will add the C(--with-registry-auth) option to the C(docker stack deploy) command. This will have docker send registry authentication details to Swarm agents.

	with_registry_auth?: bool

	// If C(>0) and I(state) is C(absent) the module will retry up to I(absent_retries) times to delete the stack until all the resources have been effectively deleted. If the last try still reports the stack as not completely removed the module will fail.

	absent_retries?: int

	// Interval in seconds between consecutive I(absent_retries).

	absent_retries_interval?: int

	// List of compose definitions. Any element may be a string referring to the path of the compose file on the target host or the YAML contents of a compose file nested as dictionary.

	compose?: [..._]

	// Stack name

	name: string

	// If true will add the C(--prune) option to the C(docker stack deploy) command. This will have docker remove the services not present in the current stack definition.

	prune?: bool
}

docker_secret :: {

	// The value of the secret. Required when state is C(present).

	data?: string

	// If set to C(true), the data is assumed to be Base64 encoded and will be decoded before being used.
	// To use binary I(data), it is better to keep it Base64 encoded and let it be decoded by this option.

	data_is_b64?: bool

	// Use with state C(present) to always remove and recreate an existing secret.
	// If C(true), an existing secret will be replaced, even if it has not changed.

	force?: bool

	// A map of key:value meta data, where both key and value are expected to be strings.
	// If new meta data is provided, or existing meta data is modified, the secret will be updated by removing it and creating it again.

	labels?: {...}

	// The name of the secret.

	name: string

	// Set to C(present), if the secret should exist, and C(absent), if it should not.

	state?: string
}

docker_compose :: {

	// When I(state) is C(present) specify whether or not to include linked services.

	dependencies?: bool

	// Path to a directory containing a C(docker-compose.yml) or C(docker-compose.yaml) file.
	// Mutually exclusive with I(definition).
	// Required when no I(definition) is provided.

	project_src?: string

	// By default containers will be recreated when their configuration differs from the service definition.
	// Setting to C(never) ignores configuration differences and leaves existing containers unchanged.
	// Setting to C(always) forces recreation of all existing containers.

	recreate?: string

	// Remove containers for services not defined in the Compose file.

	remove_orphans?: bool

	// When I(state) is C(present) run C(docker-compose up) resp. C(docker-compose stop) (with I(stopped)) resp. C(docker-compose restart) (with I(restarted)) on a subset of services.
	// If empty, which is the default, the operation will be performed on all services defined in the Compose file (or inline I(definition)).

	services?: [...string]

	// Use with I(state) C(present) to always build images prior to starting the application.
	// Same as running C(docker-compose build) with the pull option.
	// Images will only be rebuilt if Docker detects a change in the Dockerfile or build directory contents.
	// Use the I(nocache) option to ignore the image cache when performing the build.
	// If an existing image is replaced, services using the image will be recreated unless I(recreate) is C(never).

	build?: bool

	// Compose file describing one or more services, networks and volumes.
	// Mutually exclusive with I(project_src) and I(files).

	definition?: {...}

	// Use with I(state) C(present) to always pull images prior to starting the application.
	// Same as running C(docker-compose pull).
	// When a new image is pulled, services using the image will be recreated unless I(recreate) is C(never).

	pull?: bool

	// Desired state of the project.
	// Specifying C(present) is the same as running C(docker-compose up) resp. C(docker-compose stop) (with I(stopped)) resp. C(docker-compose restart) (with I(restarted)).
	// Specifying C(absent) is the same as running C(docker-compose down).

	state?: string

	// Use with I(state) C(present) to stop all containers defined in the Compose file.
	// If I(services) is defined, only the containers listed there will be stopped.

	stopped?: bool

	// List of Compose file names relative to I(project_src). Overrides C(docker-compose.yml) or C(docker-compose.yaml).
	// Files are loaded and merged in the order given.

	files?: [...string]

	// Whether or not to check the Docker daemon's hostname against the name provided in the client certificate.

	hostname_check?: bool

	// Use with the I(build) option to ignore the cache during the image build process.

	nocache?: bool

	// Provide a project name. If not provided, the project name is taken from the basename of I(project_src).
	// Required when I(definition) is provided.

	project_name?: string

	// Use with I(state) C(absent) to remove all images or only local images.

	remove_images?: string

	// Use with I(state) C(absent) to remove data volumes.

	remove_volumes?: bool

	// timeout in seconds for container shutdown when attached or when containers are already running.

	timeout?: int

	// Use with I(state) C(present) to restart all containers defined in the Compose file.
	// If I(services) is defined, only the containers listed there will be restarted.

	restarted?: bool

	// When I(state) is C(present) scale services. Provide a dictionary of key/value pairs where the key is the name of the service and the value is an integer count for the number of containers.

	scale?: {...}
}

docker_config :: {

	// The value of the config. Required when state is C(present).

	data?: string

	// If set to C(true), the data is assumed to be Base64 encoded and will be decoded before being used.
	// To use binary I(data), it is better to keep it Base64 encoded and let it be decoded by this option.

	data_is_b64?: bool

	// Use with state C(present) to always remove and recreate an existing config.
	// If C(true), an existing config will be replaced, even if it has not been changed.

	force?: bool

	// A map of key:value meta data, where both the I(key) and I(value) are expected to be a string.
	// If new meta data is provided, or existing meta data is modified, the config will be updated by removing it and creating it again.

	labels?: {...}

	// The name of the config.

	name: string

	// Set to C(present), if the config should exist, and C(absent), if it should not.

	state?: string
}

docker_container :: {

	// List of capabilities to drop from the container.

	cap_drop?: [...string]

	// Memory nodes (MEMs) in which to allow execution C(0-3) or C(0,1).

	cpuset_mems?: string

	// List of additional container ports which informs Docker that the container listens on the specified network ports at runtime.
	// If the port is already exposed using C(EXPOSE) in a Dockerfile, it does not need to be exposed again.

	exposed_ports?: [...string]

	// List of name aliases for linked containers in the format C(container_name:alias).
	// Setting this will force container to be restarted.

	links?: [...string]

	// Dictionary of key,value pairs.

	sysctls?: {...}

	// List of device path and read rate (bytes per second) from device.

	device_read_bps?: [...{...}]

	// List of device and write rate (bytes per second) to device.

	device_write_bps?: [...{...}]

	// Path to a file, present on the target, containing environment variables I(FOO=BAR).
	// If variable also present in I(env), then the I(env) value will override.

	env_file?: string

	// Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's C(/etc/hosts) file.

	etc_hosts?: {...}

	// Keep stdin open after a container is launched, even if not attached.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	interactive?: bool

	// List of custom DNS search domains.

	dns_search_domains?: [...string]

	// Whether or not to disable OOM Killer for the container.

	oom_killer?: bool

	// Set the PID namespace mode for the container.
	// Note that Docker SDK for Python < 2.0 only supports C(host). Newer versions of the Docker SDK for Python (docker) allow all values supported by the Docker daemon.

	pid_mode?: string

	// Mount a tmpfs directory.

	tmpfs?: [...string]

	// List of container names or IDs to get volumes from.

	volumes_from?: [...string]

	// List of capabilities to add to the container.

	capabilities?: [...string]

	// Configure a check that is run to determine whether or not containers for this service are "healthy".
	// See the docs for the L(HEALTHCHECK Dockerfile instruction,https://docs.docker.com/engine/reference/builder/#healthcheck) for details on how healthchecks work.
	// I(interval), I(timeout) and I(start_period) are specified as durations. They accept duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).

	healthcheck?: {...}

	// List of networks the container belongs to.
	// For examples of the data structure and usage see EXAMPLES below.
	// To remove a container from one or more networks, use the I(purge_networks) option.
	// Note that as opposed to C(docker run ...), M(docker_container) does not remove the default network if I(networks) is specified. You need to explicitly use I(purge_networks) to enforce the removal of the default network (and all other networks not explicitly mentioned in I(networks)). Alternatively, use the I(networks_cli_compatible) option, which will be enabled by default from Ansible 2.12 on.

	networks?: [...{...}]

	// List of ports to publish from the container to the host.
	// Use docker CLI syntax: C(8000), C(9000:8000), or C(0.0.0.0:9000:8000), where 8000 is a container port, 9000 is a host port, and 0.0.0.0 is a host interface.
	// Port ranges can be used for source and destination ports. If two ranges with different lengths are specified, the shorter range will be used.
	// Bind addresses must be either IPv4 or IPv6 addresses. Hostnames are *not* allowed. This is different from the C(docker) command line utility. Use the L(dig lookup,../lookup/dig.html) to resolve hostnames.
	// A value of C(all) will publish all exposed container ports to random host ports, ignoring any other mappings.
	// If I(networks) parameter is provided, will inspect each network to see if there exists a bridge network with optional parameter C(com.docker.network.bridge.host_binding_ipv4). If such a network is found, then published ports where no host IP address is specified will be bound to the host IP pointed to by C(com.docker.network.bridge.host_binding_ipv4). Note that the first bridge network with a C(com.docker.network.bridge.host_binding_ipv4) value encountered in the list of I(networks) is the one that will be used.

	published_ports?: [...string]

	// Use with started state to force a matching container to be stopped and restarted.

	restart?: bool

	// Use with restart policy to control maximum number of restart attempts.

	restart_retries?: int

	// The container's hostname.

	hostname?: string

	// Kernel memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte). Minimum is C(4M).
	// Omitting the unit defaults to bytes.

	kernel_memory?: string

	// Give extended privileges to the container.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	privileged?: bool

	// If C(yes), skip image verification.
	// The option has never been used by the module. It will be removed in Ansible 2.14.

	trust_image_content?: bool

	// Allows to specify how properties of existing containers are compared with module options to decide whether the container should be recreated / updated or not.
	// Only options which correspond to the state of a container as handled by the Docker daemon can be specified, as well as C(networks).
	// Must be a dictionary specifying for an option one of the keys C(strict), C(ignore) and C(allow_more_present).
	// If C(strict) is specified, values are tested for equality, and changes always result in updating or restarting. If C(ignore) is specified, changes are ignored.
	// C(allow_more_present) is allowed only for lists, sets and dicts. If it is specified for lists or sets, the container will only be updated or restarted if the module option contains a value which is not present in the container's options. If the option is specified for a dict, the container will only be updated or restarted if the module option contains a key which isn't present in the container's option, or if the value of a key present differs.
	// The wildcard option C(*) can be used to set one of the default values C(strict) or C(ignore) to *all* comparisons which are not explicitly set to other values.
	// See the examples for details.

	comparisons?: {...}

	// List of DNS options.

	dns_opts?: [...string]

	// Container domainname.

	domainname?: string

	// List of additional group names and/or IDs that the container process will run as.

	groups?: [...string]

	// Memory soft limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// Omitting the unit defaults to bytes.

	memory_reservation?: string

	// Set the user namespace mode for the container. Currently, the only valid value are C(host) and the empty string.

	userns_mode?: string

	// If set to true, output of the container command will be printed.
	// Only effective when I(log_driver) is set to C(json-file) or C(journald).

	output_logs?: bool

	// Mount the container's root file system as read-only.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	read_only?: bool

	// Block IO (relative weight), between 10 and 1000.

	blkio_weight?: int

	// CPUs in which to allow execution C(1,3) or C(1-3).

	cpuset_cpus?: string

	// Enable detached mode to leave the container running in background.
	// If disabled, the task will reflect the status of the container run (failed if the command failed).
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(yes).

	detach?: bool

	// List of device and write rate (IO per second) to device.

	device_write_iops?: [...{...}]

	// List of custom DNS servers.

	dns_servers?: [...string]

	// Container MAC address (e.g. 92:d0:c6:0a:29:33).

	mac_address?: string

	// Container restart policy.
	// Place quotes around C(no) option.

	restart_policy?: string

	// C(absent) - A container matching the specified name will be stopped and removed. Use I(force_kill) to kill the container rather than stopping it. Use I(keep_volumes) to retain volumes associated with the removed container.
	// C(present) - Asserts the existence of a container matching the name and any provided configuration parameters. If no container matches the name, a container will be created. If a container matches the name but the provided configuration does not match, the container will be updated, if it can be. If it cannot be updated, it will be removed and re-created with the requested config.
	// C(started) - Asserts that the container is first C(present), and then if the container is not running moves it to a running state. Use I(restart) to force a matching container to be stopped and restarted.
	// C(stopped) - Asserts that the container is first C(present), and then if the container is running moves it to a stopped state.
	// To control what will be taken into account when comparing configuration, see the I(comparisons) option. To avoid that the image version will be taken into account, you can also use the I(ignore_image) option.
	// Use the I(recreate) option to always force re-creation of a matching container, even if it is running.
	// If the container should be killed instead of stopped in case it needs to be stopped for recreation, or because I(state) is C(stopped), please use the I(force_kill) option. Use I(keep_volumes) to retain volumes associated with a removed container.
	// Use I(keep_volumes) to retain volumes associated with a removed container.

	state?: string

	// An integer value containing the score given to the container in order to tune OOM killer preferences.

	oom_score_adj?: int

	// Use with the started state to pause running processes inside the container.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	paused?: bool

	// Limit CPU CFS (Completely Fair Scheduler) quota.

	cpu_quota?: int

	// When I(state) is C(present) or C(started), the module compares the configuration of an existing container to requested configuration. The evaluation includes the image version. If the image version in the registry does not match the container, the container will be recreated. You can stop this behavior by setting I(ignore_image) to C(True).
	// *Warning:* This option is ignored if C(image: ignore) or C(*: ignore) is specified in the I(comparisons) option.

	ignore_image?: bool

	// Run an init inside the container that forwards signals and reaps processes.
	// This option requires Docker API >= 1.25.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	init?: bool

	// Override default signal used to kill a running container.

	kill_signal?: string

	// Specification for mounts to be added to the container. More powerful alternative to I(volumes).

	mounts?: [...{...}]

	// Connect the container to a network. Choices are C(bridge), C(host), C(none) or C(container:<name|id>).

	network_mode?: string

	// If true, always pull the latest version of an image. Otherwise, will only pull an image when missing.
	// *Note:* images are only pulled when specified by name. If the image is specified as a image ID (hash), it cannot be pulled.

	pull?: bool

	// List of security options in the form of C("label:user:User").

	security_opts?: [...string]

	// The container volume driver.

	volume_driver?: string

	// Command to execute when the container starts. A command may be either a string or a list.
	// Prior to version 2.4, strings were split on commas.

	command?: _

	// Sets the username or UID used and optionally the groupname or GID for the specified command.
	// Can be of the forms C(user), C(user:group), C(uid), C(uid:gid), C(user:gid) or C(uid:group).

	user?: string

	// Limit CPU CFS (Completely Fair Scheduler) period.

	cpu_period?: int

	// Dictionary of options specific to the chosen I(log_driver).
	// See U(https://docs.docker.com/engine/admin/logging/overview/) for details.

	log_options?: {...}

	// Use with present and started states to force the re-creation of an existing container.

	recreate?: bool

	// Number of seconds to wait for the container to stop before sending C(SIGKILL). When the container is created by this module, its C(StopTimeout) configuration will be set to this value.
	// When the container is stopped, will be used as a timeout for stopping the container. In case the container has a custom C(StopTimeout) configuration, the behavior depends on the version of the docker daemon. New versions of the docker daemon will always use the container's configured C(StopTimeout) value if it has been configured.

	stop_timeout?: int

	// Set the IPC mode for the container.
	// Can be one of C(container:<name|id>) to reuse another container's IPC namespace or C(host) to use the host's IPC namespace within the container.

	ipc_mode?: string

	// Dictionary of key value pairs.

	labels?: {...}

	// Remove the container from ALL networks not included in I(networks) parameter.
	// Any default networks such as C(bridge), if not found in I(networks), will be removed as well.

	purge_networks?: bool

	// Runtime to use for the container.

	runtime?: string

	// Allocate a pseudo-TTY.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	tty?: bool

	// List of host device bindings to add to the container.
	// Each binding is a mapping expressed in the format C(<path_on_host>:<path_in_container>:<cgroup_permissions>).

	devices?: [...string]

	// Command that overwrites the default C(ENTRYPOINT) of the image.

	entrypoint?: [...string]

	// Specify the logging driver. Docker uses C(json-file) by default.
	// See L(here,https://docs.docker.com/config/containers/logging/configure/) for possible choices.

	log_driver?: string

	// Set PIDs limit for the container. It accepts an integer value.
	// Set C(-1) for unlimited PIDs.

	pids_limit?: int

	// List of ulimit options. A ulimit is specified as C(nofile:262144:262144).

	ulimits?: [...string]

	// Use with I(detach=false) to remove the container after successful execution.

	cleanup?: bool

	// List of device and read rate (IO per second) from device.

	device_read_iops?: [...{...}]

	// Use the kill command when stopping a running container.

	force_kill?: bool

	// Repository path and tag used to create the container. If an image is not found or pull is true, the image will be pulled from the registry. If no tag is included, C(latest) will be used.
	// Can also be an image ID. If this is the case, the image is assumed to be available locally. The I(pull) option is ignored for this case.

	image?: string

	// When networks are provided to the module via the I(networks) option, the module behaves differently than C(docker run --network): C(docker run --network other) will create a container with network C(other) attached, but the default network not attached. This module with I(networks: {name: other}) will create a container with both C(default) and C(other) attached. If I(purge_networks) is set to C(yes), the C(default) network will be removed afterwards.
	// If I(networks_cli_compatible) is set to C(yes), this module will behave as C(docker run --network) and will *not* add the default network if I(networks) is specified. If I(networks) is not specified, the default network will be attached.
	// Note that docker CLI also sets I(network_mode) to the name of the first network added if C(--network) is specified. For more compatibility with docker CLI, you explicitly have to set I(network_mode) to the name of the first network you're adding.
	// Current value is C(no). A new default of C(yes) will be set in Ansible 2.12.

	networks_cli_compatible?: bool

	// Override default signal used to stop the container.

	stop_signal?: string

	// Dictionary of key,value pairs.
	// Values which might be parsed as numbers, booleans or other types by the YAML parser must be quoted (e.g. C("true")) in order to avoid data loss.

	env?: {...}

	// Retain volumes associated with a removed container.

	keep_volumes?: bool

	// Total memory limit (memory + swap) in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// Omitting the unit defaults to bytes.

	memory_swap?: string

	// Size of C(/dev/shm) in format C(<number>[<unit>]). Number is positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// Omitting the unit defaults to bytes. If you omit the size entirely, Docker daemon uses C(64M).

	shm_size?: string

	// Enable auto-removal of the container on daemon side when the container's process exits.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C(no).

	auto_remove?: bool

	// List of volumes to mount within the container.
	// Use docker CLI-style syntax: C(/host:/container[:mode])
	// Mount modes can be a comma-separated list of various modes such as C(ro), C(rw), C(consistent), C(delegated), C(cached), C(rprivate), C(private), C(rshared), C(shared), C(rslave), C(slave), and C(nocopy). Note that the docker daemon might not support all modes and combinations of such modes.
	// SELinux hosts can additionally use C(z) or C(Z) to use a shared or private label for the volume.
	// Note that Ansible 2.7 and earlier only supported one mode, which had to be one of C(ro), C(rw), C(z), and C(Z).

	volumes?: [...string]

	// Path to the working directory.

	working_dir?: string

	// Various module options used to have default values. This causes problems with containers which use different values for these options.
	// The default value is C(compatibility), which will ensure that the default values are used when the values are not explicitly specified by the user.
	// From Ansible 2.14 on, the default value will switch to C(no_defaults). To avoid deprecation warnings, please set I(container_default_behavior) to an explicit value.
	// This affects the I(auto_remove), I(detach), I(init), I(interactive), I(memory), I(paused), I(privileged), I(read_only) and I(tty) options.

	container_default_behavior?: string

	// CPU shares (relative weight).

	cpu_shares?: int

	// Memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// Omitting the unit defaults to bytes.
	// If I(container_default_behavior) is set to C(compatiblity) (the default value), this option has a default of C("0").

	memory?: string

	// Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.
	// If not set, the value will be remain the same if container exists and will be inherited from the host machine if it is (re-)created.

	memory_swappiness?: int

	// Assign a name to a new container or match an existing container.
	// When identifying an existing container name may be a name or a long or short container ID.

	name: string

	// Set the UTS namespace mode for the container.

	uts?: string
}

docker_container_info :: {

	// The name of the container to inspect.
	// When identifying an existing container name may be a name or a long or short container ID.

	name: string
}

docker_node :: {

	// User-defined key/value metadata that will be assigned as node attribute.
	// Label operations in this module apply to the docker swarm node specified by I(hostname). Use M(docker_swarm) module to add/modify/remove swarm cluster labels.
	// The actual state of labels assigned to the node when module completes its work depends on I(labels_state) and I(labels_to_remove) parameters values. See description below.

	labels?: {...}

	// It defines the operation on the labels assigned to node and labels specified in I(labels) option.
	// Set to C(merge) to combine labels provided in I(labels) with those already assigned to the node. If no labels are assigned then it will add listed labels. For labels that are already assigned to the node, it will update their values. The labels not specified in I(labels) will remain unchanged. If I(labels) is empty then no changes will be made.
	// Set to C(replace) to replace all assigned labels with provided ones. If I(labels) is empty then all labels assigned to the node will be removed.

	labels_state?: string

	// List of labels that will be removed from the node configuration. The list has to contain only label names, not their values.
	// If the label provided on the list is not assigned to the node, the entry is ignored.
	// If the label is both on the I(labels_to_remove) and I(labels), then value provided in I(labels) remains assigned to the node.
	// If I(labels_state) is C(replace) and I(labels) is not provided or empty then all labels assigned to node are removed and I(labels_to_remove) is ignored.

	labels_to_remove?: [...string]

	// Node role to assign. If not provided then node role remains unchanged.

	role?: string

	// Node availability to assign. If not provided then node availability remains unchanged.

	availability?: string

	// The hostname or ID of node as registered in Swarm.
	// If more than one node is registered using the same hostname the ID must be used, otherwise module will fail.

	hostname: string
}

docker_node_info :: {

	// The name of the node to inspect.
	// The list of nodes names to inspect.
	// If empty then return information of all nodes in Swarm cluster.
	// When identifying the node use either the hostname of the node (as registered in Swarm) or node ID.
	// If I(self) is C(true) then this parameter is ignored.

	name?: [...string]

	// If C(true), queries the node (i.e. the docker daemon) the module communicates with.
	// If C(true) then I(name) is ignored.
	// If C(false) then query depends on I(name) presence and value.

	self?: bool
}

docker_prune :: {

	// Whether to prune containers.

	containers?: bool

	// A dictionary of filter values used for selecting containers to delete.
	// For example, C(until: 24h).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/container_prune/#filtering) for more information on possible filters.

	containers_filters?: {...}

	// Whether to prune images.

	images?: bool

	// A dictionary of filter values used for selecting images to delete.
	// For example, C(dangling: true).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/image_prune/#filtering) for more information on possible filters.

	images_filters?: {...}

	// Whether to prune networks.

	networks?: bool

	// Whether to prune volumes.

	volumes?: bool

	// Whether to prune the builder cache.
	// Requires version 3.3.0 of the Docker SDK for Python or newer.

	builder_cache?: bool

	// A dictionary of filter values used for selecting networks to delete.
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/network_prune/#filtering) for more information on possible filters.

	networks_filters?: {...}

	// A dictionary of filter values used for selecting volumes to delete.
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/volume_prune/#filtering) for more information on possible filters.

	volumes_filters?: {...}
}

docker_swarm :: {

	// The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.
	// This must not be a path to a certificate, but the contents of the certificate.
	// Requires API version >= 1.30.

	signing_ca_cert?: string

	// The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.
	// This must not be a path to a key, but the contents of the key.
	// Requires API version >= 1.30.

	signing_ca_key?: string

	// Set to C(present), to create/update a new cluster.
	// Set to C(join), to join an existing cluster.
	// Set to C(absent), to leave an existing cluster.
	// Set to C(remove), to remove an absent node from the cluster. Note that removing requires Docker SDK for Python >= 2.4.0.
	// Set to C(inspect) to display swarm informations.

	state: string

	// Externally reachable address advertised to other nodes.
	// This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).
	// If the port number is omitted, the port number from the listen address is used.
	// If I(advertise_addr) is not specified, it will be automatically detected when possible.
	// Only used when swarm is initialised or joined. Because of this it's not considered for idempotency checking.

	advertise_addr?: string

	// Number of snapshots to keep beyond the current snapshot.
	// Docker default value is C(0).

	keep_old_snapshots?: int

	// Number of log entries to keep around to sync up slow followers after a snapshot is created.

	log_entries_for_slow_followers?: int

	// Rotate the manager join token.

	rotate_manager_token?: bool

	// The name of the swarm.

	name?: string

	// Automatic expiry for nodes certificates.
	// Docker default value is C(3months).

	node_cert_expiry?: int

	// Swarm id of the node to remove.
	// Used with I(state=remove).

	node_id?: string

	// If set, generate a key and use it to lock data stored on the managers.
	// Docker default value is C(no).
	// M(docker_swarm_info) can be used to retrieve the unlock key.

	autolock_managers?: bool

	// The delay for an agent to send a heartbeat to the dispatcher.
	// Docker default value is C(5s).

	dispatcher_heartbeat_period?: int

	// Amount of ticks (in seconds) needed without a leader to trigger a new election.
	// Docker default value is C(10s).

	election_tick?: int

	// Amount of ticks (in seconds) between each heartbeat.
	// Docker default value is C(1s).

	heartbeat_tick?: int

	// An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified.
	// Docker default value is C(0).
	// Requires API version >= 1.30.

	ca_force_rotate?: int

	// Remote address of one or more manager nodes of an existing Swarm to connect to.
	// Used with I(state=join).

	remote_addrs?: [...string]

	// Rotate the worker join token.

	rotate_worker_token?: bool

	// Number of logs entries between snapshot.
	// Docker default value is C(10000).

	snapshot_interval?: int

	// Listen address used for inter-manager communication.
	// This can either be an address/port combination in the form C(192.168.1.1:4567), or an interface followed by a port number, like C(eth0:4567).
	// If the port number is omitted, the default swarm listening port is used.
	// Only used when swarm is initialised or joined. Because of this it's not considered for idempotency checking.

	listen_addr?: string

	// Default address pool subnet mask length.
	// Only used when swarm is initialised. Because of this it's not considered for idempotency checking.
	// Requires API version >= 1.39.

	subnet_size?: int

	// Maximum number of tasks history stored.
	// Docker default value is C(5).

	task_history_retention_limit?: int

	// Default address pool in CIDR format.
	// Only used when swarm is initialised. Because of this it's not considered for idempotency checking.
	// Requires API version >= 1.39.

	default_addr_pool?: [...string]

	// Use with state C(present) to force creating a new Swarm, even if already part of one.
	// Use with state C(absent) to Leave the swarm even if this node is a manager.

	force?: bool

	// Swarm token used to join a swarm cluster.
	// Used with I(state=join).

	join_token?: string

	// User-defined key/value metadata.
	// Label operations in this module apply to the docker swarm cluster. Use M(docker_node) module to add/modify/remove swarm node labels.
	// Requires API version >= 1.32.

	labels?: {...}
}

docker_swarm_service :: {

	// Fraction of tasks that may fail during an update before the failure action is invoked.
	// Corresponds to the C(--update-max-failure-ratio) option of C(docker service create).
	// Requires API version >= 1.25.
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.max_failure_ratio) instead.

	update_max_failure_ratio?: float

	// Service CPU reservation. C(0) equals no reservation.
	// Corresponds to the C(--reserve-cpu) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(reservations.cpus) instead.

	reserve_cpu?: float

	// Configures service placement preferences and constraints.

	placement?: {...}

	// List of dictionaries describing the service mounts.
	// Corresponds to the C(--mount) option of C(docker service create).

	mounts?: [...{...}]

	// Service replication mode.
	// Service will be removed and recreated when changed.
	// Corresponds to the C(--mode) option of C(docker service create).

	mode?: string

	// List of dictionaries describing the service published ports.
	// Corresponds to the C(--publish) option of C(docker service create).
	// Requires API version >= 1.25.

	publish?: [...{...}]

	// Dictionary of key value pairs.
	// Corresponds to the C(--label) option of C(docker service create).

	labels?: {...}

	// List or dictionary of the service environment variables.
	// If passed a list each items need to be in the format of C(KEY=VALUE).
	// If passed a dictionary values which might be parsed as numbers, booleans or other types by the YAML parser must be quoted (e.g. C("true")) in order to avoid data loss.
	// Corresponds to the C(--env) option of C(docker service create).

	env?: _

	// Configure a check that is run to determine whether or not containers for this service are "healthy". See the docs for the L(HEALTHCHECK Dockerfile instruction,https://docs.docker.com/engine/reference/builder/#healthcheck) for details on how healthchecks work.
	// I(interval), I(timeout) and I(start_period) are specified as durations. They accept duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Requires API version >= 1.25.

	healthcheck?: {...}

	// Configures if and how to restart containers when they exit.

	restart_config?: {...}

	// Time to wait before force killing a container.
	// Accepts a duration as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Corresponds to the C(--stop-grace-period) option of C(docker service create).

	stop_grace_period?: string

	// Configures how the service should be updated. Useful for configuring rolling updates.

	update_config?: {...}

	// Time to monitor updated tasks for failures.
	// Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Corresponds to the C(--update-monitor) option of C(docker service create).
	// Requires API version >= 1.25.
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.monitor) instead.

	update_monitor?: _

	// List of custom DNS options.
	// Corresponds to the C(--dns-option) option of C(docker service create).
	// Requires API version >= 1.25.

	dns_options?: [...string]

	// Service name.
	// Corresponds to the C(--name) option of C(docker service create).

	name: string

	// Number of containers instantiated in the service. Valid only if I(mode) is C(replicated).
	// If set to C(-1), and service is not present, service replicas will be set to C(1).
	// If set to C(-1), and service is present, service replicas will be unchanged.
	// Corresponds to the C(--replicas) option of C(docker service create).

	replicas?: int

	// Options for service logging driver.
	// Corresponds to the C(--log-opt) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(logging.options) instead.

	log_driver_options?: {...}

	// Delay between restarts.
	// Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Corresponds to the C(--restart-delay) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.delay) instead.

	restart_policy_delay?: _

	// Sets the username or UID used for the specified command.
	// Before Ansible 2.8, the default value for this option was C(root).
	// The default has been removed so that the user defined in the image is used if no user is specified here.
	// Corresponds to the C(--user) option of C(docker service create).

	user?: string

	// Logging configuration for the service.

	logging?: {...}

	// Dict of host-to-IP mappings, where each host name is a key in the dictionary. Each host name will be added to the container's /etc/hosts file.
	// Corresponds to the C(--host) option of C(docker service create).
	// Requires API version >= 1.25.

	hosts?: {...}

	// Override default signal used to stop the container.
	// Corresponds to the C(--stop-signal) option of C(docker service create).

	stop_signal?: string

	// Force update even if no changes require it.
	// Corresponds to the C(--force) option of C(docker service update).
	// Requires API version >= 1.25.

	force_update?: bool

	// Restart policy evaluation window.
	// Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Corresponds to the C(--restart-window) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.window) instead.

	restart_policy_window?: _

	// Specifies the order of operations when rolling out an updated task.
	// Corresponds to the C(--update-order) option of C(docker service create).
	// Requires API version >= 1.29.
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.order) instead.

	update_order?: string

	// Mount the containers root filesystem as read only.
	// Corresponds to the C(--read-only) option of C(docker service create).

	read_only?: bool

	// Container hostname.
	// Corresponds to the C(--hostname) option of C(docker service create).
	// Requires API version >= 1.25.

	hostname?: string

	// Service image path and tag.
	// Corresponds to the C(IMAGE) parameter of C(docker service create).

	image: string

	// If the current image digest should be resolved from registry and updated if changed.
	// Requires API version >= 1.30.

	resolve_image?: bool

	// Restart condition of the service.
	// Corresponds to the C(--restart-condition) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.condition) instead.

	restart_policy?: string

	// Path to the working directory.
	// Corresponds to the C(--workdir) option of C(docker service create).

	working_dir?: string

	// Service endpoint mode.
	// Corresponds to the C(--endpoint-mode) option of C(docker service create).
	// Requires API version >= 1.25.

	endpoint_mode?: string

	// Dictionary of key value pairs.
	// Corresponds to the C(--container-label) option of C(docker service create).

	container_labels?: {...}

	// List of additional group names and/or IDs that the container process will run as.
	// Corresponds to the C(--group) option of C(docker service update).
	// Requires API version >= 1.25.

	groups?: [...string]

	// List of the service networks names or dictionaries.
	// When passed dictionaries valid sub-options are I(name), which is required, and I(aliases) and I(options).
	// Prior to API version 1.29, updating and removing networks is not supported. If changes are made the service will then be removed and recreated.
	// Corresponds to the C(--network) option of C(docker service create).

	networks?: [..._]

	// Service memory reservation in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// C(0) equals no reservation.
	// Omitting the unit defaults to bytes.
	// Corresponds to the C(--reserve-memory) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(reservations.memory) instead.

	reserve_memory?: string

	// Allocate a pseudo-TTY.
	// Corresponds to the C(--tty) option of C(docker service create).
	// Requires API version >= 1.25.

	tty?: bool

	// List of the service constraints.
	// Corresponds to the C(--constraint) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(placement.constraints) instead.

	constraints?: [...string]

	// Service CPU limit. C(0) equals no limit.
	// Corresponds to the C(--limit-cpu) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(limits.cpus) instead.

	limit_cpu?: float

	// List of dictionaries describing the service secrets.
	// Corresponds to the C(--secret) option of C(docker service create).
	// Requires API version >= 1.25.

	secrets?: [...{...}]

	// Rolling update delay.
	// Accepts a duration as an integer in nanoseconds or as a string in a format that look like: C(5h34m56s), C(1m30s) etc. The supported units are C(us), C(ms), C(s), C(m) and C(h).
	// Corresponds to the C(--update-delay) option of C(docker service create).
	// Before Ansible 2.8, the default value for this option was C(10).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.delay) instead.

	update_delay?: _

	// Configures how the service should be rolled back in case of a failing update.

	rollback_config?: {...}

	// Service memory limit in format C(<number>[<unit>]). Number is a positive integer. Unit can be C(B) (byte), C(K) (kibibyte, 1024B), C(M) (mebibyte), C(G) (gibibyte), C(T) (tebibyte), or C(P) (pebibyte).
	// C(0) equals no limit.
	// Omitting the unit defaults to bytes.
	// Corresponds to the C(--limit-memory) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(limits.memory) instead.

	limit_memory?: string

	// Command to execute when the container starts.
	// A command may be either a string or a list or a list of strings.
	// Corresponds to the C(COMMAND) parameter of C(docker service create).

	command?: _

	// List of dictionaries describing the service configs.
	// Corresponds to the C(--config) option of C(docker service create).
	// Requires API version >= 1.30.

	configs?: [...{...}]

	// List of custom DNS servers.
	// Corresponds to the C(--dns) option of C(docker service create).
	// Requires API version >= 1.25.

	dns?: [...string]

	// List arguments to be passed to the container.
	// Corresponds to the C(ARG) parameter of C(docker service create).

	args?: [...string]

	// Configure the logging driver for a service.
	// Corresponds to the C(--log-driver) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(logging.driver) instead.

	log_driver?: string

	// List of custom DNS search domains.
	// Corresponds to the C(--dns-search) option of C(docker service create).
	// Requires API version >= 1.25.

	dns_search?: [...string]

	// Maximum number of service restarts.
	// Corresponds to the C(--restart-condition) option of C(docker service create).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(restart_config.max_attempts) instead.

	restart_policy_attempts?: int

	// Action to take in case of container failure.
	// Corresponds to the C(--update-failure-action) option of C(docker service create).
	// Usage of I(rollback) requires API version >= 1.29.
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.failure_action) instead.

	update_failure_action?: string

	// Rolling update parallelism.
	// Corresponds to the C(--update-parallelism) option of C(docker service create).
	// Before Ansible 2.8, the default value for this option was C(1).
	// Deprecated in 2.8, will be removed in 2.12. Use parameter C(update_config.parallelism) instead.

	update_parallelism?: int

	// Configures service resource reservations.

	reservations?: {...}

	// Configures service resource limits.

	limits?: {...}

	// C(absent) - A service matching the specified name will be removed and have its tasks stopped.
	// C(present) - Asserts the existence of a service matching the name and provided configuration parameters. Unspecified configuration parameters will be set to docker defaults.

	state: string

	// List of paths to files, present on the target, containing environment variables C(FOO=BAR).
	// The order of the list is significant in determining the value assigned to a variable that shows up more than once.
	// If variable also present in I(env), then I(env) value will override.

	env_files?: [...string]
}

docker_volume_info :: {

	// Name of the volume to inspect.

	name: string
}

docker_host_info :: {

	// Whether to list networks.

	networks?: bool

	// A dictionary of filter values used for selecting networks to delete.
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/network_prune/#filtering) for more information on possible filters.

	networks_filters?: {...}

	// Whether to list volumes.

	volumes?: bool

	// A dictionary of filter values used for selecting volumes to delete.
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/volume_prune/#filtering) for more information on possible filters.

	volumes_filters?: {...}

	// Whether to list containers.

	containers?: bool

	// Summary information on used disk space by all Docker layers.
	// The output is a sum of images, volumes, containers and build cache.

	disk_usage?: bool

	// Whether to list images.

	images?: bool

	// A dictionary of filter values used for selecting containers to delete.
	// For example, C(until: 24h).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/container_prune/#filtering) for more information on possible filters.

	containers_filters?: {...}

	// A dictionary of filter values used for selecting images to delete.
	// For example, C(dangling: true).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/image_prune/#filtering) for more information on possible filters.

	images_filters?: {...}

	// When set to C(yes) and I(networks), I(volumes), I(images), I(containers) or I(disk_usage) is set to C(yes) then output will contain verbose information about objects matching the full output of API method. For details see the documentation of your version of Docker API at L(https://docs.docker.com/engine/api/).
	// The verbose output in this module contains only subset of information returned by I(_info) module for each type of the objects.

	verbose_output?: bool
}

docker_image_info :: {

	// An image name or a list of image names. Name format will be C(name[:tag]) or C(repository/name[:tag]), where C(tag) is optional. If a tag is not provided, C(latest) will be used. Instead of image names, also image IDs can be used.

	name: [...string]
}

docker_network_info :: {

	// The name of the network to inspect.
	// When identifying an existing network name may be a name or a long or short network ID.

	name: string
}

docker_swarm_service_info :: {

	// The name of the service to inspect.

	name: string
}

docker_network :: {

	// List of container names or container IDs to connect to a network.

	connected?: [...string]

	// Dictionary of network settings. Consult docker docs for valid options and values.

	driver_options?: {...}

	// Enable IPv6 networking.

	enable_ipv6?: bool

	// Specify an IPAM driver.

	ipam_driver?: string

	// Dictionary of labels.

	labels?: {...}

	// C(absent) deletes the network. If a network has connected containers, it cannot be deleted. Use the I(force) option to disconnect all containers and delete the network.
	// C(present) creates the network, if it does not already exist with the specified parameters, and connects the list of containers provided via the connected parameter. Containers not on the list will be disconnected. An empty list will leave no containers connected to the network. Use the I(appends) option to leave existing containers connected. Use the I(force) options to force re-creation of the network.

	state?: string

	// If enabled, and the network is in the global scope, non-service containers on worker nodes will be able to connect to the network.

	attachable?: bool

	// With state C(absent) forces disconnecting all containers from the network prior to deleting the network. With state C(present) will disconnect all containers, delete the network and re-create the network.
	// This option is required if you have changed the IPAM or driver options and want an existing network to be updated to use the new options.

	force?: bool

	// Restrict external access to the network.

	internal?: bool

	// List of IPAM config blocks. Consult L(Docker docs,https://docs.docker.com/compose/compose-file/compose-file-v2/#ipam) for valid options and values. Note that I(iprange) is spelled differently here (we use the notation from the Docker SDK for Python).

	ipam_config?: [...{...}]

	// Name of the network to operate on.

	name: string

	// By default the connected list is canonical, meaning containers not on the list are removed from the network.
	// Use I(appends) to leave existing containers connected.

	appends?: bool

	// Specify the type of network. Docker provides bridge and overlay drivers, but 3rd party drivers can also be used.

	driver?: string

	// Dictionary of IPAM driver options.

	ipam_driver_options?: {...}

	// Dictionary of IPAM options.
	// Deprecated in 2.8, will be removed in 2.12. Use parameter I(ipam_config) instead. In Docker 1.10.0, IPAM options were introduced (see L(here,https://github.com/moby/moby/pull/17316)). This module parameter addresses the IPAM config not the newly introduced IPAM options. For the IPAM options, see the I(ipam_driver_options) parameter.

	ipam_options?: {...}

	// Specify the network's scope.

	scope?: string
}

docker_swarm_info :: {

	// Whether to list swarm nodes.

	nodes?: bool

	// A dictionary of filter values used for selecting nodes to list.
	// For example, C(name: mynode).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/node_ls/#filtering) for more information on possible filters.

	nodes_filters?: {...}

	// Whether to list swarm services.

	services?: bool

	// A dictionary of filter values used for selecting services to list.
	// For example, C(name: myservice).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/service_ls/#filtering) for more information on possible filters.

	services_filters?: {...}

	// Whether to list containers.

	tasks?: bool

	// A dictionary of filter values used for selecting tasks to list.
	// For example, C(node: mynode-1).
	// See L(the docker documentation,https://docs.docker.com/engine/reference/commandline/service_ps/#filtering) for more information on possible filters.

	tasks_filters?: {...}

	// Whether to retrieve the swarm unlock key.

	unlock_key?: bool

	// When set to C(yes) and I(nodes), I(services) or I(tasks) is set to C(yes), then the module output will contain verbose information about objects matching the full output of API method.
	// For details see the documentation of your version of Docker API at U(https://docs.docker.com/engine/api/).
	// The verbose output in this module contains only subset of information returned by I(_info) module for each type of the objects.

	verbose_output?: bool
}

docker_volume :: {

	// Controls when a volume will be recreated when I(state) is C(present). Please note that recreating an existing volume will cause **any data in the existing volume to be lost!** The volume will be deleted and a new volume with the same name will be created.
	// The value C(always) forces the volume to be always recreated.
	// The value C(never) makes sure the volume will not be recreated.
	// The value C(options-changed) makes sure the volume will be recreated if the volume already exist and the driver, driver options or labels differ.

	recreate?: string

	// C(absent) deletes the volume.
	// C(present) creates the volume, if it does not already exist.

	state?: string

	// Name of the volume to operate on.

	volume_name: string

	// Specify the type of volume. Docker provides the C(local) driver, but 3rd party drivers can also be used.

	driver?: string

	// Dictionary of volume settings. Consult docker docs for valid options and values: U(https://docs.docker.com/engine/reference/commandline/volume_create/#driver-specific-options)

	driver_options?: {...}

	// With state C(present) causes the volume to be deleted and recreated if the volume already exist and the driver, driver options or labels differ. This will cause any data in the existing volume to be lost.
	// Deprecated. Will be removed in Ansible 2.12. Set I(recreate) to C(options-changed) instead for the same behavior of setting I(force) to C(yes).

	force?: bool

	// Dictionary of label key/values to set for the volume

	labels?: {...}
}
