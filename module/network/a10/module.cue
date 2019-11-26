package a10

a10_server :: {

	// set active-partition

	partition?: string

	// The SLB server IPv4 address.

	server_ip?: string

	// The SLB (Server Load Balancer) server name.

	server_name: string

	// A list of ports to create for the server. Each list item should be a dictionary which specifies the C(port:) and C(protocol:), but can also optionally specify the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).

	server_ports?: string

	// The SLB virtual server status.

	server_status?: string

	// This is to specify the operation to create, update or remove SLB server.

	state?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

	validate_certs?: bool
}

a10_server_axapi3 :: {

	// Create, Update or Remove SLB server. For create and update operation, we use the IP address and server name specified in the POST message. For delete operation, we use the server name in the request URI.

	operation?: string

	// The SLB (Server Load Balancer) server IPv4 address.

	server_ip: string

	// The SLB (Server Load Balancer) server name.

	server_name: string

	// A list of ports to create for the server. Each list item should be a dictionary which specifies the C(port:) and C(protocol:).

	server_ports?: string

	// The SLB (Server Load Balancer) virtual server status.

	server_status?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

	validate_certs?: bool
}

a10_service_group :: {

	// The SLB service-group load balancing method, such as round-robin or weighted-rr.

	service_group_method?: string

	// The SLB service-group protocol of TCP or UDP.

	service_group_protocol?: string

	// If the specified service group should exists.

	state?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

	validate_certs?: bool

	// set active-partition

	partition?: string

	// A list of servers to add to the service group. Each list item should be a dictionary which specifies the C(server:) and C(port:), but can also optionally specify the C(status:). See the examples below for details.

	servers?: string

	// The SLB (Server Load Balancing) service-group name

	service_group: string
}

a10_virtual_server :: {

	// The SLB virtual server status, such as enabled or disabled.

	virtual_server_status?: string

	// set active-partition

	partition?: string

	// If the specified virtual server should exist.

	state?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

	validate_certs?: bool

	// The SLB (Server Load Balancing) virtual server name.

	virtual_server: string

	// The SLB virtual server IPv4 address.

	virtual_server_ip?: string

	// A list of ports to create for the virtual server. Each list item should be a dictionary which specifies the C(port:) and C(type:), but can also optionally specify the C(service_group:) as well as the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).

	virtual_server_ports?: string
}
