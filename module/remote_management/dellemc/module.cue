package dellemc

idrac_firmware :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	idrac_firmware: {

		// Local mount path of the network share with read-write permission for ansible user. This option is mandatory for Network Share.

		share_mnt: string

		// CIFS or NFS Network share.

		share_name: string

		// Catalog file name relative to the I(share_name).

		catalog_file_name?: string

		// iDRAC IP Address.

		idrac_ip: string

		// Whether to reboots after applying the updates or not.

		reboot?: bool

		// Whether to wait for job completion or not.

		job_wait?: bool

		// Network share user password. This option is mandatory for CIFS Network Share.

		share_password?: string

		// Network share user in the format 'user@domain' or 'domain\\user' if user is part of a domain else 'user'. This option is mandatory for CIFS Network Share.

		share_user?: string

		// iDRAC user password.

		idrac_password: string

		// iDRAC port.

		idrac_port?: int

		// iDRAC username.

		idrac_user: string
	}
}

idrac_server_config_profile :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	idrac_server_config_profile: {

		// This option is applicable for C(import) command.
		// If C(On), End host power state is on.
		// If C(Off), End host power state is off.

		end_host_power_state?: string

		// Specify the type of server configuration profile (SCP) to be exported. This option is applicable for C(export) command.

		export_use?: string

		// iDRAC port.

		idrac_port?: int

		// Network share user password. This option is mandatory for CIFS Network Share.

		share_password?: string

		// Specify the output file format. This option is applicable for C(export) command.

		export_format?: string

		// iDRAC user password.

		idrac_password: string

		// If C(ALL), this module will import all components configurations from SCP file.
		// If C(IDRAC), this module will import iDRAC configuration from SCP file.
		// If C(BIOS), this module will import BIOS configuration from SCP file.
		// If C(NIC), this module will import NIC configuration from SCP file.
		// If C(RAID), this module will import RAID configuration from SCP file.

		scp_components?: string

		// CIFS or NFS Network Share or a local path.

		share_name: string

		// If C(import), will perform SCP import operations.
		// If C(export), will perform SCP export operations.

		command?: string

		// iDRAC IP Address.

		idrac_ip: string

		// Server Configuration Profile file name. This option is mandatory for C(import) command.

		scp_file?: string

		// This option is applicable for C(import) command.
		// If C(Graceful), it gracefully shuts down the server.
		// If C(Forced),  it forcefully shuts down the server.
		// If C(NoReboot), it does not reboot the server.

		shutdown_type?: string

		// iDRAC username.

		idrac_user: string

		// Whether to wait for job completion or not.

		job_wait: bool

		// Network share user in the format 'user@domain' or 'domain\\user' if user is part of a domain else 'user'. This option is mandatory for CIFS Network Share.

		share_user?: string
	}
}

ome_device_info :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ome_device_info: {

		// Target IP Address or hostname.

		hostname: string

		// Target user password.

		password: string

		// Target HTTPS port.

		port?: int

		// I(system_query_options) applicable for the choices of the fact_subset. Either I(device_id) or I(device_service_tag) is mandatory for C(detailed_inventory) and C(subsystem_health) or both can be applicable.

		system_query_options?: {...}

		// Target username.

		username: string

		// C(basic_inventory) returns the list of the devices.
		// C(detailed_inventory) returns the inventory details of specified devices.
		// C(subsystem_health) returns the health status of specified devices.

		fact_subset?: string
	}
}

wakeonlan :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
