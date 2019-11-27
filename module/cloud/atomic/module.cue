package atomic

atomic_container :: {

	// Define the rootfs of the image

	rootfs?: string

	// State of the container

	state: string

	// Values for the installation of the container.  This option is permitted only with mode 'user' or 'system'. The values specified here will be used at installation time as --set arguments for atomic install.

	values?: string

	// Define the backend to use for the container

	backend: string

	// The image to use to install the container

	image: string

	// Define if it is an user or a system container

	mode: string

	// Name of the container

	name: string
}

atomic_host :: {

	// The version number of the atomic host to be deployed. Providing C(latest) will upgrade to the latest available version.

	revision?: string
}

atomic_image :: {

	// Define the backend where the image is pulled.

	backend?: string

	// Name of the container image.

	name: string

	// Start or Stop the container.

	started?: bool

	// The state of the container image.
	// The state C(latest) will ensure container image is upgraded to the latest version and forcefully restart container, if running.

	state?: string
}
