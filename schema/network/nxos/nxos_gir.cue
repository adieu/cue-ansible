package ansible

module: nxos_gir: {
	module:                         "nxos_gir"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Trigger a graceful removal or insertion (GIR) of the switch."
	description: [
		"Trigger a graceful removal or insertion (GIR) of the switch.",
	]
	author: [
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state) has effect only in combination with C(system_mode_maintenance_timeout) or C(system_mode_maintenance_on_reload_reset_reason).",
		"Using C(system_mode_maintenance) and C(system_mode_maintenance_dont_generate_profile) would make the module fail, but the system mode will be triggered anyway.",
	]

	options: {
		system_mode_maintenance: {
			description: [
				"When C(system_mode_maintenance=true) it puts all enabled protocols in maintenance mode (using the isolate command). When C(system_mode_maintenance=false) it puts all enabled protocols in normal mode (using the no isolate command).",
			]

			type: "bool"
		}
		system_mode_maintenance_dont_generate_profile: {
			description: [
				"When C(system_mode_maintenance_dont_generate_profile=true) it prevents the dynamic searching of enabled protocols and executes commands configured in a maintenance-mode profile. Use this option if you want the system to use a maintenance-mode profile that you have created. When C(system_mode_maintenance_dont_generate_profile=false) it prevents the dynamic searching of enabled protocols and executes commands configured in a normal-mode profile. Use this option if you want the system to use a normal-mode profile that you have created.",
			]

			type: "bool"
		}
		system_mode_maintenance_timeout: description: [
			"Keeps the switch in maintenance mode for a specified number of minutes. Range is 5-65535.",
		]

		system_mode_maintenance_shutdown: {
			description: [
				"Shuts down all protocols, vPC domains, and interfaces except the management interface (using the shutdown command). This option is disruptive while C(system_mode_maintenance) (which uses the isolate command) is not.",
			]

			type: "bool"
		}
		system_mode_maintenance_on_reload_reset_reason: {
			description: [
				"Boots the switch into maintenance mode automatically in the event of a specified system crash. Note that not all reset reasons are applicable for all platforms. Also if reset reason is set to match_any, it is not idempotent as it turns on all reset reasons. If reset reason is match_any and state is absent, it turns off all the reset reasons.",
			]

			choices: [
				"hw_error",
				"svc_failure",
				"kern_failure",
				"wdog_timeout",
				"fatal_error",
				"lc_failure",
				"match_any",
				"manual_reload",
				"any_other",
				"maintenance",
			]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			required: true
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
