package ansible

module: memset_dns_reload: {
	module:            "memset_dns_reload"
	author:            "Simon Weald (@glitchcrab)"
	version_added:     "2.6"
	short_description: "Request reload of Memset's DNS infrastructure,"
	notes: [
		"DNS reload requests are a best-effort service provided by Memset; these generally happen every 15 minutes by default, however you can request an immediate reload if later tasks rely on the records being created. An API key generated via the Memset customer control panel is required with the following minimum scope - I(dns.reload). If you wish to poll the job status to wait until the reload has completed, then I(job.status) is also required.",
	]

	description: [
		"Request a reload of Memset's DNS infrastructure, and optionally poll until it finishes.",
	]
	options: {
		api_key: {
			required: true
			description: [
				"The API key obtained from the Memset control panel.",
			]
		}
		poll: {
			default: false
			type:    "bool"
			description: [
				"Boolean value, if set will poll the reload job's status and return when the job has completed (unless the 30 second timeout is reached first). If the timeout is reached then the task will not be marked as failed, but stderr will indicate that the polling failed.",
			]
		}
	}
}
