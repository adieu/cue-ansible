package cloudvision

cv_server_provision :: {

	// The physical port number on the switch that the new server is connected to.

	switch_port: string

	// A path to a Jinja formatted template file that contains the configuration block that will be applied to the specified switch port. This template will have variable fields replaced by the module before being applied to the switch configuration.

	template: string

	// The user that will be used to connect to CVP for making API calls.

	username: string

	// The password of the user that will be used to connect to CVP for API calls.

	password: string

	// The port number to use when making API calls to the CVP node. This will default to the default port for the specified protocol. Port 80 for http and port 443 for https.

	port?: string

	// The protocol to use when making API calls to CVP. CVP defaults to https and newer versions of CVP no longer support http.

	protocol?: string

	// The hostname or identifier for the server that is having it's switch port provisioned.

	server_name: string

	// The hostname of the switch is being configured for the server being provisioned.

	switch_name: string

	// The action for the module to take. The actions are add, which applies the specified template config to port, remove, which defaults the specified interface configuration, and show, which will return the current port configuration with no changes.

	action?: string

	// Flag that determines whether or not the module will execute the CVP task spawned as a result of changes to a switch configlet. When an add or remove action is taken which results in a change to a switch configlet, CVP will spawn a task that needs to be executed for the configuration to be applied to the switch. If this option is True then the module will determined the task number created by the configuration change, execute it and wait for the task to complete. If the option is False then the task will remain in the Pending state in CVP for a network administrator to review and execute.

	auto_run?: bool

	// The hostname or IP address of the CVP node being connected to.

	host: string

	// The vlan that should be applied to the port for this server. This parameter is dependent on a proper template that supports single vlan provisioning with it. If a port vlan is specified by the template specified does not support this the module will exit out with no changes. If a template is specified that requires a port vlan but no port vlan is specified the module will exit out with no changes.

	port_vlan?: string
}
