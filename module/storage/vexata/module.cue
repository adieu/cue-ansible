package vexata

vexata_eg :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	register?:   string
	vexata_eg: {
		ig?:    string
		name:   string
		pg?:    string
		state?: string
		vg?:    string
	}
}

vexata_volume :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	register?:   string
	vexata_volume: {
		name:   string
		size?:  string
		state?: string
	}
}
