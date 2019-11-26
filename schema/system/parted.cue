package ansible

module: parted: {
	author: [
		"Fabrizio Colonna (@ColOfAbRiX)",
	]
	module:            "parted"
	short_description: "Configure block device partitions"
	version_added:     "2.3"
	description: [
		"This module allows configuring block device partition using the C(parted) command line tool. For a full description of the fields and the options check the GNU parted manual.",
	]

	requirements: [
		"This module requires parted version 1.8.3 and above.",
		"If the version of parted is below 3.1, it requires a Linux version running the sysfs file system C(/sys/).",
	]

	options: {
		device: {
			description: "The block device (disk) where to operate."
			type:        "str"
			required:    true
		}
		align: {
			description: "Set alignment for newly created partitions."
			type:        "str"
			choices: ["cylinder", "minimal", "none", "optimal"]
			default: "optimal"
		}
		number: {
			description: [
				"The number of the partition to work with or the number of the partition that will be created.",
				"Required when performing any action on the disk, except fetching information.",
			]
			type: "int"
		}
		unit: {
			description: [
				"Selects the current default unit that Parted will use to display locations and capacities on the disk and to interpret those given by the user if they are not suffixed by an unit.",
				"When fetching information about a disk, it is always recommended to specify a unit.",
			]
			type: "str"
			choices: ["s", "B", "KB", "KiB", "MB", "MiB", "GB", "GiB", "TB", "TiB", "%", "cyl", "chs", "compact"]
			default: "KiB"
		}
		label: {
			description: "Creates a new disk label."
			type:        "str"
			choices: ["aix", "amiga", "bsd", "dvh", "gpt", "loop", "mac", "msdos", "pc98", "sun"]
			default: "msdos"
		}
		part_type: {
			description: [
				"May be specified only with 'msdos' or 'dvh' partition tables.",
				"A C(name) must be specified for a 'gpt' partition table.",
				"Neither C(part_type) nor C(name) may be used with a 'sun' partition table.",
			]
			type: "str"
			choices: ["extended", "logical", "primary"]
			default: "primary"
		}
		part_start: {
			description: [
				"Where the partition will start as offset from the beginning of the disk, that is, the \"distance\" from the start of the disk.",
				"The distance can be specified with all the units supported by parted (except compat) and it is case sensitive, e.g. C(10GiB), C(15%).",
			]

			type:    "str"
			default: "0%"
		}
		part_end: {
			description: [
				"Where the partition will end as offset from the beginning of the disk, that is, the \"distance\" from the start of the disk.",
				"The distance can be specified with all the units supported by parted (except compat) and it is case sensitive, e.g. C(10GiB), C(15%).",
			]

			type:    "str"
			default: "100%"
		}
		name: {
			description: [
				"Sets the name for the partition number (GPT, Mac, MIPS and PC98 only).",
			]
			type: "str"
		}
		flags: {
			description: "A list of the flags that has to be set on the partition."
			type:        "list"
		}
		state: {
			description: [
				"Whether to create or delete a partition.",
				"If set to C(info) the module will only return the device information.",
			]
			type: "str"
			choices: ["absent", "present", "info"]
			default: "info"
		}
	}
	notes: [
		"When fetching information about a new disk and when the version of parted installed on the system is before version 3.1, the module queries the kernel through C(/sys/) to obtain disk information. In this case the units CHS and CYL are not supported.",
	]
}
