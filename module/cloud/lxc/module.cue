package lxc

lxc_container :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	lxc_container: {

		// Path the save the archived container. If the path does not exist the archive method will attempt to create it.

		archive_path?: string

		// Create a snapshot a container when cloning. This is not supported by all container storage backends. Enabling this may fail if the backing store does not support snapshots.

		clone_snapshot?: bool

		// Path to the LXC configuration file.

		config?: string

		// Place rootfs directory under DIR.

		directory?: string

		// Define the state of a container. If you clone a container using `clone_name` the newly cloned container created in a stopped state. The running container will be stopped while the clone operation is happening and upon completion of the clone the original container state will be restored.

		state?: string

		// Use LVM thin pool called TP.

		thinpool?: string

		// Type of compression to use when creating an archive of a running container.

		archive_compression?: string

		// Backend storage type for the container.

		backing_store?: string

		// Run a command within a container.

		container_command?: string

		// Create fstype TYPE.

		fs_type?: string

		// Name of the template to use within an LXC create.

		template?: string

		// If Backend store is lvm, specify the name of the volume group.

		vg_name?: string

		// Set the log level for a container where *container_log* was set.

		container_log_level?: string

		// File system Size.

		fs_size?: string

		// Name of the logical volume, defaults to the container name.

		lv_name?: string

		// Place container under PATH

		lxc_path?: string

		// Create an archive of a container. This will create a tarball of the running container.

		archive?: bool

		// Name of the new cloned server. This is only used when state is clone.

		clone_name?: string

		// list of 'key=value' options to use when configuring a container.

		container_config?: string

		// Enable a container log for host actions to the container.

		container_log?: bool

		// Name of a container.

		name: string

		// Template options when building the container.

		template_options?: string

		// Create zfs under given zfsroot.

		zfs_root?: string
	}
}
