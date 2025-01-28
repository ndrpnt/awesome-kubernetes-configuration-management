package awesome

import (
	"list"
	"strings"
)

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

#ConfigTool: {
	#Feature:
		// Generation
		// Given some non-Kubernetes configuration, returns Kubernetes manifests.
		"G" |

		// Mutation
		// Given Kubernetes manifests, returns (possibly different) Kubernetes
		// manifests.
		"M" |

		// Validation
		// Given Kubernetes manifests, returns validation results.
		"V" |

		// Deployment
		// Given Kubernetes manifest, makes Kubernetes API calls.
		"D" |

		// Sharing
		// Enables the packaging and/or distribution of Kubernetes manifests.
		"S" |

		// Runs in cluster.
		"I" |

		// Runs locally.
		"L"

	name: #Link
	info: #Info

	let sorted_features = "GMVDSIL"
	features: [...#Feature] & list.UniqueItems() & list.IsSorted({x: #Feature, y: #Feature, less: strings.Index(sorted_features, x) < strings.Index(sorted_features, y)})

	// Languages you may employ when using that tool. JSON and YAML documents
	// following the Kubernetes Resource Model are not indicated.
	//
	// This is *not* the language the tool is written in.
	languages: [...string] & list.UniqueItems()
}

#SecretTool: {
	#Feature:
		// Runs in cluster.
		"I" |

		// Runs locally.
		"L" |

		// Runs side-by-side with the application.
		"A"

	name: #Link
	info: #Info

	let sorted_features = "ILA"
	features: [...#Feature] & list.UniqueItems() & list.IsSorted({x: #Feature, y: #Feature, less: strings.Index(sorted_features, x) < strings.Index(sorted_features, y)})
}

#MiscTool: {
	name: #Link
	info: #Info
}

_checks: {
	unique_config_tools_name_text: list.UniqueItems() & [ for t in data.config_tools {t.name.text}]
	unique_config_tools_name_repo: list.UniqueItems() & [ for t in data.config_tools {t.name.repo}]
	unique_secret_tools_name_text: list.UniqueItems() & [ for t in data.secret_tools {t.name.text}]
	unique_secret_tools_name_repo: list.UniqueItems() & [ for t in data.secret_tools {t.name.repo}]
}
