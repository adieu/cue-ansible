package ovh

ovh_ip_failover :: {

	// The application secret to use

	application_secret: string

	// The IP address to manage (can be a single IP like 1.1.1.1 or a block like 1.1.1.1/28 )

	name: string

	// The timeout in seconds used to wait for a task to be completed. Default is 120 seconds.

	timeout?: string

	// If true, the module will wait for the IP address to be moved. If false, exit without waiting. The taskId will be returned in module output

	wait_completion?: bool

	// If not 0, the module will wait for this task id to be completed. Use wait_task_completion if you want to wait for completion of a previously executed task with wait_completion=false. You can execute this module repeatedly on a list of failover IPs using wait_completion=false (see examples)

	wait_task_completion?: string

	// The applicationKey to use

	application_key: string

	// The consumer key to use

	consumer_key: string

	// The endpoint to use ( for instance ovh-eu)

	endpoint: string

	// The name of the OVH service this IP address should be routed

	service: string
}

ovh_ip_loadbalancing_backend :: {

	// The application secret to use

	application_secret: string

	// The IP address of the backend to update / modify / delete

	backend: string

	// The endpoint to use ( for instance ovh-eu)

	endpoint: string

	// Name of the LoadBalancing internal name (ip-X.X.X.X)

	name: string

	// Determines the type of probe to use for this backend

	probe?: string

	// The applicationKey to use

	application_key: string

	// The consumer key to use

	consumer_key: string

	// Determines whether the backend is to be created/modified or deleted

	state?: string

	// The timeout in seconds used to wait for a task to be completed.

	timeout?: string

	// Determines the weight for this backend

	weight?: string
}
