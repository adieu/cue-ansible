package redfish

idrac_redfish_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	idrac_redfish_info: {

		// Base URI of iDRAC controller

		baseuri: string

		// Category to execute on iDRAC controller

		category: string

		// List of commands to execute on iDRAC controller

		command: [...]

		// Password for authentication with iDRAC controller

		password: string

		// Timeout in seconds for URL requests to OOB controller

		timeout?: int

		// User for authentication with iDRAC controller

		username: string
	}
}

redfish_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	redfish_command: {

		// BootNext target when bootdevice is "UefiBootNext"

		boot_next?: string

		// List of commands to execute on OOB controller

		command: [...]

		// Password for authentication with OOB controller

		password: string

		// Timeout in seconds for URL requests to OOB controller

		timeout?: int

		// properties of account service to update

		account_properties?: {...}

		// Category to execute on OOB controller

		category: string

		// New password of account to add/modify

		new_password?: string

		// Username of account to add/delete/modify

		new_username?: string

		// The ID of the System, Manager or Chassis to modify

		resource_id?: string

		// new update user name for account_username

		update_username?: string

		// Username for authentication with OOB controller

		username: string

		// bootdevice when setting boot configuration

		bootdevice?: string

		// ID of account to delete/modify

		id?: string

		// UEFI target when bootdevice is "UefiTarget"

		uefi_target?: string

		// Base URI of OOB controller

		baseuri: string

		// Role of account to add/modify

		roleid?: string
	}
}

redfish_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	redfish_config: {

		// Base URI of OOB controller

		baseuri: string

		// name of BIOS attr to update (deprecated - use bios_attributes instead)

		bios_attribute_name?: string

		// Category to execute on OOB controller

		category: string

		// List of commands to execute on OOB controller

		command: [...]

		// Timeout in seconds for URL requests to OOB controller

		timeout?: int

		// User for authentication with OOB controller

		username: string

		// value of BIOS attr to update (deprecated - use bios_attributes instead)

		bios_attribute_value?: string

		// dictionary of BIOS attributes to update

		bios_attributes?: {...}

		// list of BootOptionReference strings specifying the BootOrder

		boot_order?: [...]

		// setting dict of manager services to update

		network_protocols?: {...}

		// Password for authentication with OOB controller

		password: string

		// The ID of the System, Manager or Chassis to modify

		resource_id?: string
	}
}

redfish_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	redfish_info: {

		// List of commands to execute on OOB controller

		command?: [...]

		// Password for authentication with OOB controller

		password: string

		// Timeout in seconds for URL requests to OOB controller

		timeout?: int

		// User for authentication with OOB controller

		username: string

		// Base URI of OOB controller

		baseuri: string

		// List of categories to execute on OOB controller

		category?: [...]
	}
}

wakeonlan :: {
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

idrac_redfish_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	idrac_redfish_command: {

		// Base URI of OOB controller

		baseuri: string

		// Category to execute on OOB controller

		category: string

		// List of commands to execute on OOB controller

		command: [...]

		// Password for authentication with OOB controller

		password: string

		// The ID of the System, Manager or Chassis to modify

		resource_id?: string

		// Timeout in seconds for URL requests to OOB controller

		timeout?: int

		// User for authentication with OOB controller

		username: string
	}
}

idrac_redfish_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	idrac_redfish_config: {

		// List of commands to execute on iDRAC
		// I(SetManagerAttributes), I(SetLifecycleControllerAttributes) and I(SetSystemAttributes) are mutually exclusive commands when C(category) is I(Manager)

		command: [...]

		// Password for authentication with iDRAC

		password: string

		// The ID of the System, Manager or Chassis to modify

		resource_id?: string

		// Timeout in seconds for URL requests to iDRAC controller

		timeout?: int

		// User for authentication with iDRAC

		username: string

		// Base URI of iDRAC

		baseuri: string

		// Category to execute on iDRAC

		category: string

		// dictionary of iDRAC attribute name and value pairs to update

		manager_attributes?: {...}

		// (deprecated) name of iDRAC attribute to update

		manager_attribute_name?: string

		// (deprecated) value of iDRAC attribute to update

		manager_attribute_value?: string
	}
}
