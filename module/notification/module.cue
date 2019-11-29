package notification

mail :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	mail: {
		secure?:   string
		subject:   string
		timeout?:  int
		password?: string
		to?: [...]
		cc?: [...]
		charset?: string
		from?:    string
		headers?: [...]
		subtype?: string
		bcc?: [...]
		body?:     string
		host?:     string
		port?:     int
		username?: string
		attach?: [...]
	}
}

jabber :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	jabber: {
		host?:     string
		msg:       string
		password:  string
		port?:     string
		to:        string
		user:      string
		encoding?: string
	}
}

pushbullet :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	pushbullet: {
		api_key:    string
		body?:      string
		channel?:   string
		device?:    string
		push_type?: string
		title:      string
	}
}

snow_record :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	snow_record: {
		table?:      string
		attachment?: string
		data?: {...}
		lookup_field?: string
		number?:       string
		state:         string
	}
}

typetalk :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	typetalk: {
		client_id:     string
		client_secret: string
		msg:           string
		topic:         string
	}
}

cisco_spark :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	cisco_spark: {
		personal_token: string
		recipient_id:   string
		recipient_type: string
		message:        string
		message_type?:  string
	}
}

say :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	say: {
		msg:    string
		voice?: string
	}
}

logentries_msg :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	logentries_msg: {
		port?: string
		token: string
		api?:  string
		msg:   string
	}
}

hipchat :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	hipchat: {
		msg_format?:     string
		notify?:         bool
		token:           string
		validate_certs?: bool
		color?:          string
		msg:             string
		room:            string
		api?:            string
		from?:           string
	}
}

pushover :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	pushover: {
		title?:    string
		user_key:  string
		app_token: string
		msg:       string
		pri?:      string
	}
}

rocketchat :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	rocketchat: {
		username?:       string
		validate_certs?: bool
		attachments?:    string
		channel?:        string
		icon_emoji?:     string
		icon_url?:       string
		protocol?:       string
		color?:          string
		domain:          string
		link_names?:     string
		msg?:            string
		token:           string
	}
}

grove :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	grove: {
		icon_url?:       string
		message:         string
		service?:        string
		url?:            string
		validate_certs?: bool
		channel_token:   string
	}
}

office_365_connector_card :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	office_365_connector_card: {
		summary?:  string
		text?:     string
		title?:    string
		webhook:   string
		actions?:  string
		color?:    string
		sections?: string
	}
}

rabbitmq_publish :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	rabbitmq_publish: {
		auto_delete?: bool
		durable?:     bool
		headers?: {...}
		routing_key?:  string
		content_type?: string
		host?:         string
		password?:     string
		port?:         string
		proto?:        string
		queue?:        string
		vhost?:        string
		exclusive?:    bool
		username?:     string
		body?:         string
		exchange?:     string
		src?:          string
		url?:          string
	}
}

irc :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	irc: {
		channel:  string
		part?:    bool
		server?:  string
		use_ssl?: bool
		color?:   string
		nick?:    string
		nick_to?: string
		port?:    string
		timeout?: string
		key?:     string
		msg:      string
		passwd?:  string
		style?:   string
		topic?:   string
	}
}

mqtt :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	mqtt: {
		server?:      string
		ca_cert?:     string
		client_cert?: string
		client_id?:   string
		password?:    string
		payload:      string
		retain?:      bool
		client_key?:  string
		port?:        string
		qos?:         string
		tls_version?: string
		topic:        string
		username?:    string
	}
}

sendgrid :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	sendgrid: {
		from_address: string
		html_body?:   bool
		username?:    string
		attachments?: string
		bcc?:         string
		cc?:          string
		password?:    string
		subject:      string
		to_addresses: string
		api_key?:     string
		from_name?:   string
		headers?:     string
	}
}

catapult :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	catapult: {
		api_secret: string
		api_token:  string
		dest:       string
		media?:     string
		msg:        string
		src:        string
		user_id:    string
	}
}

campfire :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	campfire: {
		msg:          string
		notify?:      string
		room:         string
		subscription: string
		token:        string
	}
}

mattermost :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	mattermost: {
		validate_certs?: bool
		api_key:         string
		channel?:        string
		icon_url?:       string
		text:            string
		url:             string
		username?:       string
	}
}

snow_record_find :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	snow_record_find: {
		max_records?: int
		order_by?:    string
		query: {...}
		return_fields?: [...]
		table?: string
	}
}

syslogger :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	syslogger: {
		facility?: string
		log_pid?:  bool
		msg:       string
		priority?: string
	}
}

telegram :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	telegram: {
		chat_id:     string
		msg:         string
		msg_format?: string
		token:       string
	}
}

bearychat :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	bearychat: {
		attachments?: string
		channel?:     string
		markdown?:    bool
		text?:        string
		url:          string
	}
}

matrix :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	matrix: {
		token?:    string
		user_id?:  string
		hs_url:    string
		msg_html:  string
		msg_plain: string
		password?: string
		room_id:   string
	}
}

nexmo :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	nexmo: {
		api_key:         string
		api_secret:      string
		dest:            string
		msg:             string
		src:             string
		validate_certs?: bool
	}
}

slack :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	slack: {
		msg?:            string
		username?:       string
		attachments?:    string
		color?:          string
		domain?:         string
		icon_url?:       string
		thread_id?:      string
		token:           string
		validate_certs?: bool
		channel?:        string
		icon_emoji?:     string
		link_names?:     string
		parse?:          string
	}
}

twilio :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	twilio: {
		account_sid: string
		auth_token:  string
		from_number: string
		media_url?:  string
		msg:         string
		to_numbers:  string
	}
}

flowdock :: {
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	connection?: string
	when?:       string
	notify?:     string | [...string]
	with_items?: [...string]
	become?: bool
	flowdock: {
		link?:               string
		project?:            string
		source?:             string
		subject?:            string
		tags?:               string
		token:               string
		external_user_name?: string
		from_name?:          string
		reply_to?:           string
		type:                string
		validate_certs?:     bool
		from_address?:       string
		msg:                 string
	}
}
