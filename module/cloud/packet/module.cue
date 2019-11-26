package packet

packet_device :: {

	// A hostname of a device, or a list of hostnames.
	// If given string or one-item list, you can use the C("%d") Python string format to expand numbers from I(count).
	// If only one hostname, it might be expanded to list if I(count)>1.

	hostnames?: string

	// OS slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/operatingsystems/).

	operating_system?: string

	// Plan slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/plans/).

	plan?: string

	// Persist PXE as the first boot option.
	// Normally, the PXE process happens only on the first boot. Set this arg to have your device continuously boot to iPXE.

	always_pxe?: bool

	// The number of devices to create. Count number can be included in hostname via the %d string formatter.

	count?: string

	// From which number to start the count.

	count_offset?: string

	// List of device IDs on which to operate.

	device_ids?: string

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string

	// How long (seconds) to wait either for automatic IP address assignment, or for the device to reach the C(active) I(state).
	// If I(wait_for_public_IPv) is set and I(state) is C(active), the module will wait for both events consequently, applying the timeout twice.

	wait_timeout?: string

	// Whether to wait for the instance to be assigned a public IPv4/IPv6 address.
	// If set to 4, it will wait until IPv4 is assigned to the instance.
	// If set to 6, wait until public IPv6 is assigned to the instance.

	wait_for_public_IPv?: string

	// Dict with "features" for device creation. See Packet API docs for details.

	features?: string

	// URL of custom iPXE script for provisioning.
	// More about custom iPXE for Packet devices at U(https://help.packet.net/technical/infrastructure/custom-ipxe).

	ipxe_script_url?: string

	// Desired state of the device.
	// If set to C(present) (the default), the module call will return immediately after the device-creating HTTP request successfully returns.
	// If set to C(active), the module call will block until all the specified devices are in state active due to the Packet API, or until I(wait_timeout).

	state?: string

	// Userdata blob made available to the machine

	user_data?: string

	// Facility slug for device creation. See Packet API for current list - U(https://www.packet.net/developers/api/facilities/).

	facility?: string

	// Whether to lock a created device.

	locked?: bool

	// ID of project of the device.

	project_id: string
}

packet_ip_subnet :: {

	// IPv4 or IPv6 subnet which you want to manage. It must come from a reserved block for your project in the Packet Host.

	cidr?: string

	// The number of devices to retrieve from the project. The max allowed value is 1000.
	// See U(https://www.packet.com/developers/api/#retrieve-all-devices-of-a-project) for more info.

	device_count?: int

	// UUID of a device to/from which to assign/remove a subnet.

	device_id?: string

	// A hostname of a device to/from which to assign/remove a subnet.

	hostname?: string

	// UUID of a project of the device to/from which to assign/remove a subnet.

	project_id: string

	// Desired state of the IP subnet on the specified device.
	// With state == C(present), you must specify either hostname or device_id. Subnet with given CIDR will then be assigned to the specified device.
	// With state == C(absent), you can specify either hostname or device_id. The subnet will be removed from specified devices.
	// If you leave both hostname and device_id empty, the subnet will be removed from any device it's assigned to.

	state?: string

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string
}

packet_project :: {

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string

	// Custom data about the project to create.

	custom_data?: string

	// UUID of the project which you want to remove.

	id?: string

	// Name for/of the project.

	name?: string

	// UUID of the organization to create a project for.
	// When blank, the API assumes the default organization.

	org_id?: string

	// Payment method is name of one of the payment methods available to your user.
	// When blank, the API assumes the default payment method.

	payment_method?: string

	// Indicate desired state of the target.

	state?: string
}

packet_sshkey :: {

	// UUID of the key which you want to remove.

	id?: string

	// Public Key string ({type} {base64 encoded key} {description}).

	key?: string

	// File with the public key.

	key_file?: string

	// Label for the key. If you keep it empty, it will be read from key string.

	label?: string

	// Indicate desired state of the target.

	state?: string

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string

	// Fingerprint of the key which you want to remove.

	fingerprint?: string
}

packet_volume :: {

	// Create new volume locked.

	locked?: bool

	// Size of the volume in gigabytes.

	size?: int

	// Desired state of the volume.

	state?: string

	// Location of the volume.
	// Volumes can only be attached to device in the same location.

	facility?: string

	// UUID of a volume.

	id?: string

	// Selector for API-generated name of the volume

	name?: string

	// storage_1 for standard tier, storage_2 for premium (performance) tier.
	// Tiers are described at U(https://www.packet.com/cloud/storage/).

	plan?: string

	// ID of project of the device.

	project_id: string

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string

	// Billing cycle for new volume.

	billing_cycle?: string

	// User-defined description attribute for Packet volume.
	// It is used used as idempotent identifier - if volume with given description exists, new one is not created.

	description?: string

	// Snapshot policy for new volume.

	snapshot_policy?: {...}
}

packet_volume_attachment :: {

	// Indicate desired state of the attachment.

	state?: string

	// Selector for the volume.
	// It can be a UUID, an API-generated volume name, or user-defined description string.
	// Example values: 4a347482-b546-4f67-8300-fb5018ef0c5, volume-4a347482, "my volume"

	volume?: string

	// Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).

	auth_token?: string

	// Selector for the device.
	// It can be a UUID of the device, or a hostname.
	// Example values: 98a14f7a-3d27-4478-b7cf-35b5670523f3, "my device"

	device?: string

	// UUID of the project to which the device and volume belong.

	project_id?: string
}
