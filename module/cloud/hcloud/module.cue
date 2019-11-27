package hcloud

hcloud_floating_ip :: {

	// Force the assignment or deletion of the Floating IP.

	force?: bool

	// Home Location of the Hetzner Cloud Floating IP.
	// Required if no I(server) is given and Floating IP does not exists.

	home_location?: string

	// User-defined labels (key-value pairs).

	labels?: {...}

	// Server Name the Floating IP should be assigned to.
	// Required if no I(home_location) is given and Floating IP does not exists.

	server?: string

	// State of the Floating IP.

	state?: string

	// The Description of the Hetzner Cloud Floating IPs.

	description?: string

	// The ID of the Hetzner Cloud Floating IPs to manage.
	// Only required if no Floating IP I(name) is given.

	id?: int

	// The Name of the Hetzner Cloud Floating IPs to manage.
	// Only required if no Floating IP I(id) is given or a Floating IP does not exists.

	name?: string

	// Type of the Floating IP.
	// Required if Floating IP does not exists

	type?: string

	// Protect the Floating IP for deletion.

	delete_protection?: bool
}

hcloud_ssh_key :: {

	// The Name of the Hetzner Cloud ssh_key to manage.
	// Only required if no ssh_key I(id) is given or a ssh_key does not exists.

	name?: string

	// The Public Key to add.
	// Required if ssh_key does not exists.

	public_key?: string

	// State of the ssh_key.

	state?: string

	// The Fingerprint of the Hetzner Cloud ssh_key to manage.
	// Only required if no ssh_key I(id) or I(name) is given.

	fingerprint?: string

	// The ID of the Hetzner Cloud ssh_key to manage.
	// Only required if no ssh_key I(name) is given

	id?: int

	// User-defined labels (key-value pairs)

	labels?: {...}
}

hcloud_ssh_key_info :: {

	// The fingerprint of the ssh key you want to get.

	fingerprint?: string

	// The ID of the ssh key you want to get.

	id?: int

	// The label selector for the ssh key you want to get.

	label_selector?: string

	// The name of the ssh key you want to get.

	name?: string
}

hcloud_network :: {

	// Protect the Network for deletion.

	delete_protection?: bool

	// The ID of the Hetzner Cloud Networks to manage.
	// Only required if no Network I(name) is given.

	id?: int

	// IP range of the Network.
	// Required if Network does not exists.

	ip_range?: string

	// User-defined labels (key-value pairs).

	labels?: {...}

	// The Name of the Hetzner Cloud Network to manage.
	// Only required if no Network I(id) is given or a Network does not exists.

	name?: string

	// State of the Network.

	state?: string
}

hcloud_server_info :: {

	// The ID of the server you want to get.

	id?: int

	// The label selector for the server you want to get.

	label_selector?: string

	// The name of the server you want to get.

	name?: string
}

hcloud_server_type_info :: {

	// The ID of the server type you want to get.

	id?: int

	// The name of the server type you want to get.

	name?: string
}

hcloud_volume_info :: {

	// The name of the Volume you want to get.

	name?: string

	// The ID of the Volume you want to get.

	id?: int

	// The label selector for the Volume you want to get.

	label_selector?: string
}

hcloud_datacenter_info :: {

	// The ID of the datacenter you want to get.

	id?: int

	// The name of the datacenter you want to get.

	name?: string
}

hcloud_floating_ip_info :: {

	// The ID of the Floating IP you want to get.

	id?: int

	// The label selector for the Floating IP you want to get.

	label_selector?: string
}

hcloud_location_info :: {

	// The ID of the location you want to get.

	id?: int

	// The name of the location you want to get.

	name?: string
}

hcloud_network_info :: {

	// The name of the network you want to get.

	name?: string

	// The ID of the network you want to get.

	id?: int

	// The label selector for the network you want to get.

	label_selector?: string
}

hcloud_server :: {

	// Datacenter of Server.
	// Required of no I(location) is given and server does not exists.

	datacenter?: string

	// The ID of the Hetzner Cloud server to manage.
	// Only required if no server I(name) is given

	id?: int

	// Location of Server.
	// Required if no I(datacenter) is given and server does not exists.

	location?: string

	// Protect the Server for rebuild.
	// Needs to be the same as I(delete_protection).

	rebuild_protection?: bool

	// User Data to be passed to the server on creation.
	// Only used if server does not exists.

	user_data?: string

	// Image the server should be created from.
	// Required if server does not exists.

	image?: string

	// User-defined labels (key-value pairs).

	labels?: {...}

	// The Name of the Hetzner Cloud server to manage.
	// Only required if no server I(id) is given or a server does not exists.

	name?: string

	// List of SSH key names
	// The key names correspond to the SSH keys configured for your Hetzner Cloud account access.

	ssh_keys?: [..._]

	// Force the upgrade of the server.
	// Power off the server if it is running on upgrade.

	force_upgrade?: bool

	// Add the Hetzner rescue system type you want the server to be booted into.

	rescue_mode?: string

	// Resize the disk size, when resizing a server.
	// If you want to downgrade the server later, this value should be False.

	upgrade_disk?: bool

	// List of Volumes IDs that should be attached to the server on server creation.

	volumes?: [..._]

	// Enable or disable Backups for the given Server.

	backups?: bool

	// Protect the Server for deletion.
	// Needs to be the same as I(rebuild_protection).

	delete_protection?: bool

	// The Server Type of the Hetzner Cloud server to manage.
	// Required if server does not exists.

	server_type?: string

	// State of the server.

	state?: string
}

hcloud_image_info :: {

	// The label selector for the images you want to get.

	type?: string

	// The ID of the image you want to get.

	id?: int

	// The label selector for the images you want to get.

	label_selector?: string

	// The name of the image you want to get.

	name?: string
}

hcloud_rdns :: {

	// State of the reverse DNS entry.

	state?: string

	// The DNS address the I(ip_address) should resolve to.
	// Omit the param to reset the reverse DNS entry to the default value.

	dns_ptr?: string

	// The IP address that should point to I(dns_ptr).

	ip_address: string

	// The name of the Hetzner Cloud server you want to add the reverse DNS entry to.

	server: string
}

hcloud_route :: {

	// Destination network or host of this route.

	destination: string

	// Gateway for the route.

	gateway: string

	// The name of the Hetzner Cloud Network.

	network: string

	// State of the route.

	state?: string
}

hcloud_server_network :: {

	// Alias IPs the server has.

	alias_ips?: [..._]

	// The IP the server should have.

	ip?: string

	// The name of the Hetzner Cloud Networks.

	network: string

	// The name of the Hetzner Cloud server.

	server: string

	// State of the server_network.

	state?: string
}

hcloud_subnetwork :: {

	// IP range of the subnetwork.

	ip_range: string

	// The ID or Name  of the Hetzner Cloud Networks.

	network: string

	// Name of network zone.

	network_zone: string

	// State of the subnetwork.

	state?: string

	// Type of subnetwork.

	type: string
}

hcloud_volume :: {

	// User-defined key-value pairs.

	labels?: {...}

	// Location of the Hetzner Cloud Volume.
	// Required if no I(server) is given and Volume does not exists.

	location?: string

	// The Name of the Hetzner Cloud Block Volume to manage.
	// Only required if no volume I(id) is given or a volume does not exists.

	name?: string

	// Server Name the Volume should be assigned to.
	// Required if no I(location) is given and Volume does not exists.

	server?: string

	// State of the Volume.

	state?: string

	// Automatically Format the volume on creation
	// Can only be used in case the Volume does not exists.

	format?: string

	// The ID of the Hetzner Cloud Block Volume to manage.
	// Only required if no volume I(name) is given

	id?: int

	// The size of the Block Volume in GB.
	// Required if volume does not yet exists.

	size?: int

	// Automatically mount the Volume.

	automount?: bool

	// Protect the Volume for deletion.

	delete_protection?: bool
}
