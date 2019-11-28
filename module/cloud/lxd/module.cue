package lxd

lxd_container :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	lxd_container: {

		// The client certificate file path.

		client_cert?: string

		// The devices for the container (e.g. { "rootfs": { "path": "/dev/kvm", "type": "unix-char" }). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)

		devices?: string

		// The source for the container (e.g. { "type": "image", "mode": "pull", "server": "https://images.linuxcontainers.org", "protocol": "lxd", "alias": "ubuntu/xenial/amd64" }).
		// See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1) for complete API documentation.
		// Note that C(protocol) accepts two choices: C(lxd) or C(simplestreams)

		source?: string

		// The client trusted password.
		// You need to set this password on the LXD server before running this module using the following command. lxc config set core.trust_password <some random password> See U(https://www.stgraber.org/2016/04/18/lxd-api-direct-interaction/)
		// If trust_password is set, this module send a request for authentication before sending any requests.

		trust_password?: string

		// The architecture for the container (e.g. "x86_64" or "i686"). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)

		architecture?: string

		// Whether or not the container is ephemeral (e.g. true or false). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)

		ephemeral?: bool

		// The unix domain socket path or the https URL for the LXD server.

		url?: string

		// The client certificate key file path.

		client_key?: string

		// Name of a container.

		name: string

		// A timeout for changing the state of the container.
		// This is also used as a timeout for waiting until IPv4 addresses are set to the all network interfaces in the container after starting or restarting.

		timeout?: string

		// If this is true, the C(lxd_container) waits until IPv4 addresses are set to the all network interfaces in the container after starting or restarting.

		wait_for_ipv4_addresses?: bool

		// The config for the container (e.g. {"limits.cpu": "2"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-1)
		// If the container already exists and its "config" value in metadata obtained from GET /1.0/containers/<name> U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#10containersname) are different, they this module tries to apply the configurations.
		// The key starts with 'volatile.' are ignored for this comparison.
		// Not all config values are supported to apply the existing container. Maybe you need to delete and recreate a container.

		config?: string

		// If this is true, the C(lxd_container) forces to stop the container when it stops or restarts the container.

		force_stop?: bool

		// The unix domain socket path when LXD is installed by snap package manager.

		snap_url?: string

		// Define the state of a container.

		state?: string
	}
}

lxd_profile :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	lxd_profile: {

		// The client certificate file path.

		client_cert?: string

		// The client certificate key file path.

		client_key?: string

		// The config for the container (e.g. {"limits.memory": "4GB"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3)
		// If the profile already exists and its "config" value in metadata obtained from GET /1.0/profiles/<name> U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#get-19) are different, they this module tries to apply the configurations.
		// Not all config values are supported to apply the existing profile. Maybe you need to delete and recreate a profile.

		config?: string

		// Description of the profile.

		description?: string

		// A new name of a profile.
		// If this parameter is specified a profile will be renamed to this name. See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-11)

		new_name?: string

		// Define the state of a profile.

		state?: string

		// The client trusted password.
		// You need to set this password on the LXD server before running this module using the following command. lxc config set core.trust_password <some random password> See U(https://www.stgraber.org/2016/04/18/lxd-api-direct-interaction/)
		// If trust_password is set, this module send a request for authentication before sending any requests.

		trust_password?: string

		// The devices for the profile (e.g. {"rootfs": {"path": "/dev/kvm", "type": "unix-char"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3)

		devices?: string

		// Name of a profile.

		name: string

		// The unix domain socket path when LXD is installed by snap package manager.

		snap_url?: string

		// The unix domain socket path or the https URL for the LXD server.

		url?: string
	}
}
