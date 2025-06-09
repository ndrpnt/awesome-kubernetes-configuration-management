package awesome

import (
	"list"
	"strings"
)

#MiscTool: {
	name: #Link
	info: #Info
}

let _misc_tools = [
	{
		name: {text: "Argo Rollouts", repo: "argoproj/argo-rollouts"}
		info: notes: "Controller and set of CRDs which provide progressive delivery features"
	},
	{
		name: {text: "Knative Serving", repo: "knative/serving"}
		info: notes: "Set of CRDs used to define serverless workloads"
	},
	{
		name: {text: "kro", repo: "kro-run/kro"}
		info: notes: "Define higher-level Kubernetes resources, composed of a multiple lower-level ones"
	},
	{
		name: {text: "koreo", repo: "koreo-dev/koreo-core"}
		info: notes: "Orchestrates multi-step processes that react to events and manage Kubernetes resources"
	},
]

_misc_tools_checks: {
	unique_name_text: list.UniqueItems() & [ for t in _misc_tools {t.name.text}]
	unique_name_repo: list.UniqueItems() & [ for t in _misc_tools {t.name.repo}]
	unique_name_url:  list.UniqueItems() & [ for t in _misc_tools {t.name.url}]
}
data: misc_tools: [...#MiscTool] & list.Sort(_misc_tools, {x: _, y: _, less: strings.ToLower(x.name.text) < strings.ToLower(y.name.text)})
