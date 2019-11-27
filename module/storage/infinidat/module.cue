package infinidat

infini_vol :: {

	// Volume Name

	name: string

	// Pool that volume will reside on

	pool: string

	// Volume size in MB, GB or TB units. See examples.

	size?: string

	// Creates/Modifies volume when present or removes when absent

	state?: string
}

infini_export :: {

	// List of dictionaries with client entries. See examples. Check infini_export_client module to modify individual NFS client entries for export.

	client_list?: string

	// Name of exported file system.

	filesystem: string

	// Internal path of the export.

	inner_path?: string

	// Export name. Should always start with C(/). (ex. name=/data)

	name: string

	// Creates/Modifies export when present and removes when absent.

	state?: string
}

infini_export_client :: {

	// Name of the export.

	export: string

	// Don't squash root user to anonymous. Will be set to "no" on creation if not specified explicitly.

	no_root_squash?: bool

	// Creates/Modifies client when present and removes when absent.

	state?: string

	// Read Write or Read Only Access.

	access_mode?: string

	// Client IP or Range. Ranges can be defined as follows 192.168.0.1-192.168.0.254.

	client: string
}

infini_fs :: {

	// File system name.

	name: string

	// Pool that will host file system.

	pool: string

	// File system size in MB, GB or TB units. See examples.

	size?: string

	// Creates/Modifies file system when present or removes when absent.

	state?: string
}

infini_host :: {

	// Creates/Modifies Host when present or removes when absent

	state?: string

	// Volume name to map to the host

	volume?: string

	// List of wwns of the host

	wwns?: string

	// Host Name

	name: string
}

infini_pool :: {

	// Pool Physical Capacity in MB, GB or TB units. If pool size is not set on pool creation, size will be equal to 1TB. See examples.

	size?: string

	// Enable/Disable SSD Cache on Pool

	ssd_cache?: bool

	// Creates/Modifies Pool when present or removes when absent

	state?: string

	// Pool Virtual Capacity in MB, GB or TB units. If pool vsize is not set on pool creation, Virtual Capacity will be equal to Physical Capacity. See examples.

	vsize?: string

	// Pool Name

	name: string
}
