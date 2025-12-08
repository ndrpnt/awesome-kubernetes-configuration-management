package awesome

import (
	"list"
	"strings"
)

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

let _secret_tools = [
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
		name: {text: "Secrets Store CSI Driver", repo: "kubernetes-sigs/secrets-store-csi-driver"}
		features: ["I"]
		info: related: [
			{text: "AWS Secrets Manager and Systems Manager Parameter Store provider", repo: "aws/secrets-store-csi-driver-provider-aws"},
			{text: "Azure Key Vault provider", repo: "Azure/secrets-store-csi-driver-provider-azure"},
			{text: "Google Secret Manager provider", repo: "GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp"},
			{text: "HashiCorp Vault provider", repo: "hashicorp/vault-csi-provider"},
			{text: "CyberArk Conjur provider (WIP)", repo: "cyberark/conjur/pull/2836"},
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
	{
		name: {text: "helm-ssm", repo: "totango/helm-ssm"}
		features: ["L"]
		info: abandoned: true
	},
	{
		name: {text: "SOPS secrets operator", repo: "isindir/sops-secrets-operator"}
		features: ["I"]
	},
	{
		name: {text: "kamus", repo: "soluto/kamus"}
		info: reviewed: false
	},
	{
		name: {text: "external-secret", repo: "imranismail/external-secret"}
		info: reviewed: false
	},
	{
		name: {text: "argocd-vault-plugin", repo: "argoproj-labs/argocd-vault-plugin"}
		features: ["I"]
		info: notes: "Inject values from secret managers (11 available) into Kubernetes resources"
	},
	{
		name: {text: "sops-operator", repo: "craftypath/sops-operator"}
		info: reviewed: false
	},
	{
		name: {text: "argocd-vault-replacer", repo: "crumbhole/argocd-vault-replacer"}
		info: reviewed: false
	},
	{
		name: {text: "vault-secrets-webhook", repo: "bank-vaults/vault-secrets-webhook"}
		info: reviewed: false
	},
	{
		name: {text: "KSOPS", repo: "viaduct-ai/kustomize-sops"}
		features: ["L"]
	},
	{
		name: {text: "Kustomize secretGeneratorPlugin", url: "https://github.com/kubernetes-sigs/kustomize/blob/ab519fdc13ded9875e42d70ac8a5b1b9023a2dbb/examples/secretGeneratorPlugin.md"}
		info: reviewed: false
	},
	{
		name: {text: "Markhor", repo: "markhork8s/markhor"}
		features: ["I"]
	},
	{
		name: {text: "Helm Sops", repo: "camptocamp/helm-sops"}
		features: ["L"]
	},
	{
		name: {text: "SOPS-Operator", repo: "peak-scale/sops-operator"}
		features: ["I"]
	},
	{
		name: {text: "lockenv", repo: "illarion/lockenv"}
		features: ["L"]
	},
	{
		name: {text: "kavo", repo: "stefanoverna/kavo"}
		features: ["L"]
	},
	{
		name: {text: "age-vault", repo: "leolimasa/age-vault"}
		features: ["L"]
	},
]

_secret_tools_checks: {
	unique_name_text: list.UniqueItems() & [for t in _secret_tools {t.name.text}]
	unique_name_repo: list.UniqueItems() & [for t in _secret_tools {t.name.repo}]
	unique_name_url: list.UniqueItems() & [for t in _secret_tools {t.name.url}]
}
data: secret_tools: [...#SecretTool] & list.Sort(_secret_tools, {x: _, y: _, less: strings.ToLower(x.name.text) < strings.ToLower(y.name.text)})
