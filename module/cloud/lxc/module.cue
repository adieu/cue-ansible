package lxc

lxc_container :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	lxc_container: {

		// Place container under PATH

		lxc_path?: string

		// Template options when building the container.

		template_options?: string

		// Backend storage type for the container.

		backing_store?: string

		// Create a snapshot a container when cloning. This is not supported by all container storage backends. Enabling this may fail if the backing store does not support snapshots.

		clone_snapshot?: bool

		// Path to the LXC configuration file.

		config?: string

		// Place rootfs directory under DIR.

		directory?: string

		// Set the log level for a container where *container_log* was set.

		container_log_level?: string

		// Name of a container.

		name: string

		// Define the state of a container. If you clone a container using `clone_name` the newly cloned container created in a stopped state. The running container will be stopped while the clone operation is happening and upon completion of the clone the original container state will be restored.

		state?: string

		// Name of the template to use within an LXC create.

		template?: string

		// Create an archive of a container. This will create a tarball of the running container.

		archive?: bool

		// Run a command within a container.

		container_command?: string

		// list of 'key=value' options to use when configuring a container.

		container_config?: string

		// Enable a container log for host actions to the container.

		container_log?: bool

		// Create zfs under given zfsroot.

		zfs_root?: string

		// Type of compression to use when creating an archive of a running container.

		archive_compression?: string

		// Path the save the archived container. If the path does not exist the archive method will attempt to create it.

		archive_path?: string

		// Name of the logical volume, defaults to the container name.

		lv_name?: string

		// Use LVM thin pool called TP.

		thinpool?: string

		// Name of the new cloned server. This is only used when state is clone.

		clone_name?: string

		// File system Size.

		fs_size?: string

		// Create fstype TYPE.

		fs_type?: string

		// If Backend store is lvm, specify the name of the volume group.

		vg_name?: string
	}
}
