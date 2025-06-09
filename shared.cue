package awesome

#Link: {
	text:  string
	repo?: string
	url:   string | *"https://github.com/\(repo)"
}

#Info: {
	// Whether this tool has been reviewed.
	reviewed: bool | *true

	// Is the project still (at least somewhat) maintained.
	abandoned: bool | *false

	// Projects that go hand in hand with that tool.
	related: [...#Link]

	// Anything else.
	notes?: string
}
