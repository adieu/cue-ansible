package hpe3par

ss_3par_cpg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ss_3par_cpg: {

		// Name of the CPG.

		cpg_name: string

		// Specifies that physical disks must have the specified device type.

		disk_type?: string

		// Specifies the growth increment(in MiB, GiB or TiB) the amount of logical disk storage created on each auto-grow operation.

		growth_increment?: string

		// Specifies that the autogrow operation is limited to the specified storage amount that sets the growth limit(in MiB, GiB or TiB).

		growth_limit?: string

		// Specifies that the threshold(in MiB, GiB or TiB) of used logical disk space when exceeded results in a warning alert.

		growth_warning?: string

		// Specifies the set size in the number of chunklets.

		set_size?: int

		// Whether the specified CPG should exist or not.

		state: string

		// Specifies the name of the domain in which the object will reside.

		domain?: string

		// Specifies that the layout must support the failure of one port pair, one cage, or one magazine.

		high_availability?: string

		// Specifies the RAID type for the logical disk.

		raid_type?: string

		// Specifies whether the certificate needs to be validated while communicating.

		secure?: bool
	}
}
