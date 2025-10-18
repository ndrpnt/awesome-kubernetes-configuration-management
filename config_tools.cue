package awesome

import (
	"list"
	"strings"
)

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

		// Promotion
		// Enables promotion of Kubernetes manifests across environments.
		"P" |

		// Sharing
		// Enables the packaging and/or distribution of Kubernetes manifests.
		"S" |

		// Runs in cluster.
		"I" |

		// Runs locally.
		"L"

	name: #Link
	info: #Info

	let sorted_features = "GMVDPSIL"
	features: [...#Feature] & list.UniqueItems() & list.IsSorted({x: #Feature, y: #Feature, less: strings.Index(sorted_features, x) < strings.Index(sorted_features, y)})

	// Languages you may employ when using that tool. JSON and YAML documents
	// following the Kubernetes Resource Model are not indicated.
	//
	// This is *not* the language the tool is written in.
	languages: [...string] & list.UniqueItems()
}

let _config_tools = [
	{
		name: {text: "Ansible", repo: "ansible/ansible"}
		features: ["G", "D", "L"]
		languages: ["YAML", "Jinja2", "Python (for plugins)"]
		info: related: [
			{text: "Kubernetes Collection", url: "https://galaxy.ansible.com/kubernetes/core"},
		]
	},
	{
		name: {text: "Argo CD", repo: "argoproj/argo-cd"}
		features: ["D", "I"]
	},
	{
		name: {text: "dekorate", repo: "dekorateio/dekorate"}
		features: ["G", "L"]
		languages: ["Java"]
	},
	{
		name: {text: "Bazel", repo: "bazelbuild/bazel"}
		features: ["D", "L"]
		languages: ["Starlark"]
		info: related: [
			{text: "rules_gitops", repo: "adobe/rules_gitops"},
			{text: "rules_k8s", repo: "bazelbuild/rules_k8s"},
		]
	},
	{
		name: {text: "cdk8s", repo: "cdk8s-team/cdk8s"}
		features: ["G", "S", "L"]
		languages: ["TypeScript", "Python", "Java", "Go"]
		info: related: [
			{text: "cdk8s+", repo: "cdk8s-team/cdk8s-plus"},
		]
	},
	{
		name: {text: "compose2kube", repo: "kelseyhightower/compose2kube"}
		features: ["G", "L"]
		languages: ["YAML"]
		info: abandoned: true
	},
	{
		name: {text: "Config Sync", repo: "GoogleContainerTools/kpt-config-sync"}
		features: ["D", "I"]
	},
	{
		name: {text: "CUE", repo: "cue-lang/cue"}
		features: ["G", "V", "S", "L"]
		languages: ["CUE"]
	},
	{
		name: {text: "Dhall", repo: "dhall-lang/dhall-lang"}
		features: ["G", "S", "L"]
		languages: ["Dhall"]
		info: related: [
			{text: "dhall-kubernetes", repo: "dhall-lang/dhall-kubernetes"},
		]
	},
	{
		name: {text: "Flux v1", repo: "fluxcd/flux"}
		features: ["D", "I"]
		info: abandoned: true
	},
	{
		name: {text: "Flux v2", repo: "fluxcd/flux2"}
		features: ["D", "I"]
		info: related: [
			{text: "Weave GitOps", repo: "weaveworks/weave-gitops"},
		]
	},
	{
		name: {text: "Helm", repo: "helm/helm"}
		features: ["G", "D", "S", "L"]
		languages: ["Go Template"]
	},
	{
		name: {text: "Helmfile", repo: "helmfile/helmfile"}
		features: ["D", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "Isopod", repo: "cruise-automation/isopod"}
		features: ["G", "V", "D", "L"]
		languages: ["Starlark"]
		info: abandoned: true
	},
	{
		name: {text: "jk", repo: "jkcfg/jk"}
		features: ["G", "L"]
		languages: ["JavaScript", "TypeScript"]
		info: related: [
			{text: "kubernetes module", repo: "jkcfg/kubernetes"},
		]
		info: abandoned: true
	},
	{
		name: {text: "Jsonnet", repo: "google/jsonnet"}
		features: ["G", "M", "L"]
		languages: ["Jsonnet"]
		info: related: [
			{text: "kube-libsonnet", repo: "bitnami-labs/kube-libsonnet"},
			{text: "k8s-gen", repo: "jsonnet-libs/k8s"},
			{text: "k8s-libsonnet", repo: "jsonnet-libs/k8s-libsonnet"},
		]
	},
	{
		name: {text: "Kapitan", repo: "kapicorp/kapitan"}
		features: ["G", "M", "L"]
		languages: ["YAML", "Jsonnet", "Jinja2", "Python"]
	},
	{
		name: {text: "kadet", repo: "kapicorp/kadet"}
		features: ["G", "L"]
		languages: ["Python"]
	},
	{
		name: {text: "Kasane", repo: "google/kasane"}
		features: ["M", "L"]
		languages: ["YAML", "Jsonnet"]
		info: abandoned: true
	},
	{
		name: {text: "KCL", repo: "KusionStack/KCLVM"}
		features: ["G", "M", "V", "S", "L"]
		languages: ["KCL"]
		info: related: [
			{text: "Run KCL scripts as KRM functions", repo: "kcl-lang/krm-kcl"},
		]
	},
	{
		name: {text: "Kedge", repo: "kedgeproject/kedge"}
		features: ["G", "D", "L"]
		languages: ["YAML"]
		info: abandoned: true
	},
	{
		name: {text: "kpt", repo: "GoogleContainerTools/kpt"}
		features: ["G", "M", "V", "D", "S", "L"]
		languages: ["YAML", "Go", "Typescript", "Starlark", "any (w/o SDK)"]
	},
	{
		name: {text: "kubectl", repo: "kubernetes/kubectl"}
		features: ["G", "V", "D", "L"]
	},
	{
		name: {text: "kustomize", repo: "kubernetes-sigs/kustomize"}
		features: ["M", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "OpenCompose", repo: "redhat-developer/opencompose"}
		features: ["G", "L"]
		info: abandoned: true
	},
	{
		name: {text: "Terraform", repo: "hashicorp/terraform"}
		features: ["G", "D", "L"]
		languages: ["HCL"]
		info: related: [
			{text: "Kubernetes provider", repo: "terraform-providers/terraform-provider-kubernetes"},
			{text: "k8s provider", repo: "banzaicloud/terraform-provider-k8s"},
			{text: "Kustomize provider", repo: "kbst/terraform-provider-kustomize"},
			{text: "Helm provider", repo: "terraform-providers/terraform-provider-helm"},
		]
	},
	{
		name: {text: "Tilt", repo: "tilt-dev/tilt"}
		features: ["G", "M", "D", "L"]
		languages: ["Starlark"]
	},
	{
		name: {text: "Timoni", repo: "stefanprodan/timoni"}
		features: ["G", "D", "S", "L"]
		languages: ["CUE"]
	},
	{
		name: {text: "ytt", repo: "carvel-dev/ytt"}
		features: ["G", "M", "V", "L"]
		languages: ["YAML", "Starlark"]
	},
	{
		name: {text: "Polaris", repo: "FairwindsOps/polaris"}
		features: ["M", "V", "I", "L"]
		languages: ["YAML", "JSON Schema"]
	},
	{
		name: {text: "k-rail", repo: "cruise-automation/k-rail"}
		features: ["M", "V", "I"]
		languages: ["any (gRPC)"]
		info: abandoned: true
	},
	{
		name: {text: "Gatekeeper", repo: "open-policy-agent/gatekeeper"}
		features: ["M", "V", "I"]
		languages: ["Rego"]
		info: notes: "External data support"
	},
	{
		name: {text: "Kubewarden", repo: "kubewarden/kubewarden-controller"}
		features: ["M", "V", "I"]
		languages: ["any (WebAssembly)"]
	},
	{
		name: {text: "Kyverno", repo: "kyverno/kyverno"}
		features: ["G", "M", "V", "I", "L"]
		languages: ["YAML", "CEL"]
		info: notes: "External data support"
	},
	{
		name: {text: "jsPolicy", repo: "loft-sh/jspolicy"}
		features: ["M", "V", "I"]
		languages: ["JavaScript", "TypeScript"]
		info: notes: "\"Controller policies\" support"
	},
	{
		name: {text: "Datree", repo: "datreeio/datree"}
		features: ["V", "I", "L"]
		languages: ["JSON schema", "Rego"]
		info: abandoned: true
	},
	{
		name: {text: "ValidatingAdmissionPolicy", url: "https://kubernetes.io/docs/reference/access-authn-authz/validating-admission-policy"}
		features: ["V", "I"]
		languages: ["CEL"]
	},
	{
		name: {text: "kustomizer", repo: "stefanprodan/kustomizer"}
		features: ["G", "M", "S", "L"]
	},
	{
		name: {text: "Helmwave", repo: "helmwave/helmwave"}
		features: ["D", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "kapp", repo: "carvel-dev/kapp"}
		features: ["D", "L"]
	},
	{
		name: {text: "kapp-controller", repo: "carvel-dev/kapp-controller"}
		features: ["D", "I"]
	},
	{
		name: {text: "Helmsman", repo: "Praqma/helmsman"}
		features: ["D", "L"]
		languages: ["TOML"]
	},
	{
		name: {text: "NAML", repo: "kris-nova/naml"}
		features: ["G", "D", "L"]
		languages: ["Go"]
	},
	{
		name: {text: "kraan", repo: "fidelity/kraan"}
		features: ["D", "I"]
	},
	{
		name: {text: "Kubeconform", repo: "yannh/kubeconform"}
		features: ["V", "L"]
	},
	{
		name: {text: "Kubeval", repo: "instrumenta/kubeval"}
		features: ["V", "L"]
		info: abandoned: true
	},
	{
		name: {text: "Conftest", repo: "open-policy-agent/conftest"}
		features: ["V", "L"]
		languages: ["Rego"]
		info: related: [
			{text: "Kubernetes policies", url: "https://github.com/instrumenta/policies/tree/9eafe392bbec10f34d0b46fafd16b3e919aae271/kubernetes"},
		]
	},
	{
		name: {text: "Crossplane", repo: "crossplane/crossplane"}
		features: ["G", "D", "I"]
		info: related: [
			{text: "Ansible provider", repo: "crossplane-contrib/provider-ansible"},
			{text: "Argo CD provider", repo: "crossplane-contrib/provider-argocd"},
			{text: "Helm provider", repo: "crossplane-contrib/provider-helm"},
			{text: "Kubernetes provider", repo: "crossplane-contrib/provider-kubernetes"},
			{text: "Terraform provider", repo: "upbound/provider-terraform"},
		]
	},
	{
		name: {text: "Kompose", repo: "kubernetes/kompose"}
		features: ["G", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "Kosko", repo: "tommy351/kosko"}
		features: ["G", "V", "L"]
		languages: ["JavaScript", "TypeScript"]
	},
	{
		name: {text: "kr8", repo: "apptio/kr8"}
		features: ["G", "L"]
		languages: ["Jsonnet"]
	},
	{
		name: {text: "ksonnet", repo: "ksonnet/ksonnet"}
		features: ["G", "V", "D", "S", "L"]
		languages: ["Jsonnet"]
		info: abandoned: true
		info: related: [
			{text: "ksonnet-lib", repo: "ksonnet/ksonnet-lib"},
		]
	},
	{
		name: {text: "kubegen", repo: "errordeveloper/kubegen"}
		features: ["G", "L"]
		languages: ["YAML", "JSON", "HCL"]
		info: abandoned: true
	},
	{
		name: {text: "Kusion", repo: "KusionStack/kusion"}
		features: ["G", "V", "D", "L"]
		languages: ["KCL"]
	},
	{
		name: {text: "Tanka", repo: "grafana/tanka"}
		features: ["G", "D", "S", "L"]
		languages: ["Jsonnet"]
	},
	{
		name: {text: "mimic", repo: "bwplotka/mimic"}
		features: ["G", "L"]
		languages: ["Go"]
	},
	{
		name: {text: "Monokle", repo: "kubeshop/monokle"}
		features: ["G", "V", "D", "L"]
	},
	{
		name: {text: "Pulumi", repo: "pulumi/pulumi"}
		features: ["G", "D", "L"]
		languages: ["JavaScript", "TypeScript", "Python", "Go", "C#", "Visual Basic", "F#", "Java", "YAML"]
		info: related: [
			{text: "Kubernetes provider", repo: "pulumi/pulumi-kubernetes"},
			{text: "Operator", repo: "pulumi/pulumi-kubernetes-operator"},
		]
	},
	{
		name: {text: "Skycfg", repo: "stripe/skycfg"}
		features: ["G", "L"]
		languages: ["Starlark", "Go"]
	},
	{
		name: {text: "werf", repo: "werf/werf"}
		features: ["G", "D", "S", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "kubecfg", repo: "kubecfg/kubecfg"}
		features: ["G", "D", "L"]
		languages: ["Jsonnet"]
	},
	{
		name: {text: "autoapply", repo: "autoapply/autoapply"}
		features: ["D", "I"]
		languages: ["YAML"]
	},
	{
		name: {text: "kube-applier", repo: "box/kube-applier"}
		features: ["D", "I"]
		info: abandoned: true
	},
	{
		name: {text: "Keel", repo: "keel-hq/keel"}
		features: ["D", "I"]
		info: notes: "Updates container image version"
	},
	{
		name: {text: "Keptn", repo: "keptn/keptn"}
		features: ["D", "I"]
	},
	{
		name: {text: "krane", repo: "Shopify/krane"}
		features: ["G", "D", "L"]
		languages: ["ERB (Ruby templating)"]
	},
	{
		name: {text: "Shipit", repo: "Shopify/shipit-engine"}
		features: ["D", "L"]
		languages: ["ERB (Ruby templating)"]
	},
	{
		name: {text: "kubeapply", repo: "segmentio/kubeapply"}
		features: ["G", "D", "L"]
		languages: ["YAML", "Starlark"]
		info: related: [
			{text: "Terraform provider", repo: "segmentio/terraform-provider-kubeapply"},
		]
	},
	{
		name: {text: "KOTS", repo: "replicatedhq/kots"}
		features: ["D", "S", "I", "L"]
	},
	{
		name: {text: "Ship", repo: "replicatedhq/ship"}
		features: ["D", "L"]
		info: abandoned: true
	},
	{
		name: {text: "shipcat", repo: "clux/shipcat"}
		features: ["G", "D", "L"]
		languages: ["YAML"]
		info: abandoned: true
	},
	{
		name: {text: "kenv", repo: "thisendout/kenv"}
		features: ["M", "L"]
		languages: ["YAML"]
		info: abandoned: true
		info: notes:     "Injects environment variables in Pods"
	},
	{
		name: {text: "k8comp", repo: "cststack/k8comp"}
		features: ["G", "L"]
		languages: ["ERB (Ruby templating)"]
		info: abandoned: true
	},
	{
		name: {text: "konfd", repo: "kelseyhightower/konfd"}
		features: ["G", "I"]
		languages: ["Go template"]
		info: abandoned: true
	},
	{
		name: {text: "ktmpl", repo: "jimmycuadra/ktmpl"}
		features: ["G", "L"]
		info: abandoned: true
	},
	{
		name: {text: "Untrak", repo: "yanc0/untrak"}
		features: ["D", "L"]
		languages: ["YAML"]
		info: abandoned: true
		info: notes:     "Garbage collect untracked resources"
	},
	{
		name: {text: "Microconfig", repo: "microconfig/microconfig"}
		features: ["G", "L"]
	},
	{
		name: {text: "Project Syn", repo: "projectsyn"}
		features: ["G", "M", "D", "S", "I", "L"]
		languages: ["YAML", "Jsonnet", "Jinja2", "Python"]
		info: related: [
			{text: "Commodore", repo: "projectsyn/commodore"},
			{text: "Lieutenant API", repo: "projectsyn/lieutenant-api"},
			{text: "Lieutenant Operator", repo: "projectsyn/lieutenant-operator"},
			{text: "Steward", repo: "projectsyn/steward"},
		]
	},
	{
		name: {text: "Score", repo: "score-spec/spec"}
		features: ["G", "L"]
		languages: ["YAML"]
		info: related: [
			{text: "Helm integration", repo: "score-spec/score-helm"},
		]
	},
	{
		name: {text: "Kratix", repo: "syntasso/kratix"}
		features: ["G", "D", "I"]
	},
	{
		name: {text: "Nickel", repo: "tweag/nickel"}
		features: ["G", "M", "V", "L"]
		languages: ["Nickel"]
		info: related: [
			{text: "nickel-kubernetes", repo: "tweag/nickel-kubernetes"},
		]
	},
	{
		name: {text: "KubeLinter", repo: "stackrox/kube-linter"}
		features: ["V", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "Checkov", repo: "bridgecrewio/checkov"}
		features: ["V", "I", "L"]
		languages: ["YAML", "Python"]
	},
	{
		name: {text: "Lingon", repo: "volvo-cars/lingon"}
		features: ["G", "L"]
		languages: ["Go"]
		info: abandoned: true
	},
	{
		name: {text: "ko", repo: "ko-build/ko"}
		features: ["M", "D", "L"]
		info: notes: "Limited to Go applications"
	},
	{
		name: {text: "Tye", repo: "dotnet/tye"}
		features: ["G", "D", "L"]
		info: notes: "Limited to .NET applications"
	},
	{
		name: {text: "Acorn", repo: "acorn-io/runtime"}
		features: ["D", "I"]
	},
	{
		name: {text: "Meshery", repo: "meshery/meshery"}
		features: ["G", "D", "I"]
		languages: ["YAML"]
	},
	{
		name: {text: "khelm", repo: "mgoltzsche/khelm"}
		features: ["G", "M", "L"]
	},
	{
		name: {text: "k8spkg", repo: "mgoltzsche/k8spkg"}
		features: ["M", "D", "L"]
		info: abandoned: true
	},
	{
		name: {text: "Bicep", repo: "Azure/bicep"}
		features: ["G", "D", "S", "L"]
		languages: ["Bicep"]
		info: related: [
			{text: "Kubernetes provider", url: "https://github.com/MicrosoftDocs/azure-docs/blob/3d1cfaa248b92e006aa2a3101b958f5a628718a9/articles/azure-resource-manager/bicep/bicep-extensibility-kubernetes-provider.md"},
			{text: "Kubernetes type definitions", repo: "Azure/bicep-types-k8s"},
		]
	},
	{
		name: {text: "Radius", repo: "radius-project/radius"}
		features: ["D", "I"]
		languages: ["Bicep"]
	},
	{
		name: {text: "Pkl", repo: "apple/pkl"}
		features: ["G", "S", "L"]
		languages: ["Pkl"]
		info: related: [
			{text: "Kubernetes Pkl templates", repo: "apple/pkl-k8s"},
			{text: "Kubernetes Pkl examples", repo: "apple/pkl-k8s-examples"},
			{text: "Other Pkl (Kubernetes) packages", url: "https://pkl-lang.org/package-docs/"},
		]
	},
	{
		name: {text: "dxcfg", repo: "dxcfg/dxcfg"}
		features: ["G", "L"]
		languages: ["JavaScript", "TypeScript"]
		info: abandoned: true
	},
	{
		name: {text: "Glasskube", repo: "glasskube/glasskube"}
		features: ["D", "S", "I"]
	},
	{
		name: {text: "kvert", repo: "mcorbin/kvert"}
		features: ["G", "L"]
		languages: ["edn (Clojure)"]
		info: abandoned: true
	},
	{
		name: {text: "Kubescape", repo: "kubescape/kubescape"}
		features: ["V", "I", "L"]
		languages: ["Rego"]
		info: notes: "External data support"
	},
	{
		name: {text: "kubenix", repo: "hall/kubenix"}
		features: ["G", "L"]
		languages: ["Nix"]
		info: related: [
			{text: "GTrunSec/kubenix", repo: "GTrunSec/kubenix"},
			{text: "blaggacao/kubenix", repo: "blaggacao/kubenix"},
			{text: "xtruder/kubenix", repo: "xtruder/kubenix"},
		]
	},
	{
		name: {text: "YAMLScript", repo: "yaml/yamlscript"}
		features: ["G", "L"]
		languages: ["YAMLScript"]
	},
	{
		name: {text: "specctl", repo: "awslabs/specctl"}
		features: ["G", "L"]
		languages: ["YAML"]
		info: notes: "Supports generating manifests from docker compose files, and ECS Fargate task and service definitions"
	},
	{
		name: {text: "Cyclops", repo: "cyclops-ui/cyclops"}
		features: ["G", "D", "I"]
		languages: ["graphical UI"]
	},
	{
		name: {text: "Kluctl", repo: "kluctl/kluctl"}
		features: ["G", "D", "I", "L"]
		languages: ["YAML", "Jinja2"]
	},
	{
		name: {text: "kb8or", repo: "UKHomeOffice/kb8or"}
		features: ["G", "D", "L"]
		languages: ["YAML"]
		info: abandoned: true
	},
	{
		name: {text: "Razee", repo: "razee-io/Razee"}
		features: ["G", "D", "I"]
		info: abandoned: true
	},
	{
		name: {text: "AppController", repo: "Mirantis/k8s-AppController"}
		features: ["D", "I"]
		info: abandoned: true
	},
	{
		name: {text: "Psykube", repo: "psykube/psykube"}
		features: ["G", "D", "L"]
		languages: ["YAML"]
		info: abandoned: true
	},
	{
		name: {text: "PipeCD", repo: "pipe-cd/pipecd"}
		features: ["D", "I"]
	},
	{
		name: {text: "KubeVela", repo: "kubevela/kubevela"}
		features: ["G", "D", "I", "L"]
	},
	{
		name: {text: "Kargo Render", repo: "akuity/kargo-render"}
		features: ["G", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "k8skonf", repo: "konfjs/k8skonf"}
		features: ["G", "S", "L"]
		languages: ["TypeScript"]
	},
	{
		name: {text: "Kubes", repo: "boltops-tools/kubes"}
		features: ["G", "D", "L"]
		languages: ["DSL"]
	},
	{
		name: {text: "devtron", repo: "devtron-labs/devtron"}
		info: reviewed: false
	},
	{
		name: {text: "hull", repo: "vidispine/hull"}
		info: reviewed: false
	},
	{
		name: {text: "gitkube", repo: "hasura/gitkube"}
		info: reviewed: false
	},
	{
		name: {text: "Podex", repo: "kubernetes/contrib/tree/master/podex"}
		info: reviewed: false
	},
	{
		name: {text: "Rio", repo: "rancher/rio"}
		info: reviewed: false
	},
	{
		name: {text: "Spread", repo: "redspread/spread"}
		info: reviewed: false
	},
	{
		name: {text: "Draft", repo: "Azure/draft"}
		info: reviewed: false
	},
	{
		name: {text: "Deis workflow", repo: "deis/workflow"}
		info: reviewed: false
	},
	{
		name: {text: "Skylark", repo: "google/skylark"}
		info: reviewed: false
	},
	{
		name: {text: "fabric8 client", repo: "fabric8io/kubernetes-client"}
		info: reviewed: false
	},
	{
		name: {text: "kubernetes-deploy", repo: "Shopify/kubernetes-deploy"}
		info: reviewed: false
	},
	{
		name: {text: "Nulecule", repo: "projectatomic/nulecule"}
		info: reviewed: false
	},
	{
		name: {text: "landscaper", repo: "Eneco/landscaper"}
		info: reviewed: false
	},
	{
		name: {text: "Metaparticle", repo: "metaparticle-io/package"}
		info: reviewed: false
	},
	{
		name: {text: "Forge", repo: "datawire/forge/"}
		info: reviewed: false
	},
	{
		name: {text: "KPM", repo: "coreos/kpm"}
		info: reviewed: false
	},
	{
		name: {text: "Smith", repo: "atlassian/smith"}
		info: reviewed: false
	},
	{
		name: {text: "Srvexpand", repo: "hortonworks/kubernetes-yarn/tree/master/contrib/srvexpand"}
		info: reviewed: false
	},
	{
		name: {text: "k8sec", repo: "dtan4/k8sec"}
		info: reviewed: false
	},
	{
		name: {text: "fabric8-mvn-plugin", repo: "fabric8io/fabric8-maven-plugin"}
		info: reviewed: false
	},
	{
		name: {text: "Chartify", repo: "appscode/chartify"}
		info: reviewed: false
	},
	{
		name: {text: "kontemplate", repo: "tazjin/kontemplate"}
		info: reviewed: false
	},
	{
		name: {text: "rok8s-scripts", repo: "reactiveops/rok8s-scripts"}
		info: reviewed: false
	},
	{
		name: {text: "armada", repo: "att-comdev/armada"}
		info: reviewed: false
	},
	{
		name: {text: "kexpand", repo: "kopeio/kexpand"}
		info: reviewed: false
	},
	{
		name: {text: "k8s-kotlin-dsl", repo: "fkorotkov/k8s-kotlin-dsl"}
		info: reviewed: false
	},
	{
		name: {text: "Short", repo: "koki/short"}
		info: reviewed: false
	},
	{
		name: {text: "kploy", repo: "kubernauts/kploy"}
		info: reviewed: false
	},
	{
		name: {text: "Skipper", repo: "concur/skipper"}
		info: reviewed: false
	},
	{
		name: {text: "KY", repo: "stellaservice/ky"}
		info: reviewed: false
	},
	{
		name: {text: "Broadway", repo: "namely/broadway"}
		info: reviewed: false
	},
	{
		name: {text: "Koki", repo: "koki/koki"}
		info: reviewed: false
	},
	{
		name: {text: "generator-kubegen", repo: "sesispla/generator-kubegen"}
		info: reviewed: false
	},
	{
		name: {text: "Rubiks", repo: "olx-global/rubiks"}
		info: reviewed: false
	},
	{
		name: {text: "Deploymentizer", repo: "InVisionApp/kit-deploymentizer"}
		info: reviewed: false
	},
	{
		name: {text: "kdeploy", repo: "flexiant/kdeploy"}
		info: reviewed: false
	},
	{
		name: {text: "Archipa", repo: "archipaorg/archipa"}
		info: reviewed: false
	},
	{
		name: {text: "Puccini", repo: "tliron/puccini"}
		info: reviewed: false
	},
	{
		name: {text: "ERB-Hiera", repo: "roobert/erb-hiera"}
		info: reviewed: false
	},
	{
		name: {text: "k82-icl", repo: "archipaorg/k8s-icl"}
		info: reviewed: false
	},
	{
		name: {text: "OpenShift templates", url: "https://docs.openshift.org/latest/dev_guide/templates.html"}
		info: reviewed: false
	},
	{
		name: {text: "Puppet", url: "https://forge.puppet.com/garethr/kubernetes/readme"}
		info: reviewed: false
	},
	{
		name: {text: "kuku", repo: "xarg/kuku"}
		info: reviewed: false
	},
	{
		name: {text: "sugarkube", repo: "sugarkube/sugarkube"}
		info: reviewed: false
	},
	{
		name: {text: "flekszible", repo: "elek/flekszible"}
		info: reviewed: false
	},
	{
		name: {text: "karavel", repo: "gree-gorey/karavel"}
		info: reviewed: false
	},
	{
		name: {text: "lostromos", repo: "lostromos/lostromos"}
		info: reviewed: false
	},
	{
		name: {text: "fabrikate", repo: "Microsoft/fabrikate"}
		info: reviewed: false
	},
	{
		name: {text: "helm-app-operator-kit", repo: "operator-framework/helm-app-operator-kit"}
		info: reviewed: false
	},
	{
		name: {text: "puppetlabs-helm", repo: "puppetlabs/puppetlabs-helm"}
		info: reviewed: false
	},
	{
		name: {text: "kubed", repo: "appscode/kubed"}
		info: reviewed: false
	},
	{
		name: {text: "pack", repo: "kubepack/pack"}
		info: reviewed: false
	},
	{
		name: {text: "k8s-app-engine", repo: "Aptomi/k8s-app-engine"}
		info: reviewed: false
	},
	{
		name: {text: "environment-operator", repo: "pearsontechnology/environment-operator"}
		info: reviewed: false
	},
	{
		name: {text: "kubor", repo: "levertonai/kubor"}
		info: reviewed: false
	},
	{
		name: {text: "StackSet", repo: "zalando-incubator/stackset-controller"}
		info: reviewed: false
	},
	{
		name: {text: "Konfigurator", repo: "stakater/Konfigurator"}
		info: reviewed: false
	},
	{
		name: {text: "shipper", repo: "bookingcom/shipper"}
		info: reviewed: false
	},
	{
		name: {text: "pipeline", repo: "tektoncd/pipeline"}
		info: reviewed: false
	},
	{
		name: {text: "habitat", repo: "habitat-sh/habitat"}
		info: reviewed: false
	},
	{
		name: {text: "apollo", repo: "logzio/apollo"}
		info: reviewed: false
	},
	{
		name: {text: "flagger", repo: "weaveworks/flagger"}
		info: reviewed: false
	},
	{
		name: {text: "foremast", repo: "intuit/foremast"}
		info: reviewed: false
	},
	{
		name: {text: "kuberig", repo: "teyckmans/kuberig"}
		info: reviewed: false
	},
	{
		name: {text: "konstellate", repo: "containership/konstellate"}
		info: reviewed: false
	},
	{
		name: {text: "mortar", repo: "kontena/mortar"}
		info: reviewed: false
	},
	{
		name: {text: "k8s-handle", repo: "2gis/k8s-handle"}
		features: ["G", "D", "L"]
		languages: ["Python", "Jinja2"]
	},
	{
		name: {text: "kuby", repo: "smartive/kuby"}
		info: reviewed: false
	},
	{
		name: {text: "devspace", repo: "devspace-cloud/devspace"}
		info: reviewed: false
	},
	{
		name: {text: "configula", repo: "brendandburns/configula"}
		info: reviewed: false
	},
	{
		name: {text: "skaffold", repo: "GoogleContainerTools/skaffold"}
		info: reviewed: false
	},
	{
		name: {text: "qbec", repo: "splunk/qbec"}
		info: reviewed: false
	},
	{
		name: {text: "knot8", repo: "mkmik/knot8"}
		info: reviewed: false
	},
	{
		name: {text: "Kubehiera", url: "https://gitlab.com/msvechla/kubehiera"}
		info: reviewed: false
	},
	{
		name: {text: "ValidKube", repo: "komodorio/validkube"}
		features: ["M", "V", "L"]
	},
	{
		name: {text: "kubectl-neat", repo: "itaysk/kubectl-neat"}
		features: ["M", "L"]
	},
	{
		name: {text: "Trivy", repo: "aquasecurity/trivy"}
		features: ["V", "I", "L"]
	},
	{
		name: {text: "Nelm", repo: "werf/nelm"}
		features: ["G", "D", "S", "L"]
		languages: ["Go Template"]
		info: notes: "Not yet extracted from werf as a standalone CLI"
	},
	{
		name: {text: "Telefonistka", repo: "commercetools/telefonistka"}
		features: ["P", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "Kargo", repo: "akuity/kargo"}
		features: ["P", "I"]
		info: notes: "Integrates with GitOps tools to promote changes across environments"
	},
	{
		name: {text: "kubechecks", repo: "zapier/kubechecks"}
		features: ["V", "I"]
	},
	{
		name: {text: "Popeye", repo: "derailed/popeye"}
		features: ["V", "L"]
	},
	{
		name: {text: "clusterlint", repo: "digitalocean/clusterlint"}
		features: ["V", "L"]
	},
	{
		name: {text: "Copper", repo: "cloud66-oss/copper"}
		features: ["V", "L"]
		languages: ["JavaScript"]
		info: abandoned: true
	},
	{
		name: {text: "config-lint", repo: "stelligent/config-lint"}
		features: ["V", "L"]
		info: abandoned: true
	},
	{
		name: {text: "OpenRewrite", repo: "openrewrite/rewrite"}
		features: ["M", "V", "L"]
	},
	{
		name: {text: "kube-score", repo: "zegl/kube-score"}
		features: ["V", "L"]
	},
	{
		name: {text: "Kubevious", repo: "kubevious/kubevious"}
		features: ["V", "L"]
		languages: ["DSL"]
	},
	{
		name: {text: "Pluto", repo: "FairwindsOps/pluto"}
		features: ["V", "L"]
	},
	{
		name: {text: "Gimlet", repo: "gimlet-io/gimlet"}
		features: ["D", "I"]
		info: abandoned: true
	},
	{
		name: {text: "kinitiras", repo: "k-cloud-labs/kinitiras"}
		features: ["M", "V", "I"]
		languages: ["CUE", "YAML"]
		info: {
			abandoned: true
			related: [
				{text: "Run mutation policies locally", repo: "k-cloud-labs/pidalio"},
			]
		}
	},
	{
		name: {text: "Sveltos", repo: "projectsveltos/addon-controller"}
		features: ["D", "I"]
	},
	{
		name: {text: "kreate-kube", repo: "MarkHooijkaas/kreate-kube"}
		features: ["G", "L"]
		languages: ["YAML"]
	},
	{
		name: {text: "Cuegen", repo: "noris-network/cuegen"}
		features: ["G", "V", "S", "L"]
		languages: ["CUE"]
	},
	{
		name: {text: "Marvin", repo: "undistro/marvin"}
		features: ["V", "L"]
		languages: ["CEL"]
	},
	{
		name: {text: "Zora", repo: "undistro/zora"}
		features: ["V", "I"]
		languages: ["CEL"]
	},
	{
		name: {text: "KSON", repo: "kson-org/kson"}
		features: ["G", "L"]
		languages: ["KSON"]
	},
	{
		name: {text: "MAML", repo: "maml-dev/maml"}
		features: ["G", "L"]
		languages: ["MAML"]
	},
	{
		name: {text: "SDLang", repo: "dlang-community/SDLang-D"}
		features: ["G", "L"]
		languages: ["SDLang"]
	},
	{
		name: {text: "KDL", repo: "kdl-org/kdl"}
		features: ["G", "L"]
		languages: ["KDL"]
	},
	{
		name: {text: "RCL", repo: "ruuda/rcl"}
		features: ["G", "L"]
		languages: ["RCL"]
	},
	{
		name: {text: "Kubeapps", repo: "vmware-tanzu/kubeapps"}
		features: ["D", "I"]
		info: abandoned: true
	},
]

_config_tools_checks: {
	unique_name_text: list.UniqueItems() & [for t in _config_tools {t.name.text}]
	unique_name_repo: list.UniqueItems() & [for t in _config_tools {t.name.repo}]
	unique_name_url: list.UniqueItems() & [for t in _config_tools {t.name.url}]
}
data: config_tools: [...#ConfigTool] & list.Sort(_config_tools, {x: _, y: _, less: strings.ToLower(x.name.text) < strings.ToLower(y.name.text)})
