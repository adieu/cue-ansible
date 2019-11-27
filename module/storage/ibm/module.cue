package ibm

ibm_sa_host_ports :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_host_ports: {

		// Fiber channel address.

		fcaddress?: string

		// Host name.

		host: string

		// iSCSI initiator name.

		iscsi_name?: string

		// Number of visible targets.

		num_of_visible_targets?: string

		// Host ports state.

		state: string
	}
}

ibm_sa_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_pool: {

		// Adds the pool to the specified domain.

		domain?: string

		// Assigns a perf_class to the pool.

		perf_class?: string

		// Pool name.

		pool: string

		// Pool size in GB

		size?: string

		// Pool snapshot size in GB

		snapshot_size?: string

		// Pool state.

		state: string
	}
}

ibm_sa_vol :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_vol: {

		// Volume name.

		vol: string

		// Volume pool.

		pool?: string

		// Volume size.

		size?: string

		// Volume state.

		state: string
	}
}

ibm_sa_vol_map :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_vol_map: {

		// Maps the volume to a cluster.

		cluster?: string

		// Maps the volume to a host.

		host?: string

		// The LUN identifier.

		lun?: string

		// Overrides the existing volume mapping.

		override?: string

		// When the state is present the volume is mapped. When the state is absent, the volume is meant to be unmapped.

		state: string

		// Volume name.

		vol: string
	}
}

ibm_sa_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_domain: {

		// Name of the domain to be managed.

		domain: string

		// Hard capacity of the domain.

		hard_capacity?: string

		// Number of max dms.

		max_dms?: string

		// Number of max_pools.

		max_pools?: string

		// Number of max_volumes.

		max_volumes?: string

		// The desired state of the domain.

		state: string

		// ldap id to add to the domain.

		ldap_id?: string

		// Number of max cgs.

		max_cgs?: string

		// Number of max_mirrors.

		max_mirrors?: string

		// Add the domain to a performance class.

		perf_class?: string

		// Size of the domain.

		size?: string

		// Soft capacity of the domain.

		soft_capacity?: string
	}
}

ibm_sa_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ibm_sa_host: {

		// The domains the cluster will be attached to. To include more than one domain, separate domain names with commas. To include all existing domains, use an asterisk ("*").

		domain?: string

		// Host name.

		host: string

		// The host's CHAP name identifier

		iscsi_chap_name?: string

		// The password of the initiator used to authenticate to the system when CHAP is enable

		iscsi_chap_secret?: string

		// Host state.

		state: string

		// The name of the cluster to include the host.

		cluster?: string
	}
}
