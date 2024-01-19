package awesome

import (
	"list"
	"strings"
)

data: config_tools: [...#ConfigTool] & list.Sort(_raw_config_tools, {x: _, y: _, less: strings.ToLower(x.name.text) < strings.ToLower(y.name.text)})
let _raw_config_tools = [
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
			{text: "rules_k8s", repo:    "bazelbuild/rules_k8s"},
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
	},
	{
		name: {text: "jk", repo: "jkcfg/jk"}
		features: ["G", "L"]
		languages: ["JavaScript", "TypeScript"]
		info: abandoned: true
	},
	{
		name: {text: "Jsonnet", repo: "google/jsonnet"}
		features: ["G", "M", "L"]
		languages: ["Jsonnet"]
		info: related: [
			{text: "kube-libsonnet", repo: "bitnami-labs/kube-libsonnet"},
			{text: "k8s-gen", repo:        "jsonnet-libs/k8s"},
			{text: "k8s-libsonnet", repo:  "jsonnet-libs/k8s-libsonnet"},
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
		features: ["G", "M", "V", "L"]
		languages: ["KCL"]
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
			{text: "k8s provider", repo:        "banzaicloud/terraform-provider-k8s"},
			{text: "Kustomize provider", repo:  "kbst/terraform-provider-kustomize"},
			{text: "Helm provider", repo:       "terraform-providers/terraform-provider-helm"},
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
			{text: "Kubernetes policies", url: "https://github.com/instrumenta/policies/tree/master/kubernetes"},
		]
	},
	{
		name: {text: "Crossplane", repo: "crossplane/crossplane"}
		features: ["G", "D", "I"]
		info: related: [
			{text: "Ansible provider", repo:    "crossplane-contrib/provider-ansible"},
			{text: "Argo CD provider", repo:    "crossplane-contrib/provider-argocd"},
			{text: "Helm provider", repo:       "crossplane-contrib/provider-helm"},
			{text: "Kubernetes provider", repo: "crossplane-contrib/provider-kubernetes"},
			{text: "Terraform provider", repo:  "upbound/provider-terraform"},
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
			{text: "Operator", repo:            "pulumi/pulumi-kubernetes-operator"},
		]
	},
	{
		name: {text: "Skycfg", repo: "stripe/skycfg"}
		features: ["G", "L"]
		languages: ["Starlark", "Go"]
	},
	{
		name: {text: "werf", repo: "flant/werf"}
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
		features: [ "D", "I"]
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
		features: ["L"]
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
			{text: "Commodore", repo:           "projectsyn/commodore"},
			{text: "Lieutenant API", repo:      "projectsyn/lieutenant-api"},
			{text: "Lieutenant Operator", repo: "projectsyn/lieutenant-operator"},
			{text: "Steward", repo:             "projectsyn/steward"},
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
		features: ["G", "V", "L"]
		languages: ["Nickel"]
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
			{text: "Kubernetes provider", url:          "https://github.com/MicrosoftDocs/azure-docs/blob/3d1cfaa248b92e006aa2a3101b958f5a628718a9/articles/azure-resource-manager/bicep/bicep-extensibility-kubernetes-provider.md"},
			{text: "Kubernetes type definitions", repo: "Azure/bicep-types-k8s"},
		]
	},
	{
		name: {text: "Radius", repo: "radius-project/radius"}
		features: ["D", "I"]
		languages: ["Bicep"]
	},
]

data: secret_tools: [...#SecretTool] & list.Sort(_raw_secret_tools, {x: _, y: _, less: strings.ToLower(x.name.text) < strings.ToLower(y.name.text)})
let _raw_secret_tools = [
	{
		name: {text: "agebox", repo: "slok/agebox"}
		features: ["L"]
	},
	{
		name: {text: "External Secrets", repo: "external-secrets/external-secrets"}
		features: ["I"]
	},
	{
		name: {text: "helm-secrets", repo: "jkroepke/helm-secrets"}
		features: ["L"]
	},
	{
		name: {text: "Sealed Secrets", repo: "bitnami-labs/sealed-secrets"}
		features: ["I"]
	},
	{
		name: {text: "SOPS", repo: "getsops/sops"}
		features: ["L"]
		info: related: [
			{text: "KSOPS (kustomize KRM exec plugin)", repo: "viaduct-ai/kustomize-sops"},
			{text: "Helm Sops", repo:                         "camptocamp/helm-sops"},
			{text: "SOPS secrets operator", repo:             "isindir/sops-secrets-operator"},
			{text: "SOPS Operator", repo:                     "craftypath/sops-operator"},
		]
	},
	{
		name: {text: "Tesoro", repo: "kapicorp/tesoro"}
		features: ["I"]
		info: abandoned: true
	},
	{
		name: {text: "vals", repo: "helmfile/vals"}
		features: ["A"]
	},
	{
		name: {text: "Murmur", repo: "busser/murmur"}
		features: ["A"]
	},
	{
		name: {text: "Secrets Store CSI Driver", url: "https://secrets-store-csi-driver.sigs.k8s.io"}
		features: ["I"]
		info: related: [
			{text: "AWS Secrets Manager and Systems Manager Parameter Store provider", repo: "aws/secrets-store-csi-driver-provider-aws"},
			{text: "Azure Key Vault provider", repo:                                         "Azure/secrets-store-csi-driver-provider-azure"},
			{text: "Google Secret Manager provider", repo:                                   "GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp"},
			{text: "HashiCorp Vault provider", repo:                                         "hashicorp/vault-csi-provider"},
			{text: "CyberArk Conjur provider (WIP)", repo:                                   "cyberark/conjur/pull/2836"},
		]
	},
	{
		name: {text: "Vault Secrets Operator (HashiCorp)", repo: "hashicorp/vault-secrets-operator"}
		features: ["I"]
	},
	{
		name: {text: "Vault Secrets Operator (Rico Berger)", repo: "ricoberger/vault-secrets-operator"}
		features: ["I"]
	},
	{
		name: {text: "vault-k8s", repo: "hashicorp/vault-k8s"}
		features: ["A"]
	},
	{
		name: {text: "BlackBox", repo: "StackExchange/blackbox"}
		features: ["L"]
	},
	{
		name: {text: "git-crypt", repo: "AGWA/git-crypt"}
		features: ["L"]
	},
	{
		name: {text: "git-secret", repo: "sobolevn/git-secret"}
		features: ["L"]
	},
	{
		name: {text: "pass", url: "https://www.passwordstore.org"}
		features: ["L"]
	},
	{
		name: {text: "transcrypt", repo: "elasticdog/transcrypt"}
		features: ["L"]
	},
	{
		name: {text: "git-encrypt", repo: "shadowhand/git-encrypt"}
		features: ["L"]
		info: abandoned: true
	},
	{
		name: {text: "Keyringer", repo: "quarkslab/keyringer"}
		features: ["L"]
		info: abandoned: true
	},
	{
		name: {text: "yaml-crypt", repo: "autoapply/yaml-crypt"}
		features: ["L"]
	},
	{
		name: {text: "secure_yaml", repo: "huwtl/secure_yaml"}
		features: ["L"]
		info: abandoned: true
	},
	{
		name: {text: "ejson", repo: "Shopify/ejson"}
		features: ["L"]
		info: related: [
			{text: "ejson2env", repo: "Shopify/ejson2env"},
		]
	},
	{
		name: {text: "Hiera eyaml", repo: "voxpupuli/hiera-eyaml"}
		features: ["L"]
	},
	{
		name: {text: "Teller", repo: "tellerops/teller"}
		features: ["L"]
		info: related: [
			{text: "Helm-teller", repo: "tellerops/helm-teller"},
		]
	},
	{
		name: {text: "Infisical Secrets Operator", repo: "Infisical/infisical/tree/main/k8-operator"}
		features: ["I"]
		info: related: [
			{text: "Infisical", repo: "Infisical/infisical"},
		]
	},
	{
		name: {text: "aws-secret-operator", repo: "mumoshu/aws-secret-operator"}
		features: ["I"]
	},
	{
		name: {text: "Kube-secret-syncer", repo: "contentful-labs/kube-secret-syncer"}
		features: ["I"]
	},
	{
		name: {text: "conjur-authn-k8s-client", repo: "cyberark/conjur-authn-k8s-client"}
		features: ["A"]
	},
	{
		name: {text: "Azure Key Vault to Kubernetes (akv2k8s)", repo: "SparebankenVest/azure-key-vault-to-kubernetes"}
		features: ["I", "A"]
	},
	{
		name: {text: "Kamus", repo: "Soluto/kamus"}
		features: ["I", "A"]
	},
	{
		name: {text: "Rot", repo: "candiddev/rot"}
		features: ["L"]
	},
	{
		name: {text: "Piggy", repo: "KongZ/piggy"}
		features: ["A"]
	},
]
