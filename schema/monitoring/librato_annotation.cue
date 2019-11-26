package ansible

module: librato_annotation: {
	module:            "librato_annotation"
	short_description: "create an annotation in librato"
	description: [
		"Create an annotation event on the given annotation stream :name. If the annotation stream does not exist, it will be created automatically",
	]
	version_added: "1.6"
	author:        "Seth Edwards (@Sedward)"
	requirements: []
	options: {
		user: {
			description: [
				"Librato account username",
			]
			required: true
		}
		api_key: {
			description: [
				"Librato account api key",
			]
			required: true
		}
		name: {
			description: [
				"The annotation stream name",
				"If the annotation stream does not exist, it will be created automatically",
			]
			required: false
		}
		title: {
			description: [
				"The title of an annotation is a string and may contain spaces",
				"The title should be a short, high-level summary of the annotation e.g. v45 Deployment",
			]
			required: true
		}
		source: {
			description: [
				"A string which describes the originating source of an annotation when that annotation is tracked across multiple members of a population",
			]
			required: false
		}
		description: {
			description: [
				"The description contains extra metadata about a particular annotation",
				"The description should contain specifics on the individual annotation e.g. Deployed 9b562b2 shipped new feature foo!",
			]
			required: false
		}
		start_time: {
			description: [
				"The unix timestamp indicating the time at which the event referenced by this annotation started",
			]
			required: false
		}
		end_time: {
			description: [
				"The unix timestamp indicating the time at which the event referenced by this annotation ended",
				"For events that have a duration, this is a useful way to annotate the duration of the event",
			]
			required: false
		}
		links: {
			description: [
				"See examples",
			]
			required: true
		}
	}
}
