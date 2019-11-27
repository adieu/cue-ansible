package digital_ocean

digital_ocean_load_balancer_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_load_balancer_info: {

		load_balancer_id?: string

		// Load balancer ID that can be used to identify and reference a load_balancer.
	}
}

digital_ocean_snapshot_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_snapshot_info: {

		// To retrieve information about a snapshot, please specify this as a snapshot id.
		// If set to actual snapshot id, then information are gathered related to that particular snapshot only.
		// This is required parameter, if C(snapshot_type) is set to C(by_id).

		snapshot_id?: string

		// Specifies the type of snapshot information to be retrieved.
		// If set to C(droplet), then information are gathered related to snapshots based on Droplets only.
		// If set to C(volume), then information are gathered related to snapshots based on volumes only.
		// If set to C(by_id), then information are gathered related to snapshots based on snapshot id only.
		// If not set to any of the above, then information are gathered related to all snapshots.

		snapshot_type?: string
	}
}

digital_ocean_sshkey_facts :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_sshkey_facts: {
	}
}

digital_ocean_volume_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_volume_info: {

		region_name?: string

		// Name of region to restrict results to volumes available in a specific region.
		// Please use M(digital_ocean_region_info) for getting valid values related regions.
	}
}

digital_ocean :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean: {

		// How long before wait gives up, in seconds.

		wait_timeout?: string

		// Bool, turn on virtio driver in droplet for improved network and storage I/O.

		virtio?: bool

		// Numeric, the droplet id you want to operate on.

		id?: string

		// Optional, Boolean, enable IPv6 for your droplet.

		ipv6?: bool

		// Bool, add an additional, private network interface to droplet for inter-droplet communication.

		private_networking?: bool

		// The public SSH key you want to add to your account.

		ssh_pub_key?: string

		// Bool, require unique hostnames.  By default, DigitalOcean allows multiple hosts with the same name.  Setting this to "yes" allows only one host per name.  Useful for idempotence.

		unique_name?: bool

		// Wait for the droplet to be in state 'running' before returning.  If wait is "no" an ip_address may not be returned.

		wait?: bool

		// String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key.

		name?: string

		// This is the slug of the region you would like your server to be created in.

		region_id?: string

		// This is the slug of the size you would like the droplet created with.

		size_id?: string

		// Indicate desired state of the target.

		state?: string

		// Optional, array of SSH key (numeric) ID that you would like to be added to the server.

		ssh_key_ids?: string

		// opaque blob of data which is made available to the droplet

		user_data?: string

		// DigitalOcean api token.

		api_token?: string

		// Optional, Boolean, enables backups for your droplet.

		backups_enabled?: bool

		// Which target you want to operate on.

		command?: string

		// This is the slug of the image you would like the droplet created with.

		image_id?: string
	}
}

digital_ocean_domain_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_domain_info: {

		domain_name?: string

		// Name of the domain to gather information for.
	}
}

digital_ocean_droplet :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_droplet: {

		// Numeric, the droplet id you want to operate on.

		id?: string

		// DigitalOcean OAuth token. Can be specified in C(DO_API_KEY), C(DO_API_TOKEN), or C(DO_OAUTH_TOKEN) environment variables

		oauth_token: string

		// Indicate desired state of the target.

		state?: string

		// require unique hostnames.  By default, DigitalOcean allows multiple hosts with the same name.  Setting this to "yes" allows only one host per name.  Useful for idempotence.

		unique_name?: bool

		// List, A list including the unique string identifier for each Block Storage volume to be attached to the Droplet.

		volumes?: string

		// How long before wait gives up, in seconds, when creating a droplet.

		wait_timeout?: string

		// indicates whether automated backups should be enabled.

		backups?: bool

		// This is the slug of the image you would like the droplet created with.

		image?: string

		// add an additional, private network interface to droplet for inter-droplet communication.

		private_networking?: bool

		// This is the slug of the region you would like your server to be created in.

		region?: string

		// array of SSH key (numeric) ID that you would like to be added to the server.

		ssh_keys?: string

		// List, A list of tag names as strings to apply to the Droplet after it is created. Tag names can either be existing or new tags.

		tags?: string

		// enable IPv6 for your droplet.

		ipv6?: bool

		// String, this is the name of the droplet - must be formatted by hostname rules.

		name?: string

		// indicates whether to install the DigitalOcean agent for monitoring.

		monitoring?: bool

		// This is the slug of the size you would like the droplet created with.

		size?: string

		// opaque blob of data which is made available to the droplet

		user_data?: string

		// Wait for the droplet to be active before returning.  If wait is "no" an ip_address may not be returned.

		wait?: bool
	}
}

digital_ocean_floating_ip :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_floating_ip: {

		// The Droplet that the Floating IP has been assigned to.

		droplet_id?: string

		// Public IP address of the Floating IP. Used to remove an IP

		ip?: string

		// DigitalOcean OAuth token.

		oauth_token: string

		// The region that the Floating IP is reserved to.

		region?: string

		// Indicate desired state of the target.

		state?: string
	}
}

digital_ocean_floating_ip_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_floating_ip_info: {
	}
}

digital_ocean_region_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_region_info: {
	}
}

digital_ocean_size_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_size_info: {
	}
}

digital_ocean_sshkey_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_sshkey_info: {
	}
}

digital_ocean_certificate_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_certificate_info: {

		certificate_id?: string

		// Certificate ID that can be used to identify and reference a certificate.
	}
}

digital_ocean_domain :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_domain: {

		// String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key, or the name of a domain.

		name?: string

		// Indicate desired state of the target.

		state?: string

		// Numeric, the droplet id you want to operate on.

		id?: string

		// An 'A' record for '@' ($ORIGIN) will be created with the value 'ip'.  'ip' is an IP version 4 address.

		ip?: string
	}
}

digital_ocean_image_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_image_info: {

		image_type?: string

		// Specifies the type of image information to be retrieved.
		// If set to C(application), then information are gathered related to all application images.
		// If set to C(distribution), then information are gathered related to all distribution images.
		// If set to C(private), then information are gathered related to all private images.
		// If not set to any of above, then information are gathered related to all images.
	}
}

digital_ocean_sshkey :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_sshkey: {

		// This is a unique identifier for the SSH key used to delete a key

		fingerprint?: string

		// The name for the SSH key

		name?: string

		// DigitalOcean OAuth token.

		oauth_token: string

		// The Public SSH key to add.

		ssh_pub_key?: string

		// Indicate desired state of the target.

		state?: string
	}
}

digital_ocean_tag :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_tag: {

		// The name of the tag. The supported characters for names include alphanumeric characters, dashes, and underscores.

		name: string

		// The ID of the resource to operate on.
		// The data type of resource_id is changed from integer to string, from version 2.5.

		resource_id?: string

		// The type of resource to operate on. Currently, only tagging of droplets is supported.

		resource_type?: string

		// Whether the tag should be present or absent on the resource.

		state?: string
	}
}

digital_ocean_tag_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_tag_info: {

		tag_name?: string

		// Tag name that can be used to identify and reference a tag.
	}
}

digital_ocean_account_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_account_info: {
	}
}

digital_ocean_block_storage :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_block_storage: {

		// The size of the Block Storage volume in gigabytes. Required when command=create and state=present. If snapshot_id is included, this will be ignored.

		block_size?: string

		// Which operation do you want to perform.

		command: string

		// Description of the Block Storage volume.

		description?: string

		// The droplet id you want to operate on. Required when command=attach.

		droplet_id?: string

		// The slug of the region where your Block Storage volume should be located in. If snapshot_id is included, this will be ignored.

		region: string

		// The snapshot id you would like the Block Storage volume created with. If included, region and block_size will be ignored and changed to null.

		snapshot_id?: string

		// Indicate desired state of the target.

		state: string

		// The name of the Block Storage volume.

		volume_name: string
	}
}

digital_ocean_certificate :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_certificate: {

		// A PEM-formatted public SSL Certificate.

		leaf_certificate?: string

		// The name of the certificate.

		name: string

		// A PEM-formatted private key content of SSL Certificate.

		private_key?: string

		// Whether the certificate should be present or absent.

		state?: string

		// The full PEM-formatted trust chain between the certificate authority's certificate and your domain's SSL certificate.

		certificate_chain?: string
	}
}

digital_ocean_firewall_info :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	digital_ocean_firewall_info: {

		name?: string

		// Firewall rule name that can be used to identify and reference a specific firewall rule.
	}
}
