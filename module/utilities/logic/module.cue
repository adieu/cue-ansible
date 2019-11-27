package logic

assert :: {

	// The customized message used for a successful assertion.

	success_msg?: string

	// A list of string expressions of the same form that can be passed to the 'when' statement.

	that: [..._]

	// The customized message used for a failing assertion.
	// This argument was called 'msg' before Ansible 2.7, now it is renamed to 'fail_msg' with alias 'msg'.

	fail_msg?: string

	// Set this to C(yes) to avoid verbose output.

	quiet?: bool
}

import_role :: {

	// File to load from a role's C(defaults/) directory.

	defaults_from?: string

	// File to load from a role's C(handlers/) directory.

	handlers_from?: string

	// The name of the role to be executed.

	name: string

	// File to load from a role's C(tasks/) directory.

	tasks_from?: string

	// File to load from a role's C(vars/) directory.

	vars_from?: string

	// Overrides the role's metadata setting to allow using a role more than once with the same parameters.

	allow_duplicates?: bool
}

import_tasks :: {

	// The name of the imported file is specified directly without any other option.
	// Most keywords, including loops and conditionals, only applied to the imported tasks, not to this statement itself.
	// If you need any of those to apply, use M(include_tasks) instead.

	`free-form`?: string
}

include :: {

	// This module allows you to specify the name of the file directly without any other options.

	`free-form`?: string
}

set_stats :: {

	// Whether the provided value is aggregated to the existing stat C(yes) or will replace it C(no).

	aggregate?: bool

	// A dictionary of which each key represents a stat (or variable) you want to keep track of.

	data: {...}

	// whether the stats are per host or for all hosts in the run.

	per_host?: bool
}

fail :: {

	// The customized message used for failing execution.
	// If omitted, fail will simply bail out with a generic message.

	msg?: string
}

include_tasks :: {

	// Supplying a file name via free-form C(- include_tasks: file.yml) of a file to be included is the equivalent
of specifying an argument of I(file).


	`free-form`?: string

	// Accepts a hash of task keywords (e.g. C(tags), C(become)) that will be applied to the tasks within the include.

	apply?: string

	// The name of the imported file is specified directly without any other option.
	// Unlike M(import_tasks), most keywords, including loop, with_items, and conditionals, apply to this statement.
	// The do until loop is not supported on M(include_tasks).

	file?: string
}

include_role :: {

	// File to load from a role's C(defaults/) directory.

	defaults_from?: string

	// File to load from a role's C(handlers/) directory.

	handlers_from?: string

	// The name of the role to be executed.

	name: string

	// This option dictates whether the role's C(vars) and C(defaults) are exposed to the playbook. If set to C(yes) the variables will be available to tasks following the C(include_role) task. This functionality differs from standard variable exposure for roles listed under the C(roles) header or C(import_role) as they are exposed at playbook parsing time, and available to earlier roles and tasks as well.

	public?: bool

	// File to load from a role's C(tasks/) directory.

	tasks_from?: string

	// File to load from a role's C(vars/) directory.

	vars_from?: string

	// Overrides the role's metadata setting to allow using a role more than once with the same parameters.

	allow_duplicates?: bool

	// Accepts a hash of task keywords (e.g. C(tags), C(become)) that will be applied to all tasks within the included role.

	apply?: string
}

wait_for :: {

	// Number of seconds to sleep between checks.
	// Before Ansible 2.3 this was hardcoded to 1 second.

	sleep?: int

	// Either C(present), C(started), or C(stopped), C(absent), or C(drained).
	// When checking a port C(started) will ensure the port is open, C(stopped) will check that it is closed, C(drained) will check for active connections.
	// When checking for a file or a search string C(present) or C(started) will ensure that the file or string is present before continuing, C(absent) will check that file is absent or removed.

	state?: string

	// Port number to poll.
	// C(path) and C(port) are mutually exclusive parameters.

	port?: int

	// Can be used to match a string in either a file or a socket connection.
	// Defaults to a multiline regex.

	search_regex?: string

	// Number of seconds to wait before starting to poll.

	delay?: int

	// List of hosts or IPs to ignore when looking for active TCP connections for C(drained) state.

	exclude_hosts?: [..._]

	// A resolvable hostname or IP address to wait for.

	host?: string

	// This overrides the normal error message from a failure to meet the required conditions.

	msg?: string

	// Path to a file on the filesystem that must exist before continuing.
	// C(path) and C(port) are mutually exclusive parameters.

	path?: string

	// Maximum number of seconds to wait for, when used with another condition it will force an error.
	// When used without other conditions it is equivalent of just sleeping.

	timeout?: int

	// The list of TCP connection states which are counted as active connections.

	active_connection_states?: [..._]

	// Maximum number of seconds to wait for a connection to happen before closing and retrying.

	connect_timeout?: int
}

wait_for_connection :: {

	// Maximum number of seconds to wait for.

	timeout?: int

	// Maximum number of seconds to wait for a connection to happen before closing and retrying.

	connect_timeout?: int

	// Number of seconds to wait before starting to poll.

	delay?: int

	// Number of seconds to sleep between checks.

	sleep?: int
}

async_status :: {

	// Job or task identifier

	jid: string

	// If C(status), obtain the status.
	// If C(cleanup), clean up the async job cache (by default in C(~/.ansible_async/)) for the specified job I(jid).

	mode?: string
}

debug :: {

	// The customized message that is printed. If omitted, prints a generic message.

	msg?: string

	// A variable name to debug.
	// Mutually exclusive with the C(msg) option.
	// Be aware that this option already runs in Jinja2 context and has an implicit C({{ }}) wrapping, so you should not be using Jinja2 delimiters unless you are looking for double interpolation.

	var?: string

	// A number that controls when the debug is run, if you set to 3 it will only run debug when -vvv or above

	verbosity?: int
}

import_playbook :: {

	// The name of the imported playbook is specified directly without any other option.

	`free-form`?: string
}

include_vars :: {

	// When using C(dir), this module will, by default, recursively go through each sub directory and load up the variables. By explicitly setting the depth, this module will only go as deep as the depth.

	depth?: int

	// The directory name from which the variables should be loaded.
	// If the path is relative and the task is inside a role, it will look inside the role's vars/ subdirectory.
	// If the path is relative and not inside a role, it will be parsed relative to the playbook.

	dir?: string

	// List of file extensions to read when using C(dir).

	extensions?: [..._]

	// The file name from which variables should be loaded.
	// If the path is relative, it will look for the file in vars/ subdirectory of a role or relative to playbook.

	file?: string

	// The name of a variable into which assign the included vars.
	// If omitted (null) they will be made top level vars.

	name?: string

	// Limit the files that are loaded within any directory to this regular expression.

	files_matching?: string

	// This module allows you to specify the 'file' option directly without any other options.
	// There is no 'free-form' option, this is just an indicator, see example below.

	`free-form`?: string

	// List of file names to ignore.

	ignore_files?: [..._]

	// Ignore unknown file extensions within the directory.
	// This allows users to specify a directory containing vars files that are intermingled with non-vars files extension types (e.g. a directory with a README in it and vars files).

	ignore_unknown_extensions?: bool
}

pause :: {

	// A positive number of seconds to pause for.

	seconds?: string

	// Controls whether or not keyboard input is shown when typing.
	// Has no effect if 'seconds' or 'minutes' is set.

	echo?: bool

	// A positive number of minutes to pause for.

	minutes?: string

	// Optional text to use for the prompt message.

	prompt?: string
}

set_fact :: {

	// This boolean converts the variable into an actual 'fact' which will also be added to the fact cache, if fact caching is enabled.
	// Normally this module creates 'host level variables' and has much higher precedence, this option changes the nature and precedence (by 7 steps) of the variable created. https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable
	// This actually creates 2 copies of the variable, a normal 'set_fact' host variable with high precedence and a lower 'ansible_fact' one that is available for persistance via the facts cache plugin. This creates a possibly confusing interaction with C(meta: clear_facts) as it will remove the 'ansible_fact' but not the host variable.

	cacheable?: bool

	// The C(set_fact) module takes key=value pairs as variables to set in the playbook scope. Or alternatively, accepts complex arguments using the C(args:) statement.

	key_value: string
}
