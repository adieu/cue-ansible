package notification

irc :: {

	// Channel name.  One of nick_to or channel needs to be set.  When both are set, the message will be sent to both of them.

	channel: string

	// Nickname to send the message from. May be shortened, depending on server's NICKLEN setting.

	nick?: string

	// A list of nicknames to send the message to. One of nick_to or channel needs to be set.  When both are defined, the message will be sent to both of them.

	nick_to?: string

	// IRC server port number

	port?: string

	// Timeout to use while waiting for successful registration and join messages, this is to prevent an endless loop

	timeout?: string

	// Channel key

	key?: string

	// Designates whether user should part from channel after sending message or not. Useful for when using a faux bot and not wanting join/parts between messages.

	part?: bool

	// Set the channel topic

	topic?: string

	// Text color for the message. ("none" is a valid option in 1.6 or later, in 1.6 and prior, the default color is black, not "none"). Added 11 more colors in version 2.0.

	color?: string

	// The message body.

	msg: string

	// IRC server name/address

	server?: string

	// Text style for the message. Note italic does not work on some clients

	style?: string

	// Server password

	passwd?: string

	// Designates whether TLS/SSL should be used when connecting to the IRC server

	use_ssl?: bool
}

snow_record_find :: {

	// Maximum number of records to return.

	max_records?: int

	// Field to sort the results on.
	// Can prefix with "-" or "+" to change descending or ascending sort order.

	order_by?: string

	// Dict to query for records.

	query: {...}

	// Fields of the record to return in the json.
	// By default, all fields will be returned.

	return_fields?: [..._]

	// Table to query for records.

	table?: string
}

logentries_msg :: {

	// API endpoint

	api?: string

	// The message body.

	msg: string

	// API endpoint port

	port?: string

	// Log token.

	token: string
}

rocketchat :: {

	// Rocket Chat Incoming Webhook integration token.  This provides authentication to Rocket Chat's Incoming webhook for posting messages.

	token: string

	// This is the sender of the message.

	username?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Channel to send the message to. If absent, the message goes to the channel selected for the I(token) specified during the creation of webhook.

	channel?: string

	// Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message

	color?: string

	// Emoji for the message sender. The representation for the available emojis can be got from Rocket Chat. (for example :thumbsup:) (if I(icon_emoji) is set, I(icon_url) will not be used)

	icon_emoji?: string

	// URL for the message sender's icon.

	icon_url?: string

	// Specify the protocol used to send notification messages before the webhook url. (i.e. http or https)

	protocol?: string

	// Define a list of attachments.

	attachments?: string

	// The domain for your environment without protocol. (i.e. C(example.com) or C(chat.example.com))

	domain: string

	// Automatically create links for channels and usernames in I(msg).

	link_names?: string

	// Message to be sent.

	msg?: string
}

twilio :: {

	// user's Twilio authentication token

	auth_token: string

	// the Twilio number to send the text message from, format +15551112222

	from_number: string

	// a URL with a picture, video or sound clip to send with an MMS (multimedia message) instead of a plain SMS

	media_url?: string

	// the body of the text message

	msg: string

	// one or more phone numbers to send the text message to, format +15551112222

	to_numbers: string

	// user's Twilio account token found on the account page

	account_sid: string
}

flowdock :: {

	// (inbox only) Name of the message sender

	from_name?: string

	// (inbox only) Link associated with the message. This will be used to link the message subject in Team Inbox.

	link?: string

	// (inbox only) Human readable identifier for more detailed message categorization

	project?: string

	// (inbox only - required) Human readable identifier of the application that uses the Flowdock API

	source?: string

	// (inbox only - required) Subject line of the message

	subject?: string

	// API token.

	token: string

	// (chat only - required) Name of the "user" sending the message

	external_user_name?: string

	// Content of the message

	msg: string

	// (inbox only) Email address for replies

	reply_to?: string

	// tags of the message, separated by commas

	tags?: string

	// Whether to post to 'inbox' or 'chat'

	type: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// (inbox only - required) Email address of the message sender

	from_address?: string
}

mqtt :: {

	// The path pointing to the PEM encoded client certificate. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.

	client_cert?: string

	// Password for C(username) to authenticate against the broker.

	password?: string

	// Payload. The special string C("None") may be used to send a NULL (i.e. empty) payload which is useful to simply notify with the I(topic) or to clear previously retained messages.

	payload: string

	// Setting this flag causes the broker to retain (i.e. keep) the message so that applications that subsequently subscribe to the topic can received the last retained message immediately.

	retain?: bool

	// MQTT broker address/name

	server?: string

	// Specifies the version of the SSL/TLS protocol to be used.
	// By default (if the python version supports it) the highest TLS version is detected. If unavailable, TLS v1 is used.

	tls_version?: string

	// MQTT topic name

	topic: string

	// The path to the Certificate Authority certificate files that are to be treated as trusted by this client. If this is the only option given then the client will operate in a similar manner to a web browser. That is to say it will require the broker to have a certificate signed by the Certificate Authorities in ca_certs and will communicate using TLS v1, but will not attempt any form of authentication. This provides basic network encryption but may not be sufficient depending on how the broker is configured.

	ca_cert?: string

	// The path pointing to the PEM encoded client private key. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.

	client_key?: string

	// MQTT broker port number

	port?: string

	// QoS (Quality of Service)

	qos?: string

	// Username to authenticate against the broker.

	username?: string

	// MQTT client identifier

	client_id?: string
}

bearychat :: {

	// Define a list of attachments. For more information, see https://github.com/bearyinnovative/bearychat-tutorial/blob/master/robots/incoming.md#attachments

	attachments?: string

	// Channel to send the message to. If absent, the message goes to the default channel selected by the I(url).

	channel?: string

	// If C(yes), text will be parsed as markdown.

	markdown?: bool

	// Message to send.

	text?: string

	// BearyChat WebHook URL. This authenticates you to the bearychat service. It looks like C(https://hook.bearychat.com/=ae2CF/incoming/e61bd5c57b164e04b11ac02e66f47f60).

	url: string
}

mail :: {

	// The subject of the email being sent.

	subject: string

	// The email-address the mail is sent from. May contain address and phrase.

	from?: string

	// A list of headers which should be added to the message.
	// Each individual header is specified as C(header=value) (see example below).

	headers?: [..._]

	// The mail server.

	host?: string

	// If SMTP requires password.

	password?: string

	// The mail server port.
	// This must be a valid integer between 1 and 65534

	port?: int

	// If C(always), the connection will only send email if the connection is Encrypted. If the server doesn't accept the encrypted connection it will fail.
	// If C(try), the connection will attempt to setup a secure SSL/TLS session, before trying to send.
	// If C(never), the connection will not attempt to setup a secure SSL/TLS session, before sending
	// If C(starttls), the connection will try to upgrade to a secure SSL/TLS connection, before sending. If it is unable to do so it will fail.

	secure?: string

	// The email-address(es) the mail is being 'blind' copied to.
	// This is a list, which may contain address and phrase portions.

	bcc?: [..._]

	// The body of the email being sent.

	body?: string

	// Sets the timeout in seconds for connection attempts.

	timeout?: int

	// The minor mime type, can be either C(plain) or C(html).
	// The major type is always C(text).

	subtype?: string

	// The email-address(es) the mail is being sent to.
	// This is a list, which may contain address and phrase portions.

	to?: [..._]

	// If SMTP requires username.

	username?: string

	// A list of pathnames of files to attach to the message.
	// Attached files will have their content-type set to C(application/octet-stream).

	attach?: [..._]

	// The email-address(es) the mail is being copied to.
	// This is a list, which may contain address and phrase portions.

	cc?: [..._]

	// The character set of email being sent.

	charset?: string
}

nexmo :: {

	// Nexmo API Secret

	api_secret: string

	// Phone number(s) to send SMS message to

	dest: string

	// Message to text to send. Messages longer than 160 characters will be split into multiple messages

	msg: string

	// Nexmo Number to send from

	src: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Nexmo API Key

	api_key: string
}

slack :: {

	// Url for the message sender's icon (default C(https://www.ansible.com/favicon.ico))

	icon_url?: string

	// Automatically create links for channels and usernames in I(msg).

	link_names?: string

	// Message to send. Note that the module does not handle escaping characters. Plain-text angle brackets and ampersands should be converted to HTML entities (e.g. & to &amp;) before sending. See Slack's documentation (U(https://api.slack.com/docs/message-formatting)) for more.

	msg?: string

	// Setting for the message parser at Slack

	parse?: string

	// Define a list of attachments. This list mirrors the Slack JSON API.
	// For more information, see also in the (U(https://api.slack.com/docs/attachments)).

	attachments?: string

	// Channel to send the message to. If absent, the message goes to the channel selected for the I(token).

	channel?: string

	// Slack (sub)domain for your environment without protocol. (i.e. C(example.slack.com)) In 1.8 and beyond, this is deprecated and may be ignored.  See token documentation for information.

	domain?: string

	// Emoji for the message sender. See Slack documentation for options. (if I(icon_emoji) is set, I(icon_url) will not be used)

	icon_emoji?: string

	// Optional. Timestamp of message to thread this message to as a float. https://api.slack.com/docs/message-threading

	thread_id?: string

	// This is the sender of the message.

	username?: string

	// Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message.
	// Allowed values for color can be one of 'normal', 'good', 'warning', 'danger', any valid 3 digit or 6 digit hex color value.
	// Specifying value in hex is supported from version 2.8.

	color?: string

	// Slack integration token.  This authenticates you to the slack service. Prior to 1.8, a token looked like C(3Ffe373sfhRE6y42Fg3rvf4GlK).  In 1.8 and above, ansible adapts to the new slack API where tokens look like C(G922VJP24/D921DW937/3Ffe373sfhRE6y42Fg3rvf4GlK).  If tokens are in the new format then slack will ignore any value of domain.  If the token is in the old format the domain is required.  Ansible has no control of when slack will get rid of the old API.  When slack does that the old format will stop working.  ** Please keep in mind the tokens are not the API tokens but are the webhook tokens.  In slack these are found in the webhook URL which are obtained under the apps and integrations. The incoming webhooks can be added in that area.  In some cases this may be locked by your Slack admin and you must request access.  It is there that the incoming webhooks can be added.  The key is on the end of the URL given to you in that section.

	token: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

snow_record :: {

	// Attach a file to the record.

	attachment?: string

	// key, value pairs of data to load into the record. See Examples.
	// Required for C(state:present).

	data?: {...}

	// Changes the field that C(number) uses to find records.

	lookup_field?: string

	// Record number to update.
	// Required for C(state:absent).

	number?: string

	// If C(present) is supplied with a C(number) argument, the module will attempt to update the record with the supplied data.
	// If no such record exists, a new one will be created.
	// C(absent) will delete a record.

	state: string

	// Table to query for records.

	table?: string
}

mattermost :: {

	// Mattermost webhook api key. Log into your mattermost site, go to Menu -> Integration -> Incoming Webhook -> Add Incoming Webhook. This will give you full URL. api_key is the last part. http://mattermost.example.com/hooks/C(API_KEY)

	api_key: string

	// Channel to send the message to. If absent, the message goes to the channel selected for the I(api_key).

	channel?: string

	// Url for the message sender's icon.

	icon_url?: string

	// Text to send. Note that the module does not handle escaping characters.

	text: string

	// Mattermost url (i.e. http://mattermost.yourcompany.com).

	url: string

	// This is the sender of the message (Username Override need to be enabled by mattermost admin, see mattermost doc.

	username?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

rabbitmq_publish :: {

	// The RabbitMQ server hostname or IP.

	host?: string

	// The protocol to use.

	proto?: string

	// The queue to publish a message to.  If no queue is specified, RabbitMQ will return a random queue name.

	queue?: string

	// An URL connection string to connect to the RabbitMQ server.
	// I(url) and I(host)/I(port)/I(user)/I(pass)/I(vhost) are mutually exclusive, use either or but not both.

	url?: string

	// A dictionary of headers to post with the message.

	headers?: {...}

	// The content type of the body.

	content_type?: string

	// Set the queue to be exclusive.

	exclusive?: bool

	// The RabbitMQ password.

	password?: string

	// The RabbitMQ server port.

	port?: string

	// The routing key.

	routing_key?: string

	// The RabbitMQ username.

	username?: string

	// The body of the message.
	// A C(body) cannot be provided if a C(src) is specified.

	body?: string

	// The virtual host to target.
	// If default vhost is required, use C('%2F').

	vhost?: string

	// Set the queue to be durable.

	durable?: bool

	// The exchange to publish a message to.

	exchange?: string

	// A file to upload to the queue.  Automatic mime type detection is attempted if content_type is not defined (left as default).
	// A C(src) cannot be provided if a C(body) is specified.
	// The filename is added to the headers of the posted message to RabbitMQ. Key being the C(filename), value is the filename.

	src?: string

	// Set the queue to auto delete.

	auto_delete?: bool
}

say :: {

	// What to say

	msg: string

	// What voice to use

	voice?: string
}

campfire :: {

	// The subscription name to use.

	subscription: string

	// API token.

	token: string

	// The message body.

	msg: string

	// Send a notification sound before the message.

	notify?: string

	// Room number to which the message should be sent.

	room: string
}

hipchat :: {

	// Name the message will appear to be sent from. Max length is 15 characters - above this it will be truncated.

	from?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// API token.

	token: string

	// API url if using a self-hosted hipchat server. For Hipchat API version 2 use the default URI with C(/v2) instead of C(/v1).

	api?: string

	// Background color for the message.

	color?: string

	// The message body.

	msg: string

	// Message format.

	msg_format?: string

	// If true, a notification will be triggered for users in the room.

	notify?: bool

	// ID or name of the room.

	room: string
}

sendgrid :: {

	// the address in the "from" field for the email

	from_address: string

	// the name you want to appear in the from field, i.e 'John Doe'

	from_name?: string

	// password that corresponds to the username
	// Since 2.2 it is only required if api_key is not supplied.

	password?: string

	// the desired subject for the email

	subject: string

	// username for logging into the SendGrid account.
	// Since 2.2 it is only required if api_key is not supplied.

	username?: string

	// sendgrid API key to use instead of username/password

	api_key?: string

	// a list of relative or explicit paths of files you want to attach (7MB limit as per SendGrid docs)

	attachments?: string

	// a list of email addresses to bcc

	bcc?: string

	// a list with one or more recipient email addresses

	to_addresses: string

	// a list of email addresses to cc

	cc?: string

	// a dict to pass on as headers

	headers?: string

	// whether the body is html content that should be rendered

	html_body?: bool
}

telegram :: {

	// Telegram group or user chat_id

	chat_id: string

	// What message you wish to send.

	msg: string

	// Message format. Formatting options `markdown` and `html` described in Telegram API docs (https://core.telegram.org/bots/api#formatting-options). If option `plain` set, message will not be formatted.

	msg_format?: string

	// Token identifying your telegram bot.

	token: string
}

catapult :: {

	// Api Token from Api account page.

	api_token: string

	// The phone number or numbers the message should be sent to (must be in E.164 format, like C(+19195551212)).

	dest: string

	// For MMS messages, a media url to the location of the media to be sent with the message.

	media?: string

	// The contents of the text message (must be 2048 characters or less).

	msg: string

	// One of your catapult telephone numbers the message should come from (must be in E.164 format, like C(+19195551212)).

	src: string

	// User Id from Api account page.

	user_id: string

	// Api Secret from Api account page.

	api_secret: string
}

cisco_spark :: {

	// The request parameter you would like to send the message to.
	// Messages can be sent to either a room or individual (by ID or E-Mail).

	recipient_type: string

	// The message you would like to send.

	message: string

	// Specifies how you would like the message formatted.

	message_type?: string

	// Your personal access token required to validate the Spark API.

	personal_token: string

	// The unique identifier associated with the supplied C(recipient_type).

	recipient_id: string
}

jabber :: {

	// message encoding

	encoding?: string

	// host to connect, overrides user info

	host?: string

	// The message body.

	msg: string

	// password for user to connect

	password: string

	// port to connect to, overrides default

	port?: string

	// user ID or name of the room, when using room use a slash to indicate your nick.

	to: string

	// User as which to connect

	user: string
}

pushbullet :: {

	// Body of the notification, e.g. Details of the fault you're alerting.

	body?: string

	// The channel TAG you wish to broadcast a push notification, as seen on the "My Channels" > "Edit your channel" at Pushbullet page.

	channel?: string

	// The device NAME you wish to send a push notification, as seen on the Pushbullet main page.

	device?: string

	// Thing you wish to push.

	push_type?: string

	// Title of the notification.

	title: string

	// Push bullet API token

	api_key: string
}

pushover :: {

	// Pushover issued token identifying your pushover app.

	app_token: string

	// What message you wish to send.

	msg: string

	// Message priority (see U(https://pushover.net) for details).

	pri?: string

	// Message title.

	title?: string

	// Pushover issued authentication key for your user.

	user_key: string
}

syslogger :: {

	// Log the pid in brackets

	log_pid?: bool

	// This is the message to place in syslog

	msg: string

	// Set the log priority

	priority?: string

	// Set the log facility

	facility?: string
}

typetalk :: {

	// OAuth2 client ID

	client_id: string

	// OAuth2 client secret

	client_secret: string

	// message body

	msg: string

	// topic id to post message

	topic: string
}

grove :: {

	// Token of the channel to post to.

	channel_token: string

	// Icon for the service

	icon_url?: string

	// Message content

	message: string

	// Name of the service (displayed as the "user" in the message)

	service?: string

	// Service URL for the web client

	url?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

matrix :: {

	// URL of the homeserver, where the CS-API is reachable

	hs_url: string

	// HTML form of the message to send to matrix

	msg_html: string

	// Plain text form of the message to send to matrix, usually markdown

	msg_plain: string

	// The password to log in with

	password?: string

	// ID of the room to send the notification to

	room_id: string

	// Authentication token for the API call. If provided, user_id and password are not required

	token?: string

	// The user id of the user

	user_id?: string
}

office_365_connector_card :: {

	// This array of objects will power the action links
	// found at the bottom of the card.

	actions?: string

	// Accent color used for branding or indicating status in the card.

	color?: string

	// Contains a list of sections to display in the card.
	// For more information see https://dev.outlook.com/Connectors/reference.

	sections?: string

	// A string used for summarizing card content.
	// This will be shown as the message subject.
	// This is required if the text parameter isn't populated.

	summary?: string

	// The main text of the card.
	// This will be rendered below the sender information and optional title,
	// and above any sections or actions present.

	text?: string

	// A title for the Connector message. Shown at the top of the message.

	title?: string

	// The webhook URL is given to you when you create a new Connector.

	webhook: string
}
