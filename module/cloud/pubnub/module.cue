package pubnub

pubnub_blocks :: {

	// List of event handlers which should be updated for specified block C(name).
	// Each entry for new event handler should contain: C(name), C(src), C(channels), C(event). C(name) used as event handler name which can be used later to make changes to it.
	// C(src) is full path to file with event handler code.
	// C(channels) is name of channel from which event handler is waiting for events.
	// C(event) is type of event which is able to trigger event handler: I(js-before-publish), I(js-after-publish), I(js-after-presence).
	// Each entry for existing handlers should contain C(name) (so target handler can be identified). Rest parameters (C(src), C(channels) and C(event)) can be added if changes required for them.
	// It is possible to rename event handler by adding C(changes) key to event handler payload and pass dictionary, which will contain single key C(name), where new name should be passed.
	// To remove particular event handler it is possible to set C(state) for it to C(absent) and it will be removed.

	event_handlers?: string

	// Password which match to account to which specified C(email) belong.
	// Not required if C(cache) contains result of previous module call (in same play).

	password?: string

	// Intended block state after event handlers creation / update process will be completed.

	state?: string

	// Name of PubNub account for from which C(application) will be used to manage blocks.
	// User's account will be used if value not set or empty.

	account?: string

	// Name of target PubNub application for which blocks configuration on specific C(keyset) will be done.

	application: string

	// In case if single play use blocks management module few times it is preferred to enabled 'caching' by making previous module to share gathered artifacts and pass them to this parameter.


	cache?: string

	// Name of application's keys set which is bound to managed blocks.

	keyset: string

	// Name of managed block which will be later visible on admin.pubnub.com.

	name: string

	// This key allow to try skip certificates check when performing REST API calls. Sometimes host may have issues with certificates on it and this will cause problems to call PubNub REST API.
	// If check should be ignored C(False) should be passed to this parameter.

	validate_certs?: bool

	// List of fields which should be changed by block itself (doesn't affect any event handlers).
	// Possible options for change is: C(name).

	changes?: string

	// Short block description which will be later visible on admin.pubnub.com. Used only if block doesn't exists and won't change description for existing block.

	description?: string

	// Email from account for which new session should be started.
	// Not required if C(cache) contains result of previous module call (in same play).

	email?: string
}
