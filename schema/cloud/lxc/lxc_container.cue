package ansible

module: lxc_container: {
	module:            "lxc_container"
	short_description: "Manage LXC Containers"
	version_added:     "1.8.0"
	description: [
		"Management of LXC containers",
	]
	author: "Kevin Carter (@cloudnull)"
	options: {
		name: {
			description: [
				"Name of a container.",
			]
			required: true
		}
		backing_store: {
			choices: [
				"dir",
				"lvm",
				"loop",
				"btrfs",
				"overlayfs",
				"zfs",
			]
			description: [
				"Backend storage type for the container.",
			]
			default: "dir"
		}
		template: {
			description: [
				"Name of the template to use within an LXC create.",
			]
			default: "ubuntu"
		}
		template_options: description: [
			"Template options when building the container.",
		]
		config: description: [
			"Path to the LXC configuration file.",
		]
		lv_name: {
			description: [
				"Name of the logical volume, defaults to the container name.",
			]
			default: "$CONTAINER_NAME"
		}
		vg_name: {
			description: [
				"If Backend store is lvm, specify the name of the volume group.",
			]
			default: "lxc"
		}
		thinpool: description: [
			"Use LVM thin pool called TP.",
		]
		fs_type: {
			description: [
				"Create fstype TYPE.",
			]
			default: "ext4"
		}
		fs_size: {
			description: [
				"File system Size.",
			]
			default: "5G"
		}
		directory: description: [
			"Place rootfs directory under DIR.",
		]
		zfs_root: description: [
			"Create zfs under given zfsroot.",
		]
		container_command: description: [
			"Run a command within a container.",
		]
		lxc_path: description: [
			"Place container under PATH",
		]
		container_log: {
			choices: [
				true,
				false,
			]
			description: [
				"Enable a container log for host actions to the container.",
			]
			type:    "bool"
			default: "no"
		}
		container_log_level: {
			choices: [
				"INFO",
				"ERROR",
				"DEBUG",
			]
			description: [
				"Set the log level for a container where *container_log* was set.",
			]
			required: false
			default:  "INFO"
		}
		clone_name: {
			description: [
				"Name of the new cloned server. This is only used when state is clone.",
			]

			type:          "str"
			version_added: "2.0"
		}
		clone_snapshot: {
			choices: [
				true,
				false,
			]
			description: [
				"Create a snapshot a container when cloning. This is not supported by all container storage backends. Enabling this may fail if the backing store does not support snapshots.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.0"
		}
		archive: {
			choices: [
				true,
				false,
			]
			description: [
				"Create an archive of a container. This will create a tarball of the running container.",
			]

			type:    "bool"
			default: "no"
		}
		archive_path: description: [
			"Path the save the archived container. If the path does not exist the archive method will attempt to create it.",
		]

		archive_compression: {
			choices: [
				"gzip",
				"bzip2",
				"none",
			]
			description: [
				"Type of compression to use when creating an archive of a running container.",
			]

			default: "gzip"
		}
		state: {
			choices: [
				"started",
				"stopped",
				"restarted",
				"absent",
				"frozen",
			]
			description: [
				"Define the state of a container. If you clone a container using `clone_name` the newly cloned container created in a stopped state. The running container will be stopped while the clone operation is happening and upon completion of the clone the original container state will be restored.",
			]

			default: "started"
		}
		container_config: description: [
			"list of 'key=value' options to use when configuring a container.",
		]
	}
	requirements: [
		"lxc >= 1.0 # OS package",
		"python >= 2.6 # OS Package",
		"lxc-python2 >= 0.1 # PIP Package from https://github.com/lxc/python2-lxc",
	]
	notes: [
		"Containers must have a unique name. If you attempt to create a container with a name that already exists in the users namespace the module will simply return as \"unchanged\".",
		"The \"container_command\" can be used with any state except \"absent\". If used with state \"stopped\" the container will be \"started\", the command executed, and then the container \"stopped\" again. Likewise if the state is \"stopped\" and the container does not exist it will be first created, \"started\", the command executed, and then \"stopped\". If you use a \"|\" in the variable you can use common script formatting within the variable itself The \"container_command\" option will always execute as BASH. When using \"container_command\" a log file is created in the /tmp/ directory which contains both stdout and stderr of any command executed.",
		"If \"archive\" is **true** the system will attempt to create a compressed tarball of the running container. The \"archive\" option supports LVM backed containers and will create a snapshot of the running container when creating the archive.",
		"If your distro does not have a package for \"python2-lxc\", which is a requirement for this module, it can be installed from source at \"https://github.com/lxc/python2-lxc\" or installed via pip using the package name lxc-python2.",
	]
}
