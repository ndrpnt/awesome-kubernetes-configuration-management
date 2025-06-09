package awesome

import (
	"list"
	"time"
)

#Source: {
	name: #Link
	date: time.Format("2006-01-02")
}

let _sources = [
	{
		name: {text: "Kubernetes application management tools spreadsheet", url: "https://docs.google.com/spreadsheets/d/1FCgqz1Ci7_VCz_wdh8vBitZ3giBtac_H8SBw4uxnrsE/"}
		date: "2024-11-18"
	},
	{
		name: {text: "Kubetools", url: "https://collabnix.github.io/kubetools/"}
		date: "2024-11-18"
	},
	{
		name: {text: "Awesome Kubernetes Resources", url: "https://github.com/tomhuang12/awesome-k8s-resources"}
		date: "2024-11-18"
	},
	{
		name: {text: "Awesome Kubernetes", url: "https://github.com/run-x/awesome-kubernetes"}
		date: "2024-11-18"
	},
	{
		name: {text: "Awesome K8s", url: "https://github.com/pditommaso/awesome-k8s"}
		date: "2024-11-18"
	},
	{
		name: {text: "Declarative application management in Kubernetes", url: "https://github.com/kubernetes/design-proposals-archive/blob/main/architecture/declarative-application-management.md"}
		date: "2025-02-09"
	},
	{
		name: {text: "Kubernetes Configuration in 2024", url: "https://itnext.io/kubernetes-configuration-in-2024-434abc7a5a1b"}
		date: "2025-02-09"
	},
]

_sources_checks: {
	unique_name_text: list.UniqueItems() & [ for t in _sources {t.name.text}]
	unique_name_repo: list.UniqueItems() & [ for t in _sources {t.name.repo}]
	unique_name_url:  list.UniqueItems() & [ for t in _sources {t.name.url}]
}
data: sources: [...#Source] & list.Sort(_sources, {x: _, y: _, less: x.date < y.date})
