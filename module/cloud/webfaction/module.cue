package webfaction

webfaction_domain :: {

	// The webfaction password to use

	login_password: string

	// The name of the domain

	name: string

	// Whether the domain should exist

	state?: string

	// Any subdomains to create.

	subdomains?: string

	// The webfaction account to use

	login_name: string
}

webfaction_mailbox :: {

	// The webfaction account to use

	login_name: string

	// The webfaction password to use

	login_password: string

	// The name of the mailbox

	mailbox_name: string

	// The password for the mailbox

	mailbox_password: string

	// Whether the mailbox should exist

	state?: string
}

webfaction_site :: {

	// A mapping of URLs to apps

	site_apps?: string

	// Whether the website should exist

	state?: string

	// A list of subdomains associated with this site.

	subdomains?: string

	// The webfaction host on which the site should be created.

	host: string

	// Whether or not to use HTTPS

	https?: bool

	// The webfaction account to use

	login_name: string

	// The webfaction password to use

	login_password: string

	// The name of the website

	name: string
}

webfaction_app :: {

	// Whether the app should restart with an C(autostart.cgi) script

	autostart?: bool

	// Any extra parameters required by the app

	extra_info?: string

	// The webfaction password to use

	login_password: string

	// The machine name to use (optional for accounts with only one machine)

	machine?: string

	// The type of application to create. See the Webfaction docs at U(https://docs.webfaction.com/xmlrpc-api/apps.html) for a list.

	type: string

	// The webfaction account to use

	login_name: string

	// The name of the application

	name: string

	// IF the port should be opened

	port_open?: bool

	// Whether the application should exist

	state?: string
}

webfaction_db :: {

	// Whether the database should exist

	state?: string

	// The type of database to create.

	type: string

	// The webfaction account to use

	login_name: string

	// The webfaction password to use

	login_password: string

	// The machine name to use (optional for accounts with only one machine)

	machine?: string

	// The name of the database

	name: string

	// The password for the new database user.

	password?: string
}
