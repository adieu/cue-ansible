package foreman

foreman :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	foreman: {

		// URL of Foreman server.

		server_url: string

		// Username on Foreman server.

		username: string

		// Whether to verify an SSL connection to Foreman server.

		verify_ssl?: bool

		// The Foreman resource that the action will be performed on (e.g. organization, host).

		entity: string

		// Parameters associated to the entity resource to set or edit in dictionary format (e.g. name, description).

		params: string

		// Password for user accessing Foreman server.

		password: string
	}
}

katello :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	katello: {

		// Password for user accessing Foreman server.

		password: string

		// URL of Foreman server.

		server_url: string

		// The timeout in seconds to wait for the started Foreman action to finish.
		// If the timeout is reached and the Foreman action did not complete, the ansible task fails. However the foreman action does not get canceled.

		task_timeout?: string

		// Username on Foreman server.

		username: string

		// verify the ssl/https connection (e.g for a valid certificate)

		verify_ssl?: bool

		// action associated to the entity resource to set or edit in dictionary format.
		// Possible Action in relation to Entitys.
		// sync (available when entity=product or entity=repository)
		// publish (available when entity=content_view)
		// promote (available when entity=content_view)

		action?: string

		// The Foreman resource that the action will be performed on (e.g. organization, host).

		entity: string

		// Parameters associated to the entity resource and action, to set or edit in dictionary format.
		// Each choice may be only available with specific entitys and actions.
		// Possible Choices are in the format of param_name ([entry,action,action,...],[entity,..],...).
		// The action "None" means no action specified.
		// Possible Params in relation to entity and action.
		// name ([product,sync,None], [repository,sync], [repository_set,None], [sync_plan,None],
		// [content_view,promote,publish,None], [lifecycle_environment,None], [activation_key,None])
		// organization ([product,sync,None] ,[repository,sync,None], [repository_set,None], [sync_plan,None], 
		// [content_view,promote,publish,None], [lifecycle_environment,None], [activation_key,None])
		// content ([manifest,None])
		// product ([repository,sync,None], [repository_set,None], [sync_plan,None])
		// basearch ([repository_set,None])
		// releaserver ([repository_set,None])
		// sync_date ([sync_plan,None])
		// interval ([sync_plan,None])
		// repositories ([content_view,None])
		// from_environment ([content_view,promote])
		// to_environment([content_view,promote])
		// prior ([lifecycle_environment,None])
		// content_view ([activation_key,None])
		// lifecycle_environment ([activation_key,None])

		params: string
	}
}

wakeonlan :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}
