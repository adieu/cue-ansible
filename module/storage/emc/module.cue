package emc

emc_vnx_sg_member :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	emc_vnx_sg_member: {

		// Lun id to be added.

		lunid: string

		// Name of the Storage group to manage.

		name: string

		// Indicates the desired lunid state.
		// C(present) ensures specified lunid is present in the Storage Group.
		// C(absent) ensures specified lunid is absent from Storage Group.

		state?: string
	}
}
