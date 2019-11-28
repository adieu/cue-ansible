package vexata

vexata_eg :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	vexata_eg: {

		// Creates export group when present or delete when absent.

		state?: string

		// Volume group name.

		vg?: string

		// Initiator group name.

		ig?: string

		// Export group name.

		name: string

		// Port group name.

		pg?: string
	}
}

vexata_volume :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	vexata_volume: {

		// Volume size in M, G, T units. M=2^20, G=2^30, T=2^40 bytes.

		size?: string

		// Creates/Modifies volume when present or removes when absent.

		state?: string

		// Volume name.

		name: string
	}
}
