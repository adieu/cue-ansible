package vexata

vexata_volume :: {

	// Volume name.

	name: string

	// Volume size in M, G, T units. M=2^20, G=2^30, T=2^40 bytes.

	size?: string

	// Creates/Modifies volume when present or removes when absent.

	state?: string
}

vexata_eg :: {

	// Initiator group name.

	ig?: string

	// Export group name.

	name: string

	// Port group name.

	pg?: string

	// Creates export group when present or delete when absent.

	state?: string

	// Volume group name.

	vg?: string
}
