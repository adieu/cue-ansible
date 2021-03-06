package ansible

module: twilio: {
	version_added:     "1.6"
	module:            "twilio"
	short_description: "Sends a text message to a mobile phone through Twilio."
	description: [
		"Sends a text message to a phone number through the Twilio messaging API.",
	]
	notes: [
		"This module is non-idempotent because it sends an email through the external API. It is idempotent only in the case that the module fails.",
		"Like the other notification modules, this one requires an external dependency to work. In this case, you'll need a Twilio account with a purchased or verified phone number to send the text message.",
	]

	options: {
		account_sid: {
			description:
					"user's Twilio account token found on the account page"
			required: true
		}
		auth_token: {
			description: "user's Twilio authentication token"
			required:    true
		}
		msg: {
			description:
					"the body of the text message"
			required: true
		}
		to_numbers: {
			description:
				"one or more phone numbers to send the text message to, format +15551112222"

			required: true
			aliases: ["to_number"]
		}
		from_number: {
			description:
					"the Twilio number to send the text message from, format +15551112222"
			required: true
		}
		media_url: {
			description:
				"a URL with a picture, video or sound clip to send with an MMS (multimedia message) instead of a plain SMS"

			required: false
		}
	}

	author: "Matt Makai (@makaimc)"
}
